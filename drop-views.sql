begin;

DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_agency16;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_agency17;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_agency18;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_agency19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_agency20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_agency21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_agency22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_captext19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_captext20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_captext21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_captext22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_captext_formatted19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_captext_formatted20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_captext_formatted21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_captext_formatted22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cfda16;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cfda17;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cfda18;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cfda19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cfda20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cfda21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cfda22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cpas16;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cpas17;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cpas18;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cpas19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cpas20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cpas21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_cpas22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_duns16;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_duns17;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_duns18;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_duns19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_duns20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_duns21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_duns22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_eins16;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_eins17;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_eins18;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_eins19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_eins20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_eins21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_eins22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findings16;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findings17;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findings18;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findings19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findings20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findings21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findings22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findingstext19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findingstext20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findingstext21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findingstext22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findingstext_formatted19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findingstext_formatted20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findingstext_formatted21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_findingstext_formatted22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_gen16;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_gen17;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_gen18;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_gen19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_gen20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_gen21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_gen22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_notes19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_notes20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_notes21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_notes22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_passthrough16;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_passthrough17;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_passthrough18;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_passthrough19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_passthrough20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_passthrough21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_passthrough22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_revisions19;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_revisions20;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_revisions21;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_revisions22;
DROP TABLE IF EXISTS api_historic_v0_1_0_alpha.census_ueis22;
commit;
notify pgrst, 'reload schema';
