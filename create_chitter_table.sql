CREATE TABLE public.chitter_user
(
    user_id 			serial NOT NULL,
    username 			character varying(128),
    encrypted_password 		character varying(128),
    email 			character varying(128),
    date_joined 	        timestamp,
    
    CONSTRAINT chitter_user_pkey PRIMARY KEY (user_id)
)
WITH (
    OIDS = FALSE
);


CREATE TABLE public.post
(
    post_id		serial NOT NULL,
    user_id 		integer,
    post_text		character varying(1024),
    posted_on 		timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
      
    CONSTRAINT post_pkey PRIMARY KEY (post_id)
)
WITH (
    OIDS = FALSE
);
