-- songs
CREATE TABLE songs (
    song_id integer,
    title character varying,
    artist character varying,
    album character varying,
    year_released integer,
    duration numeric,
    tempo numeric,
    loudness numeric
);

-- earthquakes
CREATE TABLE earthquake (
    earthquake_id BIGSERIAL PRIMARY KEY,
    occured_on TIMESTAMP,
    latitude DECIMAL,
    longitude DECIMAL,
    depth DECIMAL,
    magnitude DECIMAL,
    calculation VARCHAR(29),
    network_id VARCHAR(29),
    place VARCHAR(203),
    cause VARCHAR(57)
);

-- male_names
CREATE TABLE male_names (
       id BIGSERIAL PRIMARY KEY,
       word VARCHAR(29)
);

-- female_names
CREATE TABLE female_names (
       id BIGSERIAL PRIMARY KEY,
       word VARCHAR(29)
);

-- last_names
CREATE TABLE last_names (
       id BIGSERIAL PRIMARY KEY,
       word VARCHAR(29)
);
