CREATE TABLE perfiles (
    id UUID PRIMARY KEY REFERENCES auth.users(id)
        ON DELETE CASCADE,
    usuario TEXT UNIQUE NOT NULL,
    creado_en TIMESTAMPTZ DEFAULT NOW()
);