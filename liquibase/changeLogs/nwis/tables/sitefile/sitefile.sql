create unlogged table if not exists ${NWIS_SCHEMA_NAME}.sitefile
(site_id                        integer
,agency_cd                      character varying (5)
,site_no                        character varying (15)
,nwis_host                      character varying (12)
,db_no                          character varying (2)
,station_nm                     character varying (50)
,dec_lat_va                     decimal
,dec_long_va                    decimal
,coord_meth_cd                  character varying (1)
,coord_acy_cd                   character varying (1)
,district_cd                    character varying (3)
,country_cd                     character varying (2)
,state_cd                       character varying (2)
,county_cd                      character varying (3)
,land_net_ds                    character varying (23)
,map_scale_fc                   character varying (7)
,alt_va                         character varying (8)
,alt_meth_cd                    character varying (1)
,alt_acy_va                     character varying (3)
,alt_datum_cd                   character varying (10)
,huc_cd                         character varying (16)
,basin_cd                       character varying (2)
,site_tp_cd                     character varying (7)
,site_rmks_tx                   character varying (50)
,drain_area_va                  character varying (8)
,contrib_drain_area_va          character varying (8)
,construction_dt                character varying (8)
,aqfr_type_cd                   character varying (1)
,aqfr_cd                        character varying (8)
,nat_aqfr_cd                    character varying (10)
,well_depth_va                  character varying (8)
,hole_depth_va                  character varying (8)
,site_web_cd                    character varying (1)
,dec_coord_datum_cd             character varying (10)
,site_cn                        character varying (8)
,site_cr                        date
,site_mn                        character varying (8)
,site_md                        date
) with (fillfactor = 100);