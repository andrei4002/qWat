/*
	qWat - QGIS Water Module
	
	SQL file :: installation tank auxiliary tables
*/

/* Fire storages */
DROP TABLE IF EXISTS distribution.vl_tank_firestorage CASCADE;
CREATE TABLE distribution.vl_tank_firestorage (id integer not null, CONSTRAINT vl_tank_firestorage_pk PRIMARY KEY (id) );

/* COLUMNS */
ALTER TABLE distribution.vl_tank_firestorage ADD COLUMN vl_active boolean default true;
ALTER TABLE distribution.vl_tank_firestorage ADD COLUMN value_en varchar(30) default '' ;
ALTER TABLE distribution.vl_tank_firestorage ADD COLUMN value_fr varchar(30) default '' ;

/* CONTENT */
INSERT INTO distribution.vl_tank_firestorage (id,value_fr) VALUES (2301,'aucune');
INSERT INTO distribution.vl_tank_firestorage (id,value_fr) VALUES (2302,'cuve 1 entière');
INSERT INTO distribution.vl_tank_firestorage (id,value_fr) VALUES (2303,'cuve 1 partielle');
INSERT INTO distribution.vl_tank_firestorage (id,value_fr) VALUES (2304,'cuve 2 entière');
INSERT INTO distribution.vl_tank_firestorage (id,value_fr) VALUES (2305,'cuve 2 partielle');
INSERT INTO distribution.vl_tank_firestorage (id,value_fr) VALUES (2306,'2 cuves partielles');
