-- ============================================================
-- GolfTracker - Supabase Setup SQL
-- Ausführen im Supabase Dashboard → SQL Editor
-- ============================================================

-- 1. Spieler-Profile (automatisch bei Registrierung erstellt)
CREATE TABLE IF NOT EXISTS profiles (
  id UUID REFERENCES auth.users(id) ON DELETE CASCADE PRIMARY KEY,
  display_name TEXT NOT NULL DEFAULT 'Spieler',
  hcp_index DECIMAL(4,1) DEFAULT 18.0,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Gespeicherte Mitspieler
CREATE TABLE IF NOT EXISTS saved_players (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  owner_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  name TEXT NOT NULL,
  hcp_index DECIMAL(4,1) DEFAULT 18.0,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. Golfplätze (geteilt zwischen allen Nutzern)
CREATE TABLE IF NOT EXISTS courses (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  location TEXT DEFAULT '',
  tees JSONB NOT NULL DEFAULT '{}',
  holes JSONB NOT NULL DEFAULT '[]',
  is_preset BOOLEAN DEFAULT FALSE,
  created_by UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 4. Gespielte Runden
CREATE TABLE IF NOT EXISTS rounds (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  date DATE NOT NULL,
  course_id TEXT,
  course_name TEXT,
  tee_type TEXT,
  num_holes INTEGER DEFAULT 18,
  cr DECIMAL(4,1),
  sr INTEGER,
  par INTEGER,
  hcp_index DECIMAL(4,1),
  course_hcp INTEGER,
  players JSONB DEFAULT '[]',
  scores JSONB DEFAULT '{}',
  totals JSONB DEFAULT '{}',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- Row Level Security
-- ============================================================
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE saved_players ENABLE ROW LEVEL SECURITY;
ALTER TABLE courses ENABLE ROW LEVEL SECURITY;
ALTER TABLE rounds ENABLE ROW LEVEL SECURITY;

-- Profiles
CREATE POLICY "Eigenes Profil lesen" ON profiles FOR SELECT USING (auth.uid() = id);
CREATE POLICY "Eigenes Profil erstellen" ON profiles FOR INSERT WITH CHECK (auth.uid() = id);
CREATE POLICY "Eigenes Profil ändern" ON profiles FOR UPDATE USING (auth.uid() = id);

-- Saved Players
CREATE POLICY "Eigene Spieler verwalten" ON saved_players FOR ALL USING (auth.uid() = owner_id);

-- Courses (alle lesen, angemeldete erstellen)
CREATE POLICY "Alle lesen Plätze" ON courses FOR SELECT USING (TRUE);
CREATE POLICY "Angemeldete erstellen Plätze" ON courses FOR INSERT WITH CHECK (auth.uid() = created_by);
CREATE POLICY "Ersteller ändern Plätze" ON courses FOR UPDATE USING (auth.uid() = created_by);
CREATE POLICY "Ersteller löschen Plätze" ON courses FOR DELETE USING (auth.uid() = created_by AND is_preset = FALSE);

-- Rounds
CREATE POLICY "Eigene Runden verwalten" ON rounds FOR ALL USING (auth.uid() = user_id);

-- ============================================================
-- Trigger: Profil automatisch bei Registrierung erstellen
-- ============================================================
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
  INSERT INTO public.profiles (id, display_name, hcp_index)
  VALUES (
    NEW.id,
    COALESCE(NEW.raw_user_meta_data->>'display_name', 'Spieler'),
    18.0
  );
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- ============================================================
-- Preset-Plätze einfügen
-- ============================================================
INSERT INTO courses (id, name, location, tees, holes, is_preset, created_by) VALUES
(
  'dinkelsbuehl',
  'Golfpark Dinkelsbühl',
  'Romantische Straße, Bayern',
  '{"yellow":{"cr":72.4,"sr":139,"par":72},"green":{"cr":68.6,"sr":125,"par":68},"red":{"cr":74.3,"sr":131,"par":72}}',
  '[{"par":5,"si":9,"dist":439},{"par":4,"si":1,"dist":388},{"par":3,"si":13,"dist":182},{"par":4,"si":15,"dist":312},{"par":5,"si":7,"dist":466},{"par":4,"si":5,"dist":409},{"par":4,"si":11,"dist":372},{"par":3,"si":17,"dist":169},{"par":4,"si":3,"dist":352},{"par":5,"si":10,"dist":439},{"par":4,"si":2,"dist":388},{"par":3,"si":14,"dist":182},{"par":4,"si":16,"dist":312},{"par":5,"si":8,"dist":466},{"par":4,"si":6,"dist":409},{"par":4,"si":12,"dist":372},{"par":3,"si":18,"dist":169},{"par":4,"si":4,"dist":352}]',
  TRUE, NULL
),
(
  'pustertal',
  'Golfclub Pustertal',
  'Südtirol, Italien',
  '{"yellow":{"cr":68.2,"sr":131,"par":66},"green":{"cr":66.8,"sr":125,"par":66},"blue":{"cr":71.2,"sr":135,"par":66},"red":{"cr":68.6,"sr":129,"par":66},"orange":{"cr":65.6,"sr":123,"par":66}}',
  '[{"par":3,"si":9,"dist":320},{"par":4,"si":1,"dist":388},{"par":3,"si":13,"dist":182},{"par":4,"si":15,"dist":312},{"par":4,"si":7,"dist":320},{"par":4,"si":5,"dist":409},{"par":4,"si":11,"dist":372},{"par":3,"si":17,"dist":169},{"par":4,"si":3,"dist":352},{"par":3,"si":10,"dist":320},{"par":4,"si":2,"dist":388},{"par":3,"si":14,"dist":182},{"par":4,"si":16,"dist":312},{"par":4,"si":8,"dist":320},{"par":4,"si":6,"dist":409},{"par":4,"si":12,"dist":372},{"par":3,"si":18,"dist":169},{"par":4,"si":4,"dist":352}]',
  TRUE, NULL
)
ON CONFLICT (id) DO NOTHING;

-- Fertig!
SELECT 'Setup erfolgreich!' as status;
