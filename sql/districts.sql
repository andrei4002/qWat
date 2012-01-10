/*
	qWat - QGIS Water Module
	
	SQL file :: districts
*/

BEGIN;

/* CREATE TABLE */
DROP TABLE IF EXISTS distribution.districts CASCADE;
CREATE TABLE distribution.districts (id serial NOT NULL);

ALTER TABLE distribution.districts ADD COLUMN  name  varchar(30);
ALTER TABLE distribution.districts ADD COLUMN  lbl_x double precision;
ALTER TABLE distribution.districts ADD COLUMN  lbl_y double precision;
ALTER TABLE distribution.districts ADD COLUMN  lbl_a double precision;

SELECT AddGeometryColumn('distribution', 'districts', 'wkb_geometry', 21781, 'POLYGON', 2);

/* ADD CONSTRAINTS */
/* primary key */
ALTER TABLE distribution.districts ADD CONSTRAINT districts_pkey PRIMARY KEY (id);
ALTER TABLE distribution.districts ADD CONSTRAINT districts_name UNIQUE (name);

/* Comment */
COMMENT ON TABLE distribution.districts IS 'Districts.';

/*----------------!!!---!!!----------------*/
/* FUNCTION */
CREATE OR REPLACE FUNCTION distribution.get_district(geometry) RETURNS text AS '
	DECLARE
		geometry ALIAS FOR $1;
		result text;
	BEGIN
		SELECT left(distribution.tsum(districts.name || '', ''),-2) INTO result
			FROM  distribution.districts
			WHERE ST_Intersects(geometry,districts.wkb_geometry) IS TRUE;
		RETURN result;
	END
' LANGUAGE 'plpgsql';
COMMENT ON FUNCTION distribution.get_district(geometry) IS 'Returns a string contaning all the names of the polygons in table districts which overlap the given geometry.';


CREATE OR REPLACE FUNCTION distribution.fill_pipes_district() RETURNS boolean AS '
	BEGIN
		UPDATE distribution.pipes SET _is_on_district = distribution.get_district(pipes.wkb_geometry);	
		RETURN true;
	END
' LANGUAGE 'plpgsql';
COMMENT ON FUNCTION distribution.fill_pipes_district() IS 'Populates the _is_on_map field in pipes table with all the names of poylgons in table districts which overlap the given pipe geometry.';

COMMIT;