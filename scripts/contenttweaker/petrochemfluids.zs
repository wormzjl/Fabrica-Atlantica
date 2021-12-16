#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;


val fluids_ambient_misc = {
  oil_brine : "ADD8E6",
  sour_water : "005E7F",
  fuel_oil : "1D1002",
  lean_mea : "80FFE0",
  rich_mea : "80F2E2",
  rich_mea_co2 : "80DDE0",
  rich_mea_co2h2s : "80DDE0",
  lean_mdea : "80FFC3",
  rich_mdea : "80E6C3",
  rich_methanol_co2h2s : "715F6F",
  naoh_40 : "7578AE",
  naoh_used : "75787E",
  sulfolane : "4B0099",
  benzene : "8B4513",
  toluene : "A52A2A",
  pxylene : "B96464",
  phenol : "FAFAD2",
  bisphenola : "FFFF00",
  acetone : "7FFF00",
  toluenediisocyanate : "800000",
  ethylbenzene : "CD853F",
  formaldehyde : "F08080",
  ethylene_glycol : "9CC9EC",
  ethylene_glycol_rich : "9CC9EC",
  ethylene_oxide : "69AEE2",
  glycerol : "FFE4C4",
  liquidrubber : "7A7A7A",
  rubber : "4D4D4D",
  formicacid : "00FFFF",
  epoxyresin : "2AB4D7"
} as string[string];

val fluids_ambient = {
  natural_gas : "E7F7CA",
  crude_heavy : "252525",
  crude_heavy_desalted : "252525",
  crude_desalted : "252525",
  adu_gas_light : "FFFFF6",
  adu_gas_heavy : "FFFFF6",
  sr_naphtha : "F5DEB3",
  sr_go : "F4A460",
  ar : "643C0B",
  sr_vgo : "724727",
  sr_vacuum_residue : "000000",
  hdt_naphtha : "F5DEB3",
  hdt_go : "F5B379",
  hdt_vgo : "DB813C",
  hdt_vacuum_residue : "150F0C",
  lcgo : "D08B4D",
  hcgo : "5C3A19",
  coker_naphtha : "F5CFB3",
  srn_hdt_basic_eff_mix : "F5EAD9",
  srn_hdt_adv_eff_mix : "F5EAD9",
  srgo_hdt_basic_eff_gas : "F5EFE6",
  srgo_hdt_adv_eff_gas : "F5EFE6",
  srgo_hdt_fracfeed: "F49E72",
  srvgo_hdt_basic_eff_gas : "DBD5BB",
  srvgo_hdt_adv_eff_gas : "DBD5BB",
  srvgo_hdt_fracfeed : "B79073",
  srvr_hdt_basic_eff_gas : "E1C2A5",
  srvr_hdt_adv_eff_gas : "E1C2A5",
  srvr_hdt_fracfeed : "171109",
  naphtha_crackedgas_humid : "E6E2E0",
  naphtha_crackedgas : "E6E2E0",
  naphtha_crackedgas_washed : "E6EAE3",
  naphtha_cracked_demtop : "ADFF2F",
  naphtha_cracked_dembot : "9AE06E",
  naphtha_cracked_deetop : "9ACD32",
  naphtha_cracked_deebot : "65CD32",
  naphtha_cracked_deptop : "32CD32",
  naphtha_cracked_depbot : "2BCD1C",
  naphtha_cracked_debtop : "228B22",
  pygas : "FFB31A",
  pygas_mix : "AF0099",
  pygas_extr_bot : "AF5CA4",
  pygas_btx : "DA871A",
  pygas_tx : "96764B",
  pyoil : "F5B379",
  napref_s3 : "F5E3C6",
  napref_adv_s3 : "F5E3C6",
  naphtha_reformate : "F5CEB3",
  naphtha_reformate_adv : "F5CEB3",
  naphtha_reformate_stripped : "FFC7A9",
  naphtha_reformate_adv_stripped : "FFC7A9",
  naphtha_reformate_mix : "D344AA",
  naphtha_reformate_adv_mix : "D344AA",
  naphtha_reformate_extr_bot : "AF5CA4",
  naphtha_reformate_adv_extr_bot : "AF5CA4",
  naphtha_reformate_btx : "DA871A",
  naphtha_reformate_adv_btx : "DA871A",
  naphtha_reformate_tx : "96764B",
  naphtha_reformate_adv_tx : "96764B",
  sr_vgo_advhck_fracfeed : "B79073",
  hdt_vgo_advhck_fracfeed : "B79073",
  mix_vgo_advhck_fracfeed : "B79073",
  sr_vgo_advhckeff_gas : "E1C2A5",
  hdt_vgo_advhckeff_gas : "E1C2A5",
  mix_vgo_advhckeff_gas : "E1C2A5",
  sr_vgo_advhck_fracvapor : "FFFFF6",
  hdt_vgo_advhck_fracvapor : "FFFFF6",
  mix_vgo_advhck_fracvapor : "FFFFF6",
  sr_vgo_basichck_fracfeed : "B79073",
  hdt_vgo_basichck_fracfeed : "B79073",
  mix_vgo_basichck_fracfeed : "B79073",
  sr_vgo_basichckeff_gas : "E1C2A5",
  hdt_vgo_basichckeff_gas : "E1C2A5",
  mix_vgo_basichckeff_gas : "E1C2A5",
  sr_vgo_basichck_fracvapor : "FFFFF6",
  hdt_vgo_basichck_fracvapor : "FFFFF6",
  mix_vgo_basichck_fracvapor : "FFFFF6",
  sr_go_advhck_fracfeed : "B79073",
  hdt_go_advhck_fracfeed : "B79073",
  mix_go_advhck_fracfeed : "B79073",
  sr_go_advhckeff_gas : "E1C2A5",
  hdt_go_advhckeff_gas : "E1C2A5",
  mix_go_advhckeff_gas : "E1C2A5",
  sr_go_advhck_fracvapor : "FFFFF6",
  hdt_go_advhck_fracvapor : "FFFFF6",
  mix_go_advhck_fracvapor : "FFFFF6",
  sr_go_basichck_fracfeed : "B79073",
  hdt_go_basichck_fracfeed : "B79073",
  mix_go_basichck_fracfeed : "B79073",
  sr_go_basichckeff_gas : "E1C2A5",
  hdt_go_basichckeff_gas : "E1C2A5",
  mix_go_basichckeff_gas : "E1C2A5",
  sr_go_basichck_fracvapor : "FFFFF6",
  hdt_go_basichck_fracvapor : "FFFFF6",
  mix_go_basichck_fracvapor : "FFFFF6",
  vrhck_s1_effluent_liquid : "B79073",
  vrhck_s1_effluent_gas : "E1C2A5",
  vrhck_s1_fracvapor : "FFFFF6",
  vrhck_s2_effluent_liquid : "B79073",
  vrhck_effluent_gas : "E1C2A5",
  vrhck_s2_fracvapor : "FFFFF6",
  vrhck_uco : "150F0C",
  fcccycleoil : "D6A460",
  fccslurry : "4D3D2C",
  vgo_basicfcc_fracvapor : "FFFFF6",
  vgo_advfcc_fracvapor : "FFFFF6",
  go_basicfcc_fracvapor : "FFFFF6",
  go_advfcc_fracvapor : "FFFFF6",
  vr_basicfcc_fracvapor : "FFFFF6",
  vr_advfcc_fracvapor : "FFFFF6"
} as string[string];

val fluids_warm = {
  oil : "252525",
  crude_heavy : "252525",
  crude_heavy_desalted : "252525",
  crude_desalted : "252525",
  adu_gas_light : "FFFFF6",
  adu_gas_heavy : "FFFFF6",
  sr_naphtha : "F5DEB3",
  sr_go : "F4A460",
  ar : "643C0B",
  sr_vgo : "724727",
  sr_vacuum_residue : "000000",
  hdt_naphtha : "F5DEB3",
  hdt_go : "F5B379",
  hdt_vgo : "DB813C",
  hdt_vacuum_residue : "150F0C",
  lcgo : "D08B4D",
  hcgo : "5C3A19",
  srn_hdt_basic_eff_mix : "F5EAD9",
  srn_hdt_adv_eff_mix : "F5EAD9",
  srgo_hdt_basic_eff_gas : "F5EFE6",
  srgo_hdt_adv_eff_gas : "F5EFE6",
  srgo_hdt_fracfeed: "F49E72",
  srvgo_hdt_basic_eff_gas : "DBD5BB",
  srvgo_hdt_adv_eff_gas : "DBD5BB",
  srvgo_hdt_fracfeed : "B79073",
  srvr_hdt_basic_eff_gas : "E1C2A5",
  srvr_hdt_adv_eff_gas : "E1C2A5",
  srvr_hdt_fracfeed : "171109",
  naphtha_crackedgas_humid : "E6E2E0",
  pyoil : "F5B379",
  napref_s3 : "F5E3C6",
  napref_adv_s3 : "F5E3C6",
  sr_vgo_advhck_fracfeed : "B79073",
  hdt_vgo_advhck_fracfeed : "B79073",
  mix_vgo_advhck_fracfeed : "B79073",
  sr_vgo_advhckeff_gas : "E1C2A5",
  hdt_vgo_advhckeff_gas : "E1C2A5",
  mix_vgo_advhckeff_gas : "E1C2A5",
  sr_vgo_advhck_fracvapor : "FFFFF6",
  hdt_vgo_advhck_fracvapor : "FFFFF6",
  mix_vgo_advhck_fracvapor : "FFFFF6",
  sr_vgo_basichck_fracfeed : "B79073",
  hdt_vgo_basichck_fracfeed : "B79073",
  mix_vgo_basichck_fracfeed : "B79073",
  sr_vgo_basichckeff_gas : "E1C2A5",
  hdt_vgo_basichckeff_gas : "E1C2A5",
  mix_vgo_basichckeff_gas : "E1C2A5",
  sr_vgo_basichck_fracvapor : "FFFFF6",
  hdt_vgo_basichck_fracvapor : "FFFFF6",
  mix_vgo_basichck_fracvapor : "FFFFF6",
  sr_go_advhck_fracfeed : "B79073",
  hdt_go_advhck_fracfeed : "B79073",
  mix_go_advhck_fracfeed : "B79073",
  sr_go_advhckeff_gas : "E1C2A5",
  hdt_go_advhckeff_gas : "E1C2A5",
  mix_go_advhckeff_gas : "E1C2A5",
  sr_go_advhck_fracvapor : "FFFFF6",
  hdt_go_advhck_fracvapor : "FFFFF6",
  mix_go_advhck_fracvapor : "FFFFF6",
  sr_go_basichck_fracfeed : "B79073",
  hdt_go_basichck_fracfeed : "B79073",
  mix_go_basichck_fracfeed : "B79073",
  sr_go_basichckeff_gas : "E1C2A5",
  hdt_go_basichckeff_gas : "E1C2A5",
  mix_go_basichckeff_gas : "E1C2A5",
  sr_go_basichck_fracvapor : "FFFFF6",
  hdt_go_basichck_fracvapor : "FFFFF6",
  mix_go_basichck_fracvapor : "FFFFF6",
  vrhck_s1_effluent_liquid : "B79073",
  vrhck_s1_effluent_gas : "E1C2A5",
  vrhck_s1_fracvapor : "FFFFF6",
  vrhck_s2_effluent_liquid : "B79073",
  vrhck_effluent_gas : "E1C2A5",
  vrhck_s2_fracvapor : "FFFFF6",
  vrhck_uco : "150F0C",
  fcccycleoil : "D6A460",
  fccslurry : "4D3D2C",
  vgo_basicfcc_fracvapor : "FFFFF6",
  vgo_advfcc_fracvapor : "FFFFF6",
  go_basicfcc_fracvapor : "FFFFF6",
  go_advfcc_fracvapor : "FFFFF6",
  vr_basicfcc_fracvapor : "FFFFF6",
  vr_advfcc_fracvapor : "FFFFF6"
} as string[string];

val fluids_hot = {
  crude_heavy_desalted : "252525",
  crude_desalted : "252525",
  sr_naphtha : "F5DEB3",
  sr_go : "F4A460",
  ar : "643C0B",
  sr_vgo : "724727",
  sr_vacuum_residue : "000000",
  hdt_naphtha : "F5DEB3",
  hdt_go : "F5B379",
  hdt_vgo : "DB813C",
  hdt_vacuum_residue : "150F0C",
  lcgo : "D08B4D",
  hcgo : "5C3A19",
  srn_hdt_basic_eff_mix : "F5EAD9",
  srn_hdt_adv_eff_mix : "F5EAD9",
  srgo_hdt_basic_eff_mix : "F4C890",
  srgo_hdt_adv_eff_mix : "F4C890",
  srgo_hdt_basic_eff_gas : "F5EFE6",
  srgo_hdt_adv_eff_gas : "F5EFE6",
  srgo_hdt_fracfeed: "F49E72",
  srvgo_hdt_basic_eff_mix : "DBA25A",
  srvgo_hdt_adv_eff_mix : "DBA25A",
  srvgo_hdt_basic_eff_gas : "DBD5BB",
  srvgo_hdt_adv_eff_gas : "DBD5BB",
  srvgo_hdt_fracfeed : "B79073",
  srvr_hdt_basic_eff_mix : "1D1109",
  srvr_hdt_adv_eff_mix : "1D1109",
  srvr_hdt_basic_eff_gas : "E1C2A5",
  srvr_hdt_adv_eff_gas : "E1C2A5",
  srvr_hdt_fracfeed : "171109",
  vrhdt_bottom : "150F0C",
  naphtha_cracked : "F8F2EC",
  pyoil : "F5B379",
  napref_s3 : "F5E3C6",
  napref_adv_s3 : "F5E3C6",
  sr_vgo_advhckeff : "DBA25A",
  hdt_vgo_advhckeff : "DBA25A",
  mix_vgo_advhckeff : "DBA25A",
  sr_vgo_advhck_fracfeed : "B79073",
  hdt_vgo_advhck_fracfeed : "B79073",
  mix_vgo_advhck_fracfeed : "B79073",
  sr_vgo_advhckeff_gas : "E1C2A5",
  hdt_vgo_advhckeff_gas : "E1C2A5",
  mix_vgo_advhckeff_gas : "E1C2A5",
  sr_vgo_basichckeff : "DBA25A",
  hdt_vgo_basichckeff : "DBA25A",
  mix_vgo_basichckeff : "DBA25A",
  sr_vgo_basichck_fracfeed : "B79073",
  hdt_vgo_basichck_fracfeed : "B79073",
  mix_vgo_basichck_fracfeed : "B79073",
  sr_vgo_basichckeff_gas : "E1C2A5",
  hdt_vgo_basichckeff_gas : "E1C2A5",
  mix_vgo_basichckeff_gas : "E1C2A5",
  sr_go_advhckeff : "DBA25A",
  hdt_go_advhckeff : "DBA25A",
  mix_go_advhckeff : "DBA25A",
  sr_go_advhck_fracfeed : "B79073",
  hdt_go_advhck_fracfeed : "B79073",
  mix_go_advhck_fracfeed : "B79073",
  sr_go_advhckeff_gas : "E1C2A5",
  hdt_go_advhckeff_gas : "E1C2A5",
  mix_go_advhckeff_gas : "E1C2A5",
  sr_go_basichckeff : "DBA25A",
  hdt_go_basichckeff : "DBA25A",
  mix_go_basichckeff : "DBA25A",
  sr_go_basichck_fracfeed : "B79073",
  hdt_go_basichck_fracfeed : "B79073",
  mix_go_basichck_fracfeed : "B79073",
  sr_go_basichckeff_gas : "E1C2A5",
  hdt_go_basichckeff_gas : "E1C2A5",
  mix_go_basichckeff_gas : "E1C2A5",
  vrhck_s1_effluent_liquid : "B79073",
  vrhck_s1_effluent_gas : "E1C2A5",
  vrhck_s1_adubottom : "150F0C",
  vrhck_s2_effluent_liquid : "B79073",
  vrhck_effluent_gas : "E1C2A5",
  vrhck_s2_adubottom : "150F0C",
  vrhck_uco : "150F0C",
  fcccycleoil : "D6A460",
  fccslurry : "4D3D2C"
} as string[string];

val fluids_boiling = {
  sr_go : "F4A460",
  ar : "643C0B",
  sr_vgo : "724727",
  sr_vacuum_residue : "000000",
  hdt_naphtha : "F5DEB3",
  hdt_go : "F5B379",
  hdt_vgo : "DB813C",
  hdt_vacuum_residue : "150F0C",
  srgo_hdt_basic_eff_mix : "F4C890",
  srgo_hdt_adv_eff_mix : "F4C890",
  srvgo_hdt_basic_eff_mix : "DBA25A",
  srvgo_hdt_adv_eff_mix : "DBA25A",
  srvr_hdt_basic_eff_mix : "1D1109",
  srvr_hdt_adv_eff_s1 : "1D1109",
  srvr_hdt_adv_eff_mix : "1D1109",
  vrhdt_bottom : "150F0C",
  naphtha_cracked : "F8F2EC",
  napref_s1 : "F5E3C6",
  napref_s2 : "F5E3C6",
  napref_s3 : "F5E3C6",
  napref_adv_s1 : "F5E3C6",
  napref_adv_s2 : "F5E3C6",
  napref_adv_s3 : "F5E3C6",
  vrcoker_effluent : "512D11",
  sr_vgo_advhckeff : "DBA25A",
  hdt_vgo_advhckeff : "DBA25A",
  mix_vgo_advhckeff : "DBA25A",
  sr_vgo_basichckeff : "DBA25A",
  hdt_vgo_basichckeff : "DBA25A",
  mix_vgo_basichckeff : "DBA25A",
  sr_go_advhckeff : "DBA25A",
  hdt_go_advhckeff : "DBA25A",
  mix_go_advhckeff : "DBA25A",
  sr_go_basichckeff : "DBA25A",
  hdt_go_basichckeff : "DBA25A",
  mix_go_basichckeff : "DBA25A",
  vrhck_s1_effluent : "AF7C49",
  vrhck_s1_effluent_liquid : "B79073",
  vrhck_s1_effluent_gas : "E1C2A5",
  vrhck_s1_adubottom : "150F0C",
  vrhck_s2_effluent : "AF7C49",
  vrhck_s2_effluent_liquid : "B79073",
  vrhck_s2_effluent_gas : "E1C2A5",
  vrhck_effluent_gas : "E1C2A5",
  vrhck_s2_adubottom : "150F0C",
  vrhck_uco : "150F0C",
  vgo_basicfcc_eff : "C0AE3B",
  vgo_advfcc_eff : "C0AE3B",
  go_basicfcc_eff : "C0C33B",
  go_advfcc_eff : "C0C33B",
  vr_basicfcc_eff : "AF8C3B",
  fcccycleoil : "D6A460",
  fccslurry : "4D3D2C"
} as string[string];

val fluids_blazing = {
  ar : "643C0B",
  sr_vacuum_residue : "000000",
  hdt_naphtha : "F5DEB3",
  naphtha_cracked : "F8F2EC",
  napref_s1 : "F5E3C6",
  napref_s2 : "F5E3C6",
  napref_s3 : "F5E3C6",
  napref_adv_s1 : "F5E3C6",
  napref_adv_s2 : "F5E3C6",
  napref_adv_s3 : "F5E3C6"

} as string[string];

val fluid_special = {
} as string[string];

val fluid_cold = {
  methanol : "715F5C"
} as string[string];

val gas_ambient_misc = {
  phosgene : "FFA07A"
} as string[string];


val gas_ambient = {
  methane_natural : "ADFF2F",
  methane : "ADFF2F",
  ethane : "9ACD32",
  propane : "32CD32",
  butane : "228B22",
  propene : "23A923",
  butadiene : "BDB76B",
  fuel_gas : "A4D83C",
  adu_off_gas : "FFFFFA",
  hdt_offgas : "FFF9F3",
  h2s : "F1F000",
  srn_hdt_basic_sourgas : "FFF900",
  srn_hdt_adv_sourgas : "FFF900",
  srn_hdt_basic_sweetgas : "FFFFC8",
  srn_hdt_adv_sweetgas : "FFFFC8",
  srgo_hdt_basic_sourgas : "FFF900",
  srgo_hdt_adv_sourgas : "FFF900",
  srgo_hdt_basic_sweetgas : "FFFFC8",
  srgo_hdt_adv_sweetgas : "FFFFC8",
  srvgo_hdt_basic_sourgas : "FFF900",
  srvgo_hdt_adv_sourgas : "FFF900",
  srvgo_hdt_basic_sweetgas : "FFFFC8",
  srvgo_hdt_adv_sweetgas : "FFFFC8",
  srvr_hdt_basic_sourgas : "FFF900",
  srvr_hdt_adv_sourgas : "FFF900",
  srvr_hdt_basic_sweetgas : "FFFFC8",
  srvr_hdt_adv_sweetgas : "FFFFC8",
  c1_smrproduct : "9CD3FF",
  c1_smrproduct_lts : "D6EEFF",
  c1_smrproduct_ltsgas : "83B9FB",
  c1_syngas : "DDF5DD",
  c2_smrproduct : "9CD3FF",
  c2_smrproduct_lts : "D6EEFF",
  c2_smrproduct_ltsgas : "83B9FB",
  c2_syngas : "DDF5DD",
  c3_smrproduct : "9CD3FF",
  c3_smrproduct_lts : "D6EEFF",
  c3_smrproduct_ltsgas : "83B9FB",
  c3_syngas : "DDF5DD",
  c4_smrproduct : "9CD3FF",
  c4_smrproduct_lts : "D6EEFF",
  c4_smrproduct_ltsgas : "83B9FB",
  c4_syngas : "DDF5DD",
  hdtgas_smrproduct : "9CD3FF",
  hdtgas_smrproduct_lts : "D6EEFF",
  hdtgas_smrproduct_ltsgas : "83B9FB",
  hdtgas_syngas : "DDF5DD",
  naphtha_smrproduct : "9CD3FF",
  naphtha_smrproduct_lts : "D6EEFF",
  naphtha_smrproduct_ltsgas : "83B9FB",
  naphtha_syngas : "DDF5DD",
  coal_syngas : "DDF5DD",
  coal_syngas_lts : "D6EEFF",
  coal_syngas_ltsgas : "83B9FB",
  coal_syngas_sour : "EEF5DD",
  coalgasifier_effluent : "BDBD94",
  coal_syngas_advlts : "D6EEFF",
  coal_syngas_advltsgas_sour : "EEF5DD",
  coal_stdsyngas_advhts : "BBDFFF",
  coal_stdsyngas_advhtsgas_sour : "EEF5DD",
  ethane_cracked : "D7FFB1",
  ethane_crackedgas : "B9FF79",
  ethane_crackedgas_washed : "B9FF79",
  ethane_cracked_demtop : "ADFF2F",
  ethane_cracked_dembot : "9AE06E",
  ethane_cracked_deetop : "9ACD32",
  ethane_cracked_deebot : "65CD32",
  ethane_cracked_deptop : "32CD32",
  ethane_cracked_depbot : "2BCD1C",
  ethane_cracked_debtop : "228B22",
  propane_cracked : "D7FFB1",
  propane_crackedgas : "B9FF79",
  propane_crackedgas_washed : "B9FF79",
  propane_cracked_demtop : "ADFF2F",
  propane_cracked_dembot : "9AE06E",
  propane_cracked_deetop : "9ACD32",
  propane_cracked_deebot : "65CD32",
  propane_cracked_deptop : "32CD32",
  propane_cracked_depbot : "2BCD1C",
  propane_cracked_debtop : "228B22",
  butane_cracked : "D7FFB1",
  butane_crackedgas : "B9FF79",
  butane_crackedgas_humid : "E6E2E0",
  butane_crackedgas_washed : "B9FF79",
  butane_cracked_demtop : "ADFF2F",
  butane_cracked_dembot : "9AE06E",
  butane_cracked_deetop : "9ACD32",
  butane_cracked_deebot : "65CD32",
  butane_cracked_deptop : "32CD32",
  butane_cracked_depbot : "2BCD1C",
  butane_cracked_debtop : "228B22",
  reformer_gas : "FFF9F3",
  reformer_gas_adv : "FFF9F3",
  vrcoker_fracvapor : "FDEA6F",
  vrcoker_sourgas : "FDEAB3",
  vrcoker_gas : "B9FF79",
  vrcoker_gas_dembot : "9AE06E",
  vrcoker_gas_deetop : "9ACD32",
  vrcoker_gas_deebot : "65CD32",
  vrcoker_gas_deptop : "32CD32",
  vrcoker_gas_depbot : "2BCD1C",
  sr_vgo_advhck_sourgas : "FFF900",
  hdt_vgo_advhck_sourgas : "FFF900",
  mix_vgo_advhck_sourgas : "FFF900",
  sr_vgo_advhck_sweetgas : "FFFFC8",
  hdt_vgo_advhck_sweetgas : "FFFFC8",
  mix_vgo_advhck_sweetgas : "FFFFC8",
  sr_vgo_basichck_sourgas : "FFF900",
  hdt_vgo_basichck_sourgas : "FFF900",
  mix_vgo_basichck_sourgas : "FFF900",
  sr_vgo_basichck_sweetgas : "FFFFC8",
  hdt_vgo_basichck_sweetgas : "FFFFC8",
  mix_vgo_basichck_sweetgas : "FFFFC8",
  sr_go_advhck_sourgas : "FFF900",
  hdt_go_advhck_sourgas : "FFF900",
  mix_go_advhck_sourgas : "FFF900",
  sr_go_advhck_sweetgas : "FFFFC8",
  hdt_go_advhck_sweetgas : "FFFFC8",
  mix_go_advhck_sweetgas : "FFFFC8",
  sr_go_basichck_sourgas : "FFF900",
  hdt_go_basichck_sourgas : "FFF900",
  mix_go_basichck_sourgas : "FFF900",
  sr_go_basichck_sweetgas : "FFFFC8",
  hdt_go_basichck_sweetgas : "FFFFC8",
  mix_go_basichck_sweetgas : "FFFFC8",
  vrhck_s1_sourgas : "FFF900",
  vrhck_s1_sweetgas : "FFFFC8",
  vrhck_s2_sourgas : "FFF900",
  vrhck_s2_sweetgas : "FFFFC8",
  vgo_basicfcc_sourgas : "FFF900",
  vgo_basicfcc_sweetgas : "FFFFC8",
  vgo_advfcc_sourgas : "FFF900",
  vgo_advfcc_sweetgas : "FFFFC8",
  vgo_basicfcc_demtop : "ADFF2F",
  vgo_basicfcc_dembot : "9AE06E",
  vgo_basicfcc_deetop : "9ACD32",
  vgo_basicfcc_deebot : "65CD32",
  vgo_basicfcc_deptop : "32CD32",
  vgo_basicfcc_depbot : "2BCD1C",
  vgo_advfcc_demtop : "ADFF2F",
  vgo_advfcc_dembot : "9AE06E",
  vgo_advfcc_deetop : "9ACD32",
  vgo_advfcc_deebot : "65CD32",
  vgo_advfcc_deptop : "32CD32",
  vgo_advfcc_depbot : "2BCD1C",
  go_basicfcc_sourgas : "FFF900",
  go_basicfcc_sweetgas : "FFFFC8",
  go_advfcc_sourgas : "FFF900",
  go_advfcc_sweetgas : "FFFFC8",
  go_basicfcc_demtop : "ADFF2F",
  go_basicfcc_dembot : "9AE06E",
  go_basicfcc_deetop : "9ACD32",
  go_basicfcc_deebot : "65CD32",
  go_basicfcc_deptop : "32CD32",
  go_basicfcc_depbot : "2BCD1C",
  go_advfcc_demtop : "ADFF2F",
  go_advfcc_dembot : "9AE06E",
  go_advfcc_deetop : "9ACD32",
  go_advfcc_deebot : "65CD32",
  go_advfcc_deptop : "32CD32",
  go_advfcc_depbot : "2BCD1C",
  vr_basicfcc_sourgas : "FFF900",
  vr_basicfcc_sweetgas : "FFFFC8",
  vr_basicfcc_demtop : "ADFF2F",
  vr_basicfcc_dembot : "9AE06E",
  vr_basicfcc_deetop : "9ACD32",
  vr_basicfcc_deebot : "65CD32",
  vr_basicfcc_deptop : "32CD32",
  vr_basicfcc_depbot : "2BCD1C",
  fcc_fluegas : "FFFFD1"
} as string[string];

val gas_warm = {
  hydrogen : "B59EC3",
  c1_smrproduct : "9CD3FF",
  c1_smrproduct_hts : "BBDFFF",
  c1_smrproduct_lts : "D6EEFF",
  c2_smrproduct : "9CD3FF",
  c2_smrproduct_hts : "BBDFFF",
  c2_smrproduct_lts : "D6EEFF",
  c3_smrproduct : "9CD3FF",
  c3_smrproduct_hts : "BBDFFF",
  c3_smrproduct_lts : "D6EEFF",
  c4_smrproduct : "9CD3FF",
  c4_smrproduct_hts : "BBDFFF",
  c4_smrproduct_lts : "D6EEFF",
  hdtgas_smrproduct : "9CD3FF",
  hdtgas_smrproduct_hts : "BBDFFF",
  hdtgas_smrproduct_lts : "D6EEFF",
  naphtha_smrproduct : "9CD3FF",
  naphtha_smrproduct_hts : "BBDFFF",
  naphtha_smrproduct_lts : "D6EEFF",
  coal_syngas : "DDF5DD",
  coal_syngas_hts : "BBDFFF",
  coal_syngas_lts : "D6EEFF",
  coalgasifier_effluent : "BDBD94",
  coal_syngas_advhts : "BBDFFF",
  coal_syngas_advlts : "D6EEFF",
  coal_stdsyngas_advhts : "BBDFFF",
  ethane_cracked : "D7FFB1",
  propane_cracked : "D7FFB1",
  butane_cracked : "D7FFB1",
  butane_crackedgas_humid : "E6E2E0",
  vrcoker_fracvapor : "FDEA6F",
  fcc_fluegas : "FFFFD1"
} as string[string];

val gas_hot = {
  hydrogen : "B59EC3",
  c1_smrproduct : "9CD3FF",
  c1_smrproduct_hts : "BBDFFF",
  c2_smrproduct : "9CD3FF",
  c2_smrproduct_hts : "BBDFFF",
  c3_smrproduct : "9CD3FF",
  c3_smrproduct_hts : "BBDFFF",
  c4_smrproduct : "9CD3FF",
  c4_smrproduct_hts : "BBDFFF",
  hdtgas_smrproduct : "9CD3FF",
  hdtgas_smrproduct_hts : "BBDFFF",
  naphtha_smrproduct : "9CD3FF",
  naphtha_smrproduct_hts : "BBDFFF",
  coal_syngas : "DDF5DD",
  coal_syngas_hts : "BBDFFF",
  coalgasifier_effluent : "BDBD94",
  coal_syngas_advhts : "BBDFFF",
  coal_stdsyngas_advhts : "BBDFFF",
  ethane_cracked : "D7FFB1",
  propane_cracked : "D7FFB1",
  butane_cracked : "D7FFB1",
  fcc_fluegas : "FFFFD1"
} as string[string];

val gas_boiling = {
  hydrogen : "B59EC3",
  c1_smrproduct : "9CD3FF",
  c2_smrproduct : "9CD3FF",
  c3_smrproduct : "9CD3FF",
  c4_smrproduct : "9CD3FF",
  hdtgas_smrproduct : "9CD3FF",
  naphtha_smrproduct : "9CD3FF",
  coalgasifier_effluent : "BDBD94",
  ethane_cracked : "D7FFB1",
  propane_cracked : "D7FFB1",
  butane_cracked : "D7FFB1",
  fcc_fluegas : "FFFFD1"
} as string[string];

val gas_blazing = {
  c1_smrproduct : "9CD3FF",
  c2_smrproduct : "9CD3FF",
  c3_smrproduct : "9CD3FF",
  c4_smrproduct : "9CD3FF",
  hdtgas_smrproduct : "9CD3FF",
  naphtha_smrproduct : "9CD3FF",
  coalgasifier_effluent : "BDBD94",
  ethane_cracked : "D7FFB1",
  propane_cracked : "D7FFB1",
  butane_cracked : "D7FFB1",
  fcc_fluegas : "FFFFD1"
} as string[string];


addAmbientFluid(fluids_ambient_misc);
addAmbientFluid(fluids_ambient);
addWarmFluid(fluids_warm);
addHotFluid(fluids_hot);
addBoilingFluid(fluids_boiling);
addBlazingFluid(fluids_blazing);
addSpecialFluid(fluid_special);
addColdFluid(fluid_cold);

addAmbientGas(gas_ambient_misc);
addAmbientGas(gas_ambient);
addWarmGas(gas_warm);
addHotGas(gas_hot);
addBoilingGas(gas_boiling);
addBlazingGas(gas_blazing);


//Functions
function addAmbientFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid, Color.fromHex(fluids[fluid]));
    fluid1.temperature = 300;
    fluid1.register();
  }
}

function addWarmFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_warm", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 430;
    fluid1.register();
  }
}

function addHotFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_hot", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 590;
    fluid1.register();
  }
}

function addBoilingFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_boiling", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 700;
    fluid1.register();
  }
}

function addBlazingFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_blazing", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 1100;
    fluid1.register();
  }
}

function addSpecialFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid, Color.fromHex(fluids[fluid]));
    fluid1.temperature = 630;
    fluid1.register();
  }
}

function addColdFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_cold", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 213;
    fluid1.register();
  }
}

function addAmbientGas(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid, Color.fromHex(fluids[fluid]));
    fluid1.temperature = 300;
    fluid1.gaseous = true;
    fluid1.register();
  }
}

function addWarmGas(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_warm", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 430;
    fluid1.gaseous = true;
    fluid1.register();
  }
}

function addHotGas(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_hot", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 590;
    fluid1.gaseous = true;
    fluid1.register();
  }
}

function addBoilingGas(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_boiling", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 700;
    fluid1.gaseous = true;
    fluid1.register();
  }
}

function addBlazingGas(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_blazing", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 1100;
    fluid1.gaseous = true;
    fluid1.register();
  }
}
