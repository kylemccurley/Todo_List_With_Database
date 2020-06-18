create table lists (
  id serial PRIMARY KEY,
  name varchar(55) NOT NULL UNIQUE
);

create table todo (
  id serial PRIMARY KEY,
  name varchar(25) NOT NULL,
  list_id integer NOT NULL REFERENCES lists(id),
  is_completed boolean NOT NULL DEFAULT false
);
