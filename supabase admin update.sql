-- ============================================================
-- GolfTracker — Admin & Shared Courses Update
-- Im Supabase SQL Editor ausführen
-- ============================================================

-- 1. Admin-Flag zu Profilen hinzufügen
ALTER TABLE profiles ADD COLUMN IF NOT EXISTS is_admin BOOLEAN DEFAULT FALSE;

-- 2. Hilfsfunktion: Prüft ob der eingeloggte User Admin ist
CREATE OR REPLACE FUNCTION is_admin()
RETURNS BOOLEAN LANGUAGE sql SECURITY DEFINER STABLE AS $$
  SELECT COALESCE(
    (SELECT is_admin FROM profiles WHERE id = auth.uid()),
    FALSE
  );
$$;

-- 3. RLS-Policies aktualisieren: Admin sieht alles

-- Rounds: Admin sieht alle, User nur eigene
DROP POLICY IF EXISTS "Eigene Runden verwalten" ON rounds;
DROP POLICY IF EXISTS "Runden lesen" ON rounds;
CREATE POLICY "Runden lesen" ON rounds FOR SELECT
  USING (auth.uid() = user_id OR is_admin());
DROP POLICY IF EXISTS "Runden erstellen" ON rounds;
CREATE POLICY "Runden erstellen" ON rounds FOR INSERT
  WITH CHECK (auth.uid() = user_id);
DROP POLICY IF EXISTS "Runden löschen" ON rounds;
CREATE POLICY "Runden löschen" ON rounds FOR DELETE
  USING (auth.uid() = user_id OR is_admin());

-- Profiles: Admin sieht alle Profile (für Übersicht)
DROP POLICY IF EXISTS "Eigenes Profil lesen" ON profiles;
DROP POLICY IF EXISTS "Profile lesen" ON profiles;
CREATE POLICY "Profile lesen" ON profiles FOR SELECT
  USING (auth.uid() = id OR is_admin());
DROP POLICY IF EXISTS "Eigenes Profil erstellen" ON profiles;
CREATE POLICY "Eigenes Profil erstellen" ON profiles FOR INSERT
  WITH CHECK (auth.uid() = id);
DROP POLICY IF EXISTS "Eigenes Profil ändern" ON profiles;
CREATE POLICY "Eigenes Profil ändern" ON profiles FOR UPDATE
  USING (auth.uid() = id OR is_admin());

-- Saved Players: Admin sieht alle
DROP POLICY IF EXISTS "Eigene Spieler verwalten" ON saved_players;
DROP POLICY IF EXISTS "Spieler lesen" ON saved_players;
CREATE POLICY "Spieler lesen" ON saved_players FOR SELECT
  USING (auth.uid() = owner_id OR is_admin());
DROP POLICY IF EXISTS "Spieler erstellen" ON saved_players;
CREATE POLICY "Spieler erstellen" ON saved_players FOR INSERT
  WITH CHECK (auth.uid() = owner_id);
DROP POLICY IF EXISTS "Spieler ändern" ON saved_players;
CREATE POLICY "Spieler ändern" ON saved_players FOR UPDATE
  USING (auth.uid() = owner_id OR is_admin());
DROP POLICY IF EXISTS "Spieler löschen" ON saved_players;
CREATE POLICY "Spieler löschen" ON saved_players FOR DELETE
  USING (auth.uid() = owner_id OR is_admin());

-- ============================================================
-- Admin setzen
-- Ersetze 'DEINE@EMAIL.DE' mit deiner registrierten E-Mail
-- ============================================================
UPDATE profiles
SET is_admin = TRUE
WHERE id = (
  SELECT id FROM auth.users WHERE email = 'claudia.stern@gmx.DE' LIMIT 1
);

-- Ergebnis prüfen:
SELECT display_name, is_admin FROM profiles;

-- 4. Courses: Admin kann alle Plätze bearbeiten und löschen
DROP POLICY IF EXISTS "Ersteller ändern Plätze" ON courses;
DROP POLICY IF EXISTS "Ersteller löschen Plätze" ON courses;

DROP POLICY IF EXISTS "Plätze ändern" ON courses;
CREATE POLICY "Plätze ändern" ON courses FOR UPDATE
  USING (auth.uid() = created_by OR is_admin());

DROP POLICY IF EXISTS "Plätze löschen" ON courses;
CREATE POLICY "Plätze löschen" ON courses FOR DELETE
  USING (auth.uid() = created_by OR is_admin());
