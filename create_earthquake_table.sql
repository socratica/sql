CREATE TABLE public.earthquake
(
    earthquake_id 		integer NOT NULL,
    occurred_on 		timestamp,
    latitude 			real,
    longitude 			real,
    depth 				real,
    magnitude 			real,
    calculation_method  character varying(128),
    network_id 			character varying(128),
    place 				character varying(500),
    cause 				character varying(128),
    
    CONSTRAINT earthquake_pkey PRIMARY KEY (earthquake_id)
)
WITH (
    OIDS = FALSE
)