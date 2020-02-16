drop table if exists quake;

create table quake (
  earthquake_id       integer,
  occurred_on         timestamp,
  latitude            real,
  longitude           real,
  depth               real,
  magnitude           real,
  calculation_method  varchar(128),
  network_id          varchar(128),
  place               varchar(500),
  cause               varchar(128),
  CONSTRAINT earthquake_pkey PRIMARY KEY (earthquake_id)
);

create index i_quake_latitude on quake(latitude);
create index i_quake_longitude on quake(longitude);
create index i_quake_occurred_on on quake(occurred_on);
create index i_quake_magnitude on quake(magnitude);
