create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.qw_result
(sample_id                      integer
,site_id                        integer
,record_no                      character varying (8)
,result_web_cd                  boolean
,parameter_cd                   character varying (5)
,meth_cd                        character varying (5)
,result_va                      character varying (12)
,result_unrnd_va                character varying (12)
,result_rd                      character varying (1)
,rpt_lev_va                     character varying (12)
,rpt_lev_cd                     character varying (6)
,lab_std_va                     character varying (11)
,remark_cd                      character varying (1)
,val_qual_tx                    character varying (5)
,null_val_qual_cd               character varying (1)
,qa_cd                          character varying (1)
,dqi_cd                         character varying (1)
,anl_ent_cd                     character varying (8)
,anl_set_no                     character varying (12)
,anl_dt                         character varying (19)
,prep_set_no                    character varying (12)
,prep_dt                        character varying (19)
,result_field_cm_tx             character varying (640)
,result_lab_cm_tx               character varying (640)
,result_md                      date
,qw_result_md                   date
) with (fillfactor = 100);
