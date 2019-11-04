alter table ${NWIS_SCHEMA_NAME}.sitefile
 add column if not exists lat_va          character varying (11)
,add column if not exists long_va         character varying (12)
,add column if not exists coord_datum_cd  character varying (10)
,add column if not exists map_nm          character varying (20)
,add column if not exists topo_cd         character varying (1)
,add column if not exists instruments_cd  character varying (30)
,add column if not exists inventory_dt    character varying (8)
,add column if not exists tz_cd           character varying (6)
,add column if not exists local_time_fg   character varying (1)
,add column if not exists reliability_cd  character varying (1)
,add column if not exists gw_file_cd      character varying (30)
,add column if not exists depth_src_cd    character varying (1)
,add column if not exists project_no      character varying (12)
;