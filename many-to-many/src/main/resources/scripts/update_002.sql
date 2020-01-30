create table engine_m (
  id serial primary key
);
create table car_m (
  id serial primary key,
  engine_id int not null unique references engine_m(id)
);
create table driver_m (
  id serial primary key
);
create table history_owner (
   id serial primary key,
   driver_id int not null references driver_m(id),
   car_id int not null references car_m(id)
);
ALTER TABLE car_m ADD COLUMN name text;
ALTER TABLE engine_m ADD COLUMN name text;
ALTER TABLE driver_m ADD COLUMN name text;
INSERT INTO engine_m (name) VALUES ('Z1');
INSERT INTO engine_m (name) VALUES ('Z2');
INSERT INTO engine_m (name) VALUES ('Z3');
INSERT INTO engine_m (name) VALUES ('Z4');
INSERT INTO engine_m (name) VALUES ('Z5');
INSERT INTO car_m (name,engine_id) VALUES ('Ford',1);
INSERT INTO car_m (name,engine_id) VALUES ('Volvo',2);
INSERT INTO car_m (name,engine_id) VALUES ('Ford',3);
INSERT INTO driver_m (name) VALUES ('Vladimir');
INSERT INTO driver_m (name) VALUES ('Aksana');
INSERT INTO history_owner (driver_id,car_id) VALUES (1,2);
INSERT INTO history_owner (driver_id,car_id) VALUES (1,3);
INSERT INTO history_owner (driver_id,car_id) VALUES (2,1);