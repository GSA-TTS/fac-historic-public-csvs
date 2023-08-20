
begin;

do
$$
begin
    if not exists (select schema_name from information_schema.schemata where schema_name = 'api_historic_v0_1_0_alpha') then
        create schema api_historic_v0_1_0_alpha;
    end if;
end
$$
;
commit;

begin;

create or replace view api_historic_v0_1_0_alpha.agency16 as
	select *
	from census_agency16
	order by census_agency16.index
;

create or replace view api_historic_v0_1_0_alpha.agency17 as
	select *
	from census_agency17
	order by census_agency17.index
;

create or replace view api_historic_v0_1_0_alpha.agency18 as
	select *
	from census_agency18
	order by census_agency18.index
;

create or replace view api_historic_v0_1_0_alpha.agency19 as
	select *
	from census_agency19
	order by census_agency19.index
;

create or replace view api_historic_v0_1_0_alpha.agency20 as
	select *
	from census_agency20
	order by census_agency20.index
;

create or replace view api_historic_v0_1_0_alpha.agency21 as
	select *
	from census_agency21
	order by census_agency21.index
;

create or replace view api_historic_v0_1_0_alpha.agency22 as
	select *
	from census_agency22
	order by census_agency22.index
;

create or replace view api_historic_v0_1_0_alpha.captext19 as
	select *
	from census_captext19
	order by census_captext19.index
;

create or replace view api_historic_v0_1_0_alpha.captext20 as
	select *
	from census_captext20
	order by census_captext20.index
;

create or replace view api_historic_v0_1_0_alpha.captext21 as
	select *
	from census_captext21
	order by census_captext21.index
;

create or replace view api_historic_v0_1_0_alpha.captext22 as
	select *
	from census_captext22
	order by census_captext22.index
;

create or replace view api_historic_v0_1_0_alpha.captext_formatted19 as
	select *
	from census_captext_formatted19
	order by census_captext_formatted19.index
;

create or replace view api_historic_v0_1_0_alpha.captext_formatted20 as
	select *
	from census_captext_formatted20
	order by census_captext_formatted20.index
;

create or replace view api_historic_v0_1_0_alpha.captext_formatted21 as
	select *
	from census_captext_formatted21
	order by census_captext_formatted21.index
;

create or replace view api_historic_v0_1_0_alpha.captext_formatted22 as
	select *
	from census_captext_formatted22
	order by census_captext_formatted22.index
;

create or replace view api_historic_v0_1_0_alpha.cfda16 as
	select *
	from census_cfda16
	order by census_cfda16.index
;

create or replace view api_historic_v0_1_0_alpha.cfda17 as
	select *
	from census_cfda17
	order by census_cfda17.index
;

create or replace view api_historic_v0_1_0_alpha.cfda18 as
	select *
	from census_cfda18
	order by census_cfda18.index
;

create or replace view api_historic_v0_1_0_alpha.cfda19 as
	select *
	from census_cfda19
	order by census_cfda19.index
;

create or replace view api_historic_v0_1_0_alpha.cfda20 as
	select *
	from census_cfda20
	order by census_cfda20.index
;

create or replace view api_historic_v0_1_0_alpha.cfda21 as
	select *
	from census_cfda21
	order by census_cfda21.index
;

create or replace view api_historic_v0_1_0_alpha.cfda22 as
	select *
	from census_cfda22
	order by census_cfda22.index
;

create or replace view api_historic_v0_1_0_alpha.cpas16 as
	select *
	from census_cpas16
	order by census_cpas16.index
;

create or replace view api_historic_v0_1_0_alpha.cpas17 as
	select *
	from census_cpas17
	order by census_cpas17.index
;

create or replace view api_historic_v0_1_0_alpha.cpas18 as
	select *
	from census_cpas18
	order by census_cpas18.index
;

create or replace view api_historic_v0_1_0_alpha.cpas19 as
	select *
	from census_cpas19
	order by census_cpas19.index
;

create or replace view api_historic_v0_1_0_alpha.cpas20 as
	select *
	from census_cpas20
	order by census_cpas20.index
;

create or replace view api_historic_v0_1_0_alpha.cpas21 as
	select *
	from census_cpas21
	order by census_cpas21.index
;

create or replace view api_historic_v0_1_0_alpha.cpas22 as
	select *
	from census_cpas22
	order by census_cpas22.index
;

create or replace view api_historic_v0_1_0_alpha.duns16 as
	select *
	from census_duns16
	order by census_duns16.index
;

create or replace view api_historic_v0_1_0_alpha.duns17 as
	select *
	from census_duns17
	order by census_duns17.index
;

create or replace view api_historic_v0_1_0_alpha.duns18 as
	select *
	from census_duns18
	order by census_duns18.index
;

create or replace view api_historic_v0_1_0_alpha.duns19 as
	select *
	from census_duns19
	order by census_duns19.index
;

create or replace view api_historic_v0_1_0_alpha.duns20 as
	select *
	from census_duns20
	order by census_duns20.index
;

create or replace view api_historic_v0_1_0_alpha.duns21 as
	select *
	from census_duns21
	order by census_duns21.index
;

create or replace view api_historic_v0_1_0_alpha.duns22 as
	select *
	from census_duns22
	order by census_duns22.index
;

create or replace view api_historic_v0_1_0_alpha.eins16 as
	select *
	from census_eins16
	order by census_eins16.index
;

create or replace view api_historic_v0_1_0_alpha.eins17 as
	select *
	from census_eins17
	order by census_eins17.index
;

create or replace view api_historic_v0_1_0_alpha.eins18 as
	select *
	from census_eins18
	order by census_eins18.index
;

create or replace view api_historic_v0_1_0_alpha.eins19 as
	select *
	from census_eins19
	order by census_eins19.index
;

create or replace view api_historic_v0_1_0_alpha.eins20 as
	select *
	from census_eins20
	order by census_eins20.index
;

create or replace view api_historic_v0_1_0_alpha.eins21 as
	select *
	from census_eins21
	order by census_eins21.index
;

create or replace view api_historic_v0_1_0_alpha.eins22 as
	select *
	from census_eins22
	order by census_eins22.index
;

create or replace view api_historic_v0_1_0_alpha.findings16 as
	select *
	from census_findings16
	order by census_findings16.index
;

create or replace view api_historic_v0_1_0_alpha.findings17 as
	select *
	from census_findings17
	order by census_findings17.index
;

create or replace view api_historic_v0_1_0_alpha.findings18 as
	select *
	from census_findings18
	order by census_findings18.index
;

create or replace view api_historic_v0_1_0_alpha.findings19 as
	select *
	from census_findings19
	order by census_findings19.index
;

create or replace view api_historic_v0_1_0_alpha.findings20 as
	select *
	from census_findings20
	order by census_findings20.index
;

create or replace view api_historic_v0_1_0_alpha.findings21 as
	select *
	from census_findings21
	order by census_findings21.index
;

create or replace view api_historic_v0_1_0_alpha.findings22 as
	select *
	from census_findings22
	order by census_findings22.index
;

create or replace view api_historic_v0_1_0_alpha.findingstext19 as
	select *
	from census_findingstext19
	order by census_findingstext19.index
;

create or replace view api_historic_v0_1_0_alpha.findingstext20 as
	select *
	from census_findingstext20
	order by census_findingstext20.index
;

create or replace view api_historic_v0_1_0_alpha.findingstext21 as
	select *
	from census_findingstext21
	order by census_findingstext21.index
;

create or replace view api_historic_v0_1_0_alpha.findingstext22 as
	select *
	from census_findingstext22
	order by census_findingstext22.index
;

create or replace view api_historic_v0_1_0_alpha.findingstext_formatted19 as
	select *
	from census_findingstext_formatted19
	order by census_findingstext_formatted19.index
;

create or replace view api_historic_v0_1_0_alpha.findingstext_formatted20 as
	select *
	from census_findingstext_formatted20
	order by census_findingstext_formatted20.index
;

create or replace view api_historic_v0_1_0_alpha.findingstext_formatted21 as
	select *
	from census_findingstext_formatted21
	order by census_findingstext_formatted21.index
;

create or replace view api_historic_v0_1_0_alpha.findingstext_formatted22 as
	select *
	from census_findingstext_formatted22
	order by census_findingstext_formatted22.index
;

create or replace view api_historic_v0_1_0_alpha.gen16 as
	select *
	from census_gen16
	order by census_gen16.index
;

create or replace view api_historic_v0_1_0_alpha.gen17 as
	select *
	from census_gen17
	order by census_gen17.index
;

create or replace view api_historic_v0_1_0_alpha.gen18 as
	select *
	from census_gen18
	order by census_gen18.index
;

create or replace view api_historic_v0_1_0_alpha.gen19 as
	select *
	from census_gen19
	order by census_gen19.index
;

create or replace view api_historic_v0_1_0_alpha.gen20 as
	select *
	from census_gen20
	order by census_gen20.index
;

create or replace view api_historic_v0_1_0_alpha.gen21 as
	select *
	from census_gen21
	order by census_gen21.index
;

create or replace view api_historic_v0_1_0_alpha.gen22 as
	select *
	from census_gen22
	order by census_gen22.index
;

create or replace view api_historic_v0_1_0_alpha.notes19 as
	select *
	from census_notes19
	order by census_notes19.index
;

create or replace view api_historic_v0_1_0_alpha.notes20 as
	select *
	from census_notes20
	order by census_notes20.index
;

create or replace view api_historic_v0_1_0_alpha.notes21 as
	select *
	from census_notes21
	order by census_notes21.index
;

create or replace view api_historic_v0_1_0_alpha.notes22 as
	select *
	from census_notes22
	order by census_notes22.index
;

create or replace view api_historic_v0_1_0_alpha.passthrough16 as
	select *
	from census_passthrough16
	order by census_passthrough16.index
;

create or replace view api_historic_v0_1_0_alpha.passthrough17 as
	select *
	from census_passthrough17
	order by census_passthrough17.index
;

create or replace view api_historic_v0_1_0_alpha.passthrough18 as
	select *
	from census_passthrough18
	order by census_passthrough18.index
;

create or replace view api_historic_v0_1_0_alpha.passthrough19 as
	select *
	from census_passthrough19
	order by census_passthrough19.index
;

create or replace view api_historic_v0_1_0_alpha.passthrough20 as
	select *
	from census_passthrough20
	order by census_passthrough20.index
;

create or replace view api_historic_v0_1_0_alpha.passthrough21 as
	select *
	from census_passthrough21
	order by census_passthrough21.index
;

create or replace view api_historic_v0_1_0_alpha.passthrough22 as
	select *
	from census_passthrough22
	order by census_passthrough22.index
;

create or replace view api_historic_v0_1_0_alpha.revisions19 as
	select *
	from census_revisions19
	order by census_revisions19.index
;

create or replace view api_historic_v0_1_0_alpha.revisions20 as
	select *
	from census_revisions20
	order by census_revisions20.index
;

create or replace view api_historic_v0_1_0_alpha.revisions21 as
	select *
	from census_revisions21
	order by census_revisions21.index
;

create or replace view api_historic_v0_1_0_alpha.revisions22 as
	select *
	from census_revisions22
	order by census_revisions22.index
;

create or replace view api_historic_v0_1_0_alpha.ueis22 as
	select *
	from census_ueis22
	order by census_ueis22.index
;

commit;
notify pgrst, 'reload schema';
