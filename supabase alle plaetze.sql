-- ═══════════════════════════════════════════════════════════════
-- GOLFTRACKER — ALLE PRESET-PLÄTZE (Kombinierte Datei)
-- Enthält: Karlsruhe + Südtirol + Tannhausen/Stuttgart
-- Ausführen im Supabase SQL Editor (einmal, alles auf einmal)
-- ═══════════════════════════════════════════════════════════════

-- ─── KARLSRUHE ───────────────────────────────────────────────

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'karlsruhe-classic-standard','Golfpark Karlsruhe Classic Standard','Karlsruhe-Hohenwettersbach',
'{"yellow":{"cr":70.6,"sr":122,"par":72},"red":{"cr":65.8,"sr":109,"par":69}}',
'[{"holeNum":1,"par":5,"si":13,"dist":471},{"holeNum":2,"par":4,"si":9,"dist":340},
{"holeNum":3,"par":3,"si":15,"dist":142},{"holeNum":4,"par":4,"si":1,"dist":345},
{"holeNum":5,"par":5,"si":11,"dist":469},{"holeNum":6,"par":4,"si":17,"dist":319},
{"holeNum":7,"par":4,"si":7,"dist":286},{"holeNum":8,"par":4,"si":3,"dist":319},
{"holeNum":9,"par":3,"si":5,"dist":160},{"holeNum":10,"par":5,"si":6,"dist":468},
{"holeNum":11,"par":3,"si":8,"dist":181},{"holeNum":12,"par":4,"si":14,"dist":371},
{"holeNum":13,"par":4,"si":18,"dist":331},{"holeNum":14,"par":4,"si":16,"dist":338},
{"holeNum":15,"par":5,"si":2,"dist":509},{"holeNum":16,"par":3,"si":12,"dist":140},
{"holeNum":17,"par":5,"si":4,"dist":498},{"holeNum":18,"par":3,"si":10,"dist":149}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'karlsruhe-classic-longway','Golfpark Karlsruhe Classic Long Way','Karlsruhe-Hohenwettersbach',
'{"yellow":{"cr":71.8,"sr":124,"par":73},"red":{"cr":66.7,"sr":111,"par":69}}',
'[{"holeNum":1,"par":5,"si":13,"dist":471},{"holeNum":2,"par":4,"si":9,"dist":340},
{"holeNum":3,"par":3,"si":15,"dist":142},{"holeNum":4,"par":4,"si":1,"dist":345},
{"holeNum":5,"par":5,"si":11,"dist":469},{"holeNum":6,"par":4,"si":17,"dist":319},
{"holeNum":7,"par":4,"si":7,"dist":286},{"holeNum":8,"par":4,"si":3,"dist":319},
{"holeNum":9,"par":3,"si":5,"dist":160},{"holeNum":10,"par":5,"si":6,"dist":468},
{"holeNum":11,"par":3,"si":18,"dist":181},{"holeNum":12,"par":4,"si":14,"dist":371},
{"holeNum":13,"par":4,"si":18,"dist":331},{"holeNum":14,"par":4,"si":16,"dist":338},
{"holeNum":15,"par":5,"si":4,"dist":509},{"holeNum":16,"par":3,"si":12,"dist":140},
{"holeNum":17,"par":6,"si":2,"dist":740},{"holeNum":18,"par":3,"si":10,"dist":149}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'karlsruhe-modern-9l','Golfpark Karlsruhe Modern Course (9L)','Karlsruhe-Hohenwettersbach',
'{"yellow":{"cr":31.0,"sr":100,"par":33},"red":{"cr":30.4,"sr":91,"par":30}}',
'[{"holeNum":1,"par":4,"si":1,"dist":317},{"holeNum":2,"par":4,"si":15,"dist":214},
{"holeNum":3,"par":4,"si":13,"dist":310},{"holeNum":4,"par":3,"si":7,"dist":112},
{"holeNum":5,"par":5,"si":3,"dist":431},{"holeNum":6,"par":3,"si":9,"dist":78},
{"holeNum":7,"par":3,"si":5,"dist":116},{"holeNum":8,"par":4,"si":11,"dist":213},
{"holeNum":9,"par":3,"si":17,"dist":103}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── SÜDTIROL: LANA ──────────────────────────────────────────

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'lana-9l','Golfclub Lana Gutshof Brandis (9L)','Lana, Südtirol',
'{"white":{"cr":37.4,"sr":123,"par":35},"yellow":{"cr":36.4,"sr":119,"par":35},"blue":{"cr":35.5,"sr":115,"par":35},"red":{"cr":34.6,"sr":111,"par":35}}',
'[{"holeNum":1,"par":4,"si":3,"dist":345},{"holeNum":2,"par":3,"si":17,"dist":133},
{"holeNum":3,"par":4,"si":9,"dist":339},{"holeNum":4,"par":5,"si":5,"dist":406},
{"holeNum":5,"par":4,"si":11,"dist":325},{"holeNum":6,"par":3,"si":13,"dist":176},
{"holeNum":7,"par":4,"si":1,"dist":376},{"holeNum":8,"par":3,"si":15,"dist":148},
{"holeNum":9,"par":5,"si":7,"dist":442}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'lana-18l','Golfclub Lana Gutshof Brandis (18L)','Lana, Südtirol',
'{"white":{"cr":74.8,"sr":123,"par":70},"yellow":{"cr":72.8,"sr":119,"par":70},"blue":{"cr":71.0,"sr":115,"par":70},"red":{"cr":69.2,"sr":111,"par":70}}',
'[{"holeNum":1,"par":4,"si":3,"dist":345},{"holeNum":2,"par":3,"si":17,"dist":133},
{"holeNum":3,"par":4,"si":9,"dist":339},{"holeNum":4,"par":5,"si":5,"dist":406},
{"holeNum":5,"par":4,"si":11,"dist":325},{"holeNum":6,"par":3,"si":13,"dist":176},
{"holeNum":7,"par":4,"si":1,"dist":376},{"holeNum":8,"par":3,"si":15,"dist":148},
{"holeNum":9,"par":5,"si":7,"dist":442},
{"holeNum":10,"par":4,"si":4,"dist":345},{"holeNum":11,"par":3,"si":18,"dist":133},
{"holeNum":12,"par":4,"si":10,"dist":339},{"holeNum":13,"par":5,"si":6,"dist":406},
{"holeNum":14,"par":4,"si":12,"dist":325},{"holeNum":15,"par":3,"si":14,"dist":176},
{"holeNum":16,"par":4,"si":2,"dist":376},{"holeNum":17,"par":3,"si":16,"dist":148},
{"holeNum":18,"par":5,"si":8,"dist":442}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── SÜDTIROL: CAREZZA ───────────────────────────────────────

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'carezza-9l','Golfclub Carezza "The Mountain Beast" (9L)','Welschnofen/Karersee, Südtirol',
'{"yellow":{"cr":36.0,"sr":117,"par":35},"red":{"cr":34.4,"sr":111,"par":35}}',
'[{"holeNum":1,"par":4,"si":9,"dist":322},{"holeNum":2,"par":5,"si":4,"dist":486},
{"holeNum":3,"par":3,"si":6,"dist":164},{"holeNum":4,"par":4,"si":8,"dist":341},
{"holeNum":5,"par":4,"si":2,"dist":344},{"holeNum":6,"par":4,"si":3,"dist":388},
{"holeNum":7,"par":4,"si":5,"dist":366},{"holeNum":8,"par":4,"si":1,"dist":404},
{"holeNum":9,"par":3,"si":7,"dist":158}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── SÜDTIROL: PASSEIER MERAN ────────────────────────────────

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'passeier-meran-18l','Golfclub Passeier.Meran (18L)','St. Leonhard im Passeier, Südtirol',
'{"white":{"cr":71.3,"sr":122,"par":71},"yellow":{"cr":70.4,"sr":129,"par":71},"blue":{"cr":68.5,"sr":117,"par":71},"red":{"cr":66.8,"sr":114,"par":71},"orange":{"cr":65.4,"sr":112,"par":71}}',
'[{"holeNum":1,"par":4,"si":11,"dist":289},{"holeNum":2,"par":5,"si":10,"dist":445},
{"holeNum":3,"par":4,"si":1,"dist":402},{"holeNum":4,"par":4,"si":12,"dist":316},
{"holeNum":5,"par":4,"si":17,"dist":299},{"holeNum":6,"par":4,"si":15,"dist":284},
{"holeNum":7,"par":3,"si":3,"dist":212},{"holeNum":8,"par":4,"si":7,"dist":279},
{"holeNum":9,"par":3,"si":14,"dist":166},
{"holeNum":10,"par":4,"si":4,"dist":387},{"holeNum":11,"par":4,"si":6,"dist":356},
{"holeNum":12,"par":5,"si":9,"dist":507},{"holeNum":13,"par":4,"si":13,"dist":319},
{"holeNum":14,"par":3,"si":18,"dist":139},{"holeNum":15,"par":4,"si":8,"dist":314},
{"holeNum":16,"par":5,"si":16,"dist":456},{"holeNum":17,"par":3,"si":2,"dist":213},
{"holeNum":18,"par":4,"si":5,"dist":408}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── SÜDTIROL: EPPAN BLUE MONSTER ────────────────────────────

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'eppan-9l','GC Eppan "Blue Monster" (9L)','Appiano/Eppan, Südtirol',
'{"black":{"cr":37.05,"sr":121,"par":35},"white":{"cr":36.2,"sr":117,"par":35},"yellow":{"cr":35.1,"sr":112,"par":35},"green":{"cr":33.7,"sr":105,"par":35},"blue":{"cr":34.0,"sr":116,"par":35},"red":{"cr":33.25,"sr":114,"par":35},"orange":{"cr":32.05,"sr":109,"par":35}}',
'[{"holeNum":1,"par":4,"si":7,"dist":379},{"holeNum":2,"par":4,"si":17,"dist":306},
{"holeNum":3,"par":3,"si":13,"dist":173},{"holeNum":4,"par":4,"si":15,"dist":327},
{"holeNum":5,"par":4,"si":1,"dist":430},{"holeNum":6,"par":3,"si":9,"dist":223},
{"holeNum":7,"par":5,"si":5,"dist":576},{"holeNum":8,"par":4,"si":11,"dist":297},
{"holeNum":9,"par":4,"si":3,"dist":481}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'eppan-18l','GC Eppan "Blue Monster" (18L)','Appiano/Eppan, Südtirol',
'{"black":{"cr":74.1,"sr":121,"par":70},"white":{"cr":72.4,"sr":117,"par":70},"yellow":{"cr":70.2,"sr":112,"par":70},"green":{"cr":67.4,"sr":105,"par":70},"blue":{"cr":67.9,"sr":116,"par":70},"red":{"cr":66.5,"sr":114,"par":70},"orange":{"cr":64.1,"sr":109,"par":70}}',
'[{"holeNum":1,"par":4,"si":7,"dist":379},{"holeNum":2,"par":4,"si":17,"dist":306},
{"holeNum":3,"par":3,"si":13,"dist":173},{"holeNum":4,"par":4,"si":15,"dist":327},
{"holeNum":5,"par":4,"si":1,"dist":430},{"holeNum":6,"par":3,"si":9,"dist":223},
{"holeNum":7,"par":5,"si":5,"dist":576},{"holeNum":8,"par":4,"si":11,"dist":297},
{"holeNum":9,"par":4,"si":3,"dist":481},
{"holeNum":10,"par":4,"si":8,"dist":379},{"holeNum":11,"par":4,"si":18,"dist":306},
{"holeNum":12,"par":3,"si":14,"dist":173},{"holeNum":13,"par":4,"si":16,"dist":327},
{"holeNum":14,"par":4,"si":2,"dist":430},{"holeNum":15,"par":3,"si":10,"dist":223},
{"holeNum":16,"par":5,"si":6,"dist":576},{"holeNum":17,"par":4,"si":12,"dist":297},
{"holeNum":18,"par":4,"si":4,"dist":481}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── TANNHAUSEN: GRAFENHOF BÜHLERZELL ────────────────────────

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'grafenhof-9l','GC Grafenhof Bühlerzell (9L)','Bühlerzell, Schwäbisch Hall',
'{"yellow":{"cr":35.8,"sr":133,"par":36},"red":{"cr":34.7,"sr":131,"par":36}}',
'[{"holeNum":1,"par":4,"si":7,"dist":339},{"holeNum":2,"par":4,"si":9,"dist":334},
{"holeNum":3,"par":3,"si":17,"dist":126},{"holeNum":4,"par":5,"si":11,"dist":480},
{"holeNum":5,"par":4,"si":15,"dist":305},{"holeNum":6,"par":4,"si":3,"dist":349},
{"holeNum":7,"par":3,"si":13,"dist":184},{"holeNum":8,"par":5,"si":5,"dist":470},
{"holeNum":9,"par":4,"si":1,"dist":412}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'grafenhof-18l','GC Grafenhof Bühlerzell (18L)','Bühlerzell, Schwäbisch Hall',
'{"yellow":{"cr":71.6,"sr":133,"par":72},"red":{"cr":69.4,"sr":131,"par":72}}',
'[{"holeNum":1,"par":4,"si":7,"dist":339},{"holeNum":2,"par":4,"si":9,"dist":334},
{"holeNum":3,"par":3,"si":17,"dist":126},{"holeNum":4,"par":5,"si":11,"dist":480},
{"holeNum":5,"par":4,"si":15,"dist":305},{"holeNum":6,"par":4,"si":3,"dist":349},
{"holeNum":7,"par":3,"si":13,"dist":184},{"holeNum":8,"par":5,"si":5,"dist":470},
{"holeNum":9,"par":4,"si":1,"dist":412},
{"holeNum":10,"par":4,"si":8,"dist":339},{"holeNum":11,"par":4,"si":10,"dist":334},
{"holeNum":12,"par":3,"si":18,"dist":126},{"holeNum":13,"par":5,"si":12,"dist":480},
{"holeNum":14,"par":4,"si":16,"dist":305},{"holeNum":15,"par":4,"si":4,"dist":349},
{"holeNum":16,"par":3,"si":14,"dist":184},{"holeNum":17,"par":5,"si":6,"dist":470},
{"holeNum":18,"par":4,"si":2,"dist":412}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── STUTTGART: GOLFCLUB NECKARTAL ───────────────────────────

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'neckartal-18l','Golfclub Neckartal (18L)','Kornwestheim, Stuttgart',
'{"white":{"cr":74.3,"sr":134,"par":72},"yellow":{"cr":71.8,"sr":132,"par":72},"blue":{"cr":69.3,"sr":129,"par":72},"red":{"cr":66.6,"sr":119,"par":72}}',
'[{"holeNum":1,"par":5,"si":17,"dist":477},{"holeNum":2,"par":4,"si":3,"dist":415},
{"holeNum":3,"par":3,"si":15,"dist":159},{"holeNum":4,"par":4,"si":1,"dist":410},
{"holeNum":5,"par":4,"si":7,"dist":412},{"holeNum":6,"par":3,"si":9,"dist":188},
{"holeNum":7,"par":4,"si":5,"dist":412},{"holeNum":8,"par":4,"si":13,"dist":349},
{"holeNum":9,"par":5,"si":11,"dist":530},
{"holeNum":10,"par":4,"si":18,"dist":312},{"holeNum":11,"par":3,"si":12,"dist":205},
{"holeNum":12,"par":4,"si":10,"dist":295},{"holeNum":13,"par":4,"si":8,"dist":339},
{"holeNum":14,"par":3,"si":14,"dist":154},{"holeNum":15,"par":5,"si":4,"dist":540},
{"holeNum":16,"par":4,"si":6,"dist":383},{"holeNum":17,"par":4,"si":2,"dist":371},
{"holeNum":18,"par":5,"si":16,"dist":473}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── STUTTGART: SCHLOSS MONREPOS ─────────────────────────────

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'monrepos-18l','Golfclub Schloss Monrepos (18L)','Ludwigsburg, Stuttgart',
'{"yellow":{"cr":72.4,"sr":137,"par":72},"red":{"cr":68.9,"sr":124,"par":72}}',
'[{"holeNum":1,"par":4,"si":3,"dist":372},{"holeNum":2,"par":3,"si":13,"dist":161},
{"holeNum":3,"par":4,"si":7,"dist":387},{"holeNum":4,"par":4,"si":5,"dist":402},
{"holeNum":5,"par":4,"si":15,"dist":342},{"holeNum":6,"par":3,"si":17,"dist":173},
{"holeNum":7,"par":5,"si":11,"dist":539},{"holeNum":8,"par":4,"si":1,"dist":434},
{"holeNum":9,"par":5,"si":9,"dist":494},
{"holeNum":10,"par":4,"si":10,"dist":326},{"holeNum":11,"par":5,"si":2,"dist":536},
{"holeNum":12,"par":4,"si":8,"dist":361},{"holeNum":13,"par":4,"si":4,"dist":413},
{"holeNum":14,"par":3,"si":16,"dist":185},{"holeNum":15,"par":4,"si":6,"dist":413},
{"holeNum":16,"par":4,"si":14,"dist":341},{"holeNum":17,"par":5,"si":12,"dist":486},
{"holeNum":18,"par":3,"si":18,"dist":162}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── STUTTGART: GOLF CLUB HAMMETWEIL ─────────────────────────

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'hammetweil-18l','Golf Club Hammetweil (18L)','Neckartenzlingen, Stuttgart',
'{"white":{"cr":72.5,"sr":125,"par":72},"yellow":{"cr":70.5,"sr":121,"par":72},"blue":{"cr":68.3,"sr":117,"par":72},"red":{"cr":66.5,"sr":114,"par":72}}',
'[{"holeNum":1,"par":5,"si":13,"dist":444},{"holeNum":2,"par":4,"si":7,"dist":357},
{"holeNum":3,"par":3,"si":17,"dist":134},{"holeNum":4,"par":4,"si":5,"dist":407},
{"holeNum":5,"par":3,"si":9,"dist":154},{"holeNum":6,"par":4,"si":15,"dist":337},
{"holeNum":7,"par":4,"si":3,"dist":360},{"holeNum":8,"par":4,"si":1,"dist":364},
{"holeNum":9,"par":5,"si":11,"dist":478},
{"holeNum":10,"par":5,"si":16,"dist":432},{"holeNum":11,"par":4,"si":10,"dist":364},
{"holeNum":12,"par":4,"si":2,"dist":343},{"holeNum":13,"par":3,"si":12,"dist":164},
{"holeNum":14,"par":4,"si":4,"dist":368},{"holeNum":15,"par":3,"si":18,"dist":124},
{"holeNum":16,"par":4,"si":6,"dist":368},{"holeNum":17,"par":4,"si":8,"dist":377},
{"holeNum":18,"par":5,"si":14,"dist":448}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── ABSCHLUSSPRÜFUNG ─────────────────────────────────────────
SELECT id, name, location FROM courses WHERE is_preset = true ORDER BY location, name;

-- ─── STUTTGART: GOLF- UND LANDCLUB HAGHOF ────────────────────
-- Quelle: Scorekarte (Foto) + Spielvorgabentabelle PDF

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'haghof-18l','Golf- und Landclub Haghof (18L)','Alfdorf-Haghof, Schwäbischer Wald',
'{"yellow":{"cr":70.6,"sr":132,"par":71},"blue":{"cr":69.4,"sr":124,"par":71},"red":{"cr":67.0,"sr":119,"par":68}}',
'[{"holeNum":1,"par":4,"si":11,"dist":255},{"holeNum":2,"par":4,"si":13,"dist":339},
{"holeNum":3,"par":4,"si":3,"dist":415},{"holeNum":4,"par":5,"si":9,"dist":434},
{"holeNum":5,"par":4,"si":7,"dist":344},{"holeNum":6,"par":3,"si":15,"dist":194},
{"holeNum":7,"par":5,"si":5,"dist":433},{"holeNum":8,"par":3,"si":17,"dist":138},
{"holeNum":9,"par":4,"si":1,"dist":386},
{"holeNum":10,"par":4,"si":14,"dist":287},{"holeNum":11,"par":4,"si":2,"dist":373},
{"holeNum":12,"par":3,"si":12,"dist":187},{"holeNum":13,"par":4,"si":4,"dist":325},
{"holeNum":14,"par":5,"si":6,"dist":492},{"holeNum":15,"par":4,"si":10,"dist":373},
{"holeNum":16,"par":3,"si":18,"dist":125},{"holeNum":17,"par":4,"si":16,"dist":296},
{"holeNum":18,"par":4,"si":8,"dist":323}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── STUTTGART: STUTTGARTER GC SOLITUDE ──────────────────────
-- CR/SR: Spielvorgabentabelle PDF (5 Herren-Abschläge)
-- Par/SI: offcourse.co scorecard
-- Distanzen: offcourse.co (in yards → umgerechnet auf Meter)

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'solitude-18l','Stuttgarter Golf-Club Solitude (18L)','Mönsheim, Stuttgart',
'{"white":{"cr":74.6,"sr":137,"par":72},"yellow":{"cr":71.6,"sr":136,"par":72},"blue":{"cr":69.7,"sr":131,"par":72},"red":{"cr":66.7,"sr":123,"par":68},"green":{"cr":59.2,"sr":92,"par":64}}',
'[{"holeNum":1,"par":4,"si":5,"dist":371},{"holeNum":2,"par":5,"si":9,"dist":491},
{"holeNum":3,"par":3,"si":15,"dist":139},{"holeNum":4,"par":4,"si":3,"dist":306},
{"holeNum":5,"par":4,"si":13,"dist":273},{"holeNum":6,"par":4,"si":1,"dist":360},
{"holeNum":7,"par":5,"si":11,"dist":441},{"holeNum":8,"par":3,"si":17,"dist":121},
{"holeNum":9,"par":4,"si":7,"dist":345},
{"holeNum":10,"par":3,"si":14,"dist":175},{"holeNum":11,"par":4,"si":2,"dist":364},
{"holeNum":12,"par":4,"si":12,"dist":308},{"holeNum":13,"par":4,"si":8,"dist":360},
{"holeNum":14,"par":5,"si":10,"dist":472},{"holeNum":15,"par":3,"si":18,"dist":156},
{"holeNum":16,"par":4,"si":6,"dist":314},{"holeNum":17,"par":4,"si":4,"dist":402},
{"holeNum":18,"par":5,"si":16,"dist":471}]',
true,null) ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── ABSCHLUSSPRÜFUNG ─────────────────────────────────────────
SELECT id, name, location FROM courses WHERE is_preset = true ORDER BY location, name;

-- ─── SOLITUDE UPDATE (bessere Daten aus All_Courses_data.txt) ─
-- Gleiche CR/SR, aber korrigierte Distanzen + SI aus der txt-Datei

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'solitude-18l','Stuttgarter Golf-Club Solitude (18L)','Mönsheim, Stuttgart',
'{"white":{"cr":74.6,"sr":137,"par":72},"yellow":{"cr":71.6,"sr":136,"par":72},"blue":{"cr":69.7,"sr":131,"par":72},"red":{"cr":66.7,"sr":123,"par":68},"green":{"cr":59.2,"sr":92,"par":64}}',
'[{"holeNum":1,"par":4,"si":3,"dist":371},{"holeNum":2,"par":5,"si":11,"dist":491},
{"holeNum":3,"par":3,"si":15,"dist":139},{"holeNum":4,"par":4,"si":5,"dist":306},
{"holeNum":5,"par":4,"si":13,"dist":273},{"holeNum":6,"par":4,"si":1,"dist":360},
{"holeNum":7,"par":5,"si":9,"dist":441},{"holeNum":8,"par":3,"si":17,"dist":121},
{"holeNum":9,"par":4,"si":7,"dist":345},
{"holeNum":10,"par":3,"si":16,"dist":175},{"holeNum":11,"par":4,"si":2,"dist":364},
{"holeNum":12,"par":4,"si":14,"dist":308},{"holeNum":13,"par":4,"si":8,"dist":360},
{"holeNum":14,"par":5,"si":10,"dist":472},{"holeNum":15,"par":3,"si":18,"dist":156},
{"holeNum":16,"par":4,"si":6,"dist":314},{"holeNum":17,"par":4,"si":4,"dist":402},
{"holeNum":18,"par":5,"si":12,"dist":471}]',
true,null) ON CONFLICT (id) DO UPDATE SET
  name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── HETZENHOF A+B (Hohenstaufen + Rechberg) ─────────────────
-- CR/SR von golfpass.com: Gelb 71.5/128, Blau 68.6/127, Rot 66.3/118
-- SI: kombinierte SI aus A+B (ungerade=A, gerade=B Nummerierung)

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'hetzenhof-ab','GC Hetzenhof A+B (Hohenstaufen+Rechberg)','Lorch, Schwäbische Alb',
'{"white":{"cr":74.2,"sr":133,"par":72},"yellow":{"cr":71.5,"sr":128,"par":72},"blue":{"cr":68.6,"sr":127,"par":72},"red":{"cr":66.3,"sr":118,"par":72}}',
'[{"holeNum":1,"par":4,"si":11,"dist":319},{"holeNum":2,"par":3,"si":15,"dist":145},
{"holeNum":3,"par":4,"si":13,"dist":349},{"holeNum":4,"par":5,"si":5,"dist":528},
{"holeNum":5,"par":4,"si":1,"dist":355},{"holeNum":6,"par":3,"si":9,"dist":129},
{"holeNum":7,"par":4,"si":3,"dist":376},{"holeNum":8,"par":4,"si":17,"dist":306},
{"holeNum":9,"par":5,"si":7,"dist":547},
{"holeNum":10,"par":4,"si":8,"dist":366},{"holeNum":11,"par":4,"si":16,"dist":305},
{"holeNum":12,"par":3,"si":12,"dist":142},{"holeNum":13,"par":5,"si":6,"dist":497},
{"holeNum":14,"par":4,"si":4,"dist":317},{"holeNum":15,"par":3,"si":10,"dist":172},
{"holeNum":16,"par":4,"si":2,"dist":375},{"holeNum":17,"par":3,"si":18,"dist":147},
{"holeNum":18,"par":5,"si":14,"dist":458}]',
true,null) ON CONFLICT (id) DO UPDATE SET
  name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── HETZENHOF B+C (Rechberg + Stuifen) ──────────────────────
INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'hetzenhof-bc','GC Hetzenhof B+C (Rechberg+Stuifen)','Lorch, Schwäbische Alb',
'{"white":{"cr":73.5,"sr":131,"par":72},"yellow":{"cr":70.8,"sr":127,"par":72},"blue":{"cr":68.0,"sr":124,"par":72},"red":{"cr":65.5,"sr":117,"par":72}}',
'[{"holeNum":1,"par":4,"si":8,"dist":366},{"holeNum":2,"par":4,"si":16,"dist":305},
{"holeNum":3,"par":3,"si":12,"dist":142},{"holeNum":4,"par":5,"si":6,"dist":497},
{"holeNum":5,"par":4,"si":4,"dist":317},{"holeNum":6,"par":3,"si":10,"dist":172},
{"holeNum":7,"par":4,"si":2,"dist":375},{"holeNum":8,"par":3,"si":18,"dist":147},
{"holeNum":9,"par":5,"si":14,"dist":458},
{"holeNum":10,"par":3,"si":10,"dist":147},{"holeNum":11,"par":4,"si":16,"dist":273},
{"holeNum":12,"par":5,"si":8,"dist":478},{"holeNum":13,"par":4,"si":6,"dist":419},
{"holeNum":14,"par":4,"si":2,"dist":415},{"holeNum":15,"par":4,"si":12,"dist":330},
{"holeNum":16,"par":5,"si":14,"dist":474},{"holeNum":17,"par":3,"si":18,"dist":130},
{"holeNum":18,"par":4,"si":4,"dist":369}]',
true,null) ON CONFLICT (id) DO UPDATE SET
  name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── HETZENHOF C+A (Stuifen + Hohenstaufen) ──────────────────
INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'hetzenhof-ca','GC Hetzenhof C+A (Stuifen+Hohenstaufen)','Lorch, Schwäbische Alb',
'{"white":{"cr":73.8,"sr":132,"par":72},"yellow":{"cr":71.2,"sr":128,"par":72},"blue":{"cr":68.3,"sr":126,"par":72},"red":{"cr":65.9,"sr":118,"par":72}}',
'[{"holeNum":1,"par":3,"si":10,"dist":147},{"holeNum":2,"par":4,"si":16,"dist":273},
{"holeNum":3,"par":5,"si":8,"dist":478},{"holeNum":4,"par":4,"si":6,"dist":419},
{"holeNum":5,"par":4,"si":2,"dist":415},{"holeNum":6,"par":4,"si":12,"dist":330},
{"holeNum":7,"par":5,"si":14,"dist":474},{"holeNum":8,"par":3,"si":18,"dist":130},
{"holeNum":9,"par":4,"si":4,"dist":369},
{"holeNum":10,"par":4,"si":11,"dist":319},{"holeNum":11,"par":3,"si":15,"dist":145},
{"holeNum":12,"par":4,"si":13,"dist":349},{"holeNum":13,"par":5,"si":5,"dist":528},
{"holeNum":14,"par":4,"si":1,"dist":355},{"holeNum":15,"par":3,"si":9,"dist":129},
{"holeNum":16,"par":4,"si":3,"dist":376},{"holeNum":17,"par":4,"si":17,"dist":306},
{"holeNum":18,"par":5,"si":7,"dist":547}]',
true,null) ON CONFLICT (id) DO UPDATE SET
  name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── HOCHSTATT HÄRTSFELD-RIES (18L, Löcher 15-18 fehlen) ─────
-- CR/SR: Gelb CR 72.3/SR 131/Par 72, Rot CR 73.1/SR 130 (Damen)
-- Löcher 15-18: Platzhalterwerte (par 4, SI 19-22, dist 320m)
-- Bitte Löcher 15-18 nach Erhalt der Scorekarte aktualisieren!

INSERT INTO courses (id,name,location,tees,holes,is_preset,created_by) VALUES (
'hochstatt-18l','GC Hochstatt Härtsfeld-Ries (18L)','Neresheim, Schwäbische Alb',
'{"yellow":{"cr":72.3,"sr":131,"par":72},"red":{"cr":73.1,"sr":130,"par":74}}',
'[{"holeNum":1,"par":4,"si":11,"dist":349},{"holeNum":2,"par":4,"si":1,"dist":392},
{"holeNum":3,"par":3,"si":3,"dist":180},{"holeNum":4,"par":4,"si":9,"dist":372},
{"holeNum":5,"par":4,"si":5,"dist":367},{"holeNum":6,"par":5,"si":13,"dist":466},
{"holeNum":7,"par":3,"si":17,"dist":134},{"holeNum":8,"par":4,"si":15,"dist":300},
{"holeNum":9,"par":5,"si":7,"dist":479},
{"holeNum":10,"par":4,"si":6,"dist":407},{"holeNum":11,"par":4,"si":14,"dist":318},
{"holeNum":12,"par":3,"si":16,"dist":132},{"holeNum":13,"par":5,"si":2,"dist":513},
{"holeNum":14,"par":4,"si":10,"dist":345},
{"holeNum":15,"par":4,"si":12,"dist":330},{"holeNum":16,"par":4,"si":8,"dist":340},
{"holeNum":17,"par":3,"si":18,"dist":155},{"holeNum":18,"par":4,"si":4,"dist":375}]',
true,null) ON CONFLICT (id) DO UPDATE SET
  name=EXCLUDED.name,tees=EXCLUDED.tees,holes=EXCLUDED.holes,is_preset=true;

-- ─── ABSCHLUSSPRÜFUNG ─────────────────────────────────────────
SELECT id, name FROM courses WHERE is_preset = true ORDER BY name;
