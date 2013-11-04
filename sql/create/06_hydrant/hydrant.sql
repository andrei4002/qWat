/*
	qWat - QGIS Water Module
	
	SQL file :: hydrant
*/



/* CREATE TABLE */
DROP TABLE IF EXISTS distribution.hydrant CASCADE;
CREATE TABLE distribution.hydrant (id serial NOT NULL);
SELECT setval('distribution.hydrant_id_seq', 100, true);
COMMENT ON TABLE distribution.hydrant IS 'hydrant.';

/* columns */
ALTER TABLE distribution.hydrant ADD COLUMN identification  character varying (15)   ;
ALTER TABLE distribution.hydrant ADD COLUMN id_distributor   integer                 ;
ALTER TABLE distribution.hydrant ADD COLUMN id_status        integer                 ;
ALTER TABLE distribution.hydrant ADD COLUMN id_provider      integer                 ;
ALTER TABLE distribution.hydrant ADD COLUMN id_precision     integer                 ;
ALTER TABLE distribution.hydrant ADD COLUMN year smallint    CHECK (year > 1800 AND year < 2100);
ALTER TABLE distribution.hydrant ADD COLUMN model            varchar(30)             ;
ALTER TABLE distribution.hydrant ADD COLUMN underground      boolean default false   ;
ALTER TABLE distribution.hydrant ADD COLUMN altitude_real    decimal(10,3)           ;
ALTER TABLE distribution.hydrant ADD COLUMN remarks text;



/* geometry                        (table_name, is_node, create_node, create_schematic, get_pipe, auto_district)*/
SELECT distribution.geom_tool_point('hydrant',true,true,true,false,true);

/* primary key */
ALTER TABLE distribution.hydrant ADD CONSTRAINT hydrant_pkey PRIMARY KEY (id);


/* Constraints */
ALTER TABLE distribution.hydrant ADD CONSTRAINT hydrant_id_distributor  FOREIGN KEY (id_distributor)  REFERENCES distribution.distributor(id)      MATCH FULL  ; CREATE INDEX fki_hydrant_id_distributor  ON distribution.hydrant(id_distributor) ;
ALTER TABLE distribution.hydrant ADD CONSTRAINT hydrant_id_status       FOREIGN KEY (id_status)       REFERENCES distribution.vl_status(id)           MATCH FULL  ; CREATE INDEX fki_hydrant_id_status       ON distribution.hydrant(id_status)      ;
ALTER TABLE distribution.hydrant ADD CONSTRAINT hydrant_id_provider     FOREIGN KEY (id_provider)     REFERENCES distribution.hydrant_provider(id) MATCH SIMPLE; CREATE INDEX fki_hydrant_id_provider     ON distribution.hydrant(id_provider)    ;
ALTER TABLE distribution.hydrant ADD CONSTRAINT hydrant_id_precision    FOREIGN KEY (id_precision)    REFERENCES distribution.precision(id)        MATCH FULL  ; CREATE INDEX fki_hydrant_id_precision    ON distribution.hydrant(id_precision)   ;


