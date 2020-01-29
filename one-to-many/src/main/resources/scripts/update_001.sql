create table engine (
  id serial primary key
);

create table car (
  id serial primary key,
  engine_id int not null unique references engine(id)
);

ALTER TABLE car ADD COLUMN name text;
ALTER TABLE engine ADD COLUMN name text;

INSERT INTO engine (name) VALUES ('Z1');
INSERT INTO engine (name) VALUES ('Z2');
INSERT INTO engine (name) VALUES ('Z3');
INSERT INTO engine (name) VALUES ('Z4');
INSERT INTO engine (name) VALUES ('Z5');
INSERT INTO car (name,engine_id) VALUES ('Ford',1);
INSERT INTO car (name,engine_id) VALUES ('Volvo',2);
INSERT INTO car (name,engine_id) VALUES ('Ford',3);
