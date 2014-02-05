--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1SchemaTablesAA
alter table fa_station_00000 add (primary_site_type varchar2(40 char));
--rollback alter table fa_station_00000 drop column primary_site_type;


--changeset drsteini:1SchemaTableABIndexes
drop index nwis_station_sum_4_00000;
--rollback create bitmap index nwis_station_sum_4_00000 on nwis_station_sum_00000 (substr(station_type_name || ':', 1, instr(station_type_name || ':', ':') - 1)) nologging;

--changeset drsteini:1SchemaTablesAB
alter table nwis_station_sum_00000 rename column station_type_name to primary_site_type;
--rollback alter table nwis_station_sum_00000 rename column primary_site_type to station_type_name;

--changeset drsteini:1SchemaTablesAC
alter table nwis_station_sum_00000 modify(primary_site_type varchar2(40 char));
--rollback alter table nwis_station_sum_00000 modify(primary_site_type varchar2(82 byte));


--changeset drsteini:0SchemaTablesADIndexes
drop index nwis_result_sum_3_00000;
--rollback create bitmap index nwis_result_sum_3_00000 on nwis_result_sum_00000 (substr(station_type_name || ':', 1, instr(station_type_name || ':', ':') - 1)   ) local nologging;

--changeset drsteini:1SchemaTablesAD
alter table nwis_result_sum_00000 rename column station_type_name to primary_site_type;
--rollback alter table nwis_result_sum_00000 rename column primary_site_type to station_type_name;

--changeset drsteini:1SchemaTablesAE
alter table nwis_result_sum_00000 modify(primary_site_type varchar2(40 char));
--rollback alter table nwis_result_sum_00000 modify(primary_site_type varchar2(82 byte));


--changeset drsteini:0SchemaTablesAFIndexes
drop index nwis_result_ct_sum_3_00000;
--rollback create bitmap index nwis_result_ct_sum_3_00000 on nwis_result_ct_sum_00000 (substr(station_type_name || ':', 1, instr(station_type_name || ':', ':') - 1)   ) local nologging;

--changeset drsteini:1SchemaTablesAF
alter table nwis_result_ct_sum_00000 rename column station_type_name to primary_site_type;
--rollback alter table nwis_result_ct_sum_00000 rename column primary_site_type to station_type_name;

--changeset drsteini:1SchemaTablesAG
alter table nwis_result_ct_sum_00000 modify(primary_site_type varchar2(40 char));
--rollback alter table nwis_result_ct_sum_00000 modify(primary_site_type varchar2(82 byte));
