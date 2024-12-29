--  ╔═══════════════════════════╗
--  ║ » Simply Weapons Module   ║
--  ║ » Author: YohSambre       ║
--  ║ » Serverside file         ║
--  ╚═══════════════════════════╝
print("NGH - Simply Weapons Module loaded!") -- this is essential to protect the server from weapon collision abuse
local function Soboring(_, eWep)
    local weaponsClasses = {
        -- The Ultimate Admin Gun > https://steamcommunity.com/sharedfiles/filedetails/?id=158421055
        ["pist_weagon"] = true,
        -- DarkRP Weapons
        ["weapon_ak47custom"] = true,
        ["weapon_ak472"] = true,
        ["weapon_deagle2"] = true,
        ["weapon_fiveseven2"] = true,
        ["weapon_glock2"] = true,
        ["weapon_m42"] = true,
        ["weapon_mac102"] = true,
        ["weapon_mp52"] = true,
        ["weapon_p2282"] = true,
        ["weapon_pumpshotgun2"] = true,
        ["ls_sniper"] = true,
        -- Half Life 2 Default Weapons
        ["weapon_357"] = true,
        ["weapon_pistol"] = true,
        ["weapon_bugbait"] = true,
        ["weapon_crossbow"] = true,
        ["weapon_crowbar"] = true,
        ["weapon_frag"] = true,
        ["weapon_physcannon"] = true,
        ["weapon_slam"] = true,
        ["weapon_shotgun"] = true,
        ["weapon_smg1"] = true,
        ["weapon_stunstick"] = true,
        ["weapon_rpg"] = true,
        ["weapon_alyxgun"] = true,
        ["weapon_annabelle"] = true,
        ["weapon_ar2"] = true,
        -- Garry'smod' Default Swep
        ["gmod_camera"] = true,
        ["manhack_welder"] = true,
        ["weapon_medkit"] = true,
        ["gmod_tool"] = true,
        ["weapon_physgun"] = true,
        -- Vape SWEP > https://steamcommunity.com/sharedfiles/filedetails/?id=673698301
        ["weapon_vape_american"] = true,
        ["weapon_vape_butterfly"] = true,
        ["weapon_vape_custom"] = true,
        ["weapon_vape_dragon"] = true,
        ["weapon_vape_golden"] = true,
        ["weapon_vape_hallucinogenic"] = true,
        ["weapon_vape_helium"] = true,
        ["weapon_vape_juicy"] = true,
        ["weapon_vape_medicinal"] = true,
        ["weapon_vape_mega"] = true,
        ["weapon_vape"] = true,
        -- Worshipper's CSS Weapons > https://steamcommunity.com/sharedfiles/filedetails/?id=2344850110
        ["weapon_real_cs_pumpshotgun"] = true,
        ["weapon_real_cs_xm1014"] = true,
        ["weapon_real_cs_m4a1"] = true,
        ["weapon_real_cs_desert_eagle"] = true,
        ["weapon_real_cs_elites"] = true,
        ["weapon_real_cs_grenade"] = true,
        ["weapon_real_cs_famas"] = true,
        ["weapon_real_cs_flash"] = true,
        ["weapon_real_cs_five-seven"] = true,
        ["weapon_real_cs_p90"] = true,
        ["weapon_real_cs_galil"] = true,
        ["weapon_real_cs_glock18"] = true,
        ["weapon_real_cs_g3sg1"] = true,
        ["weapon_real_cs_mp5a5"] = true,
        ["weapon_real_cs_ump_45"] = true,
        ["weapon_real_cs_usp"] = true,
        ["weapon_real_cs_mac10"] = true,
        ["weapon_real_cs_ak47"] = true,
        ["weapon_real_cs_knife"] = true,
        ["weapon_real_cs_m249"] = true,
        ["weapon_real_cs_sg550"] = true,
        ["weapon_real_cs_sg552"] = true,
        ["weapon_real_cs_p228"] = true,
        ["weapon_real_cs_smoke"] = true,
        ["weapon_real_cs_aug"] = true,
        ["weapon_real_cs_scout"] = true,
        ["weapon_real_cs_tmp"] = true,
        ["weapon_real_cs_awp"] = true,
        -- Chuck's Weaponry 2.0 > https://steamcommunity.com/sharedfiles/filedetails/?id=349050451
        ["cw_ak74"] = true,
        ["cw_akm_official"] = true,
        ["cw_ar15"] = true,
        ["cw_famasg2_official"] = true,
        ["cw_flash_grenade"] = true,
        ["cw_frag_grenade"] = true,
        ["cw_g3a3"] = true,
        ["cw_mp5"] = true,
        ["cw_deagle"] = true,
        ["cw_l115"] = true,
        ["cw_mr96"] = true,
        ["cw_smoke_grenade"] = true,
        ["cw_svd_official"] = true,
        -- FA:S 2.0 Global contents > https://steamcommunity.com/sharedfiles/filedetails/?id=1600901652
        ["fas2_ak12"] = true,
        ["fas2_ak47"] = true,
        ["fas2_ak74"] = true,
        ["fas2_ammobox"] = true,
        ["fas2_an94"] = true,
        ["fas2_svd"] = true,
        ["fas2_dv2"] = true,
        ["fas2_famas"] = true,
        ["fas2_g36c"] = true,
        ["fas2_g3"] = true,
        ["fas2_glock20"] = true,
        ["fas2_deagle"] = true,
        ["fas2_galil"] = true,
        ["fas2_uzi"] = true,
        ["fas2_ifak"] = true,
        ["fas2_ks23"] = true,
        ["fas2_mac11"] = true,
        ["fas2_m14"] = true,
        ["fas2_m16a2"] = true,
        ["fas2_m1911"] = true,
        ["fas2_m21"] = true,
        ["fas2_m24"] = true,
        ["fas2_m249"] = true,
        ["fas2_m3s90"] = true,
        ["fas2_m4a1"] = true,
        ["fas2_m60e3"] = true,
        ["fas2_m67"] = true,
        ["fas2_m79"] = true,
        ["fas2_m82"] = true,
        ["fas2_machete"] = true,
        ["fas2_vollmer"] = true,
        ["fas2_minimi"] = true,
        ["fas2_mp5a5"] = true,
        ["fas2_mp5k"] = true,
        ["fas2_mp5sd6"] = true,
        ["fas2_ots33"] = true,
        ["fas2_p226"] = true,
        ["fas2_pp19"] = true,
        ["fas2_ragingbull"] = true,
        ["fas2_rem870"] = true,
        ["fas2_rpk"] = true,
        ["fas2_rk95"] = true,
        ["fas2_sg550"] = true,
        ["fas2_sg551"] = true,
        ["fas2_sg552"] = true,
        ["fas2_sks"] = true,
        ["fas2_sr25"] = true,
        ["fas2_sterling_l2a3"] = true,
        ["fas2_sterling_l34a1"] = true,
        ["fas2_sterling_mk7a4"] = true,
        ["fas2_toz34"] = true,
        -- M9K - Global Contents > https://steamcommunity.com/sharedfiles/filedetails/?id=1518950483
        ["m9k_winchester73"] = true,
        ["m9k_amd65"] = true,
        ["m9k_fnc"] = true,
        ["m9k_l85"] = true,
        ["m9k_qbz97"] = true,
        ["m9k_vz58"] = true,
        ["m9k_acr"] = true,
        ["m9k_an94"] = true,
        ["m9k_fw"] = true,
        ["m9k_m14sp"] = true,
        ["m9k_scar"] = true,
        ["m9k_ak47"] = true,
        ["m9k_val"] = true,
        ["m9k_g36"] = true,
        ["m9k_m16a4"] = true,
        ["m9k_vikhr"] = true,
        ["m9k_ak47sd"] = true,
        ["m9k_f2000"] = true,
        ["m9k_asg36"] = true,
        ["m9k_m16a4_acog"] = true,
        ["m9k_auga3"] = true,
        ["m9k_ak74"] = true,
        ["m9k_famas"] = true,
        ["m9k_m416"] = true,
        ["m9k_m4a1"] = true,
        ["m9k_sturmgewehr44"] = true,
        ["m9k_ak74u"] = true,
        ["m9k_fal"] = true,
        ["m9k_g3a3"] = true,
        ["m9k_m4a4"] = true,
        ["m9k_tar21"] = true,
        ["m9k_ares_shrike"] = true,
        ["m9k_fg42"] = true,
        ["m9k_minigun"] = true,
        ["m9k_m1918bar"] = true,
        ["m9k_m249lmg"] = true,
        ["m9k_m60"] = true,
        ["m9k_pkm"] = true,
        ["m9k_bren_ten"] = true,
        ["m9k_glock"] = true,
        ["m9k_m29satan"] = true,
        ["m9k_remington1858"] = true,
        ["m9k_vp90"] = true,
        ["m9k_colt1911"] = true,
        ["m9k_glock18_extclip"] = true,
        ["m9k_m92beretta"] = true,
        ["m9k_ruger"] = true,
        ["m9k_coltscoped"] = true,
        ["m9k_guardian"] = true,
        ["m9k_mr96"] = true,
        ["m9k_model3russian"] = true,
        ["m9k_coltpython"] = true,
        ["m9k_usps"] = true,
        ["m9k_luger"] = true,
        ["m9k_model500"] = true,
        ["m9k_deagle"] = true,
        ["m9k_usp"] = true,
        ["m9k_ragingbull"] = true,
        ["m9k_model627"] = true,
        ["m9k_fnp"] = true,
        ["m9k_hk45"] = true,
        ["m9k_scoped_taurus"] = true,
        ["m9k_sig_p229r"] = true,
        ["m9k_baikal"] = true,
        ["m9k_ksg"] = true,
        ["m9k_serbushorty"] = true,
        ["m9k_1897winchester"] = true,
        ["m9k_m3"] = true,
        ["m9k_m3tactical"] = true,
        ["m9k_spas12"] = true,
        ["m9k_1887winchester"] = true,
        ["m9k_browningauto5"] = true,
        ["m9k_dragonsbreath"] = true,
        ["m9k_spas12stock"] = true,
        ["m9k_dbarrel"] = true,
        ["m9k_mossberg590"] = true,
        ["m9k_spas12silenced"] = true,
        ["m9k_fntps"] = true,
        ["m9k_jackhammer"] = true,
        ["m9k_striker12"] = true,
        ["m9k_ithacam37"] = true,
        ["m9k_remington870"] = true,
        ["m9k_usas"] = true,
        ["m9k_aw50"] = true,
        ["m9k_m24"] = true,
        ["m9k_barret_m82"] = true,
        ["m9k_psg1"] = true,
        ["m9k_m98b"] = true,
        ["m9k_remington7615p"] = true,
        ["m9k_svu"] = true,
        ["m9k_dragunov"] = true,
        ["m9k_sl8"] = true,
        ["m9k_svt40"] = true,
        ["m9k_intervention"] = true,
        ["m9k_contender"] = true,
        ["m9k_damascus"] = true,
        ["m9k_ied_detonator"] = true,
        ["m9k_milkormgl"] = true,
        ["m9k_sticky_grenade"] = true,
        ["m9k_davy_crockett"] = true,
        ["m9k_knife"] = true,
        ["m9k_nerve_gas"] = true,
        ["m9k_suicide_bomb"] = true,
        ["m9k_ex41"] = true,
        ["m9k_m202"] = true,
        ["m9k_nitro"] = true,
        ["m9k_m79gl"] = true,
        ["m9k_orbital_strike"] = true,
        ["m9k_m61_frag"] = true,
        ["m9k_machete"] = true,
        ["m9k_proxy_mine"] = true,
        ["m9k_harpoon"] = true,
        ["m9k_matador"] = true,
        ["m9k_rpg7"] = true,
        ["m9k_honeybadger"] = true,
        ["m9k_usc"] = true,
        ["m9k_mp9"] = true,
        ["m9k_bizonp19"] = true,
        ["m9k_kac_pdw"] = true,
        ["m9k_sten"] = true,
        ["m9k_smgp90"] = true,
        ["m9k_vector"] = true,
        ["m9k_tec9"] = true,
        ["m9k_mp5"] = true,
        ["m9k_magpulpdr"] = true,
        ["m9k_thompson"] = true,
        ["m9k_mp7"] = true,
        ["m9k_mp40"] = true,
        ["m9k_uzi"] = true,
        ["m9k_ump45"] = true,
        ["m9k_mp5sd"] = true,
        -- Star Wars Lightsabers > https://steamcommunity.com/sharedfiles/filedetails/?id=111412589
        ["weapon_lightsaber"] = true,
        -- Nyan Gun > https://steamcommunity.com/sharedfiles/filedetails/?id=123277559
        ["weapon_nyangun"] = true,
        -- [ArcCW] Arctic's Customizable Weapons (Base) > https://steamcommunity.com/sharedfiles/filedetails/?id=2131057232 / https://steamcommunity.com/sharedfiles/filedetails/?id=2131058270 / https://steamcommunity.com/sharedfiles/filedetails/?id=2131058270 / https://steamcommunity.com/sharedfiles/filedetails/?id=2257255110 / https://steamcommunity.com/sharedfiles/filedetails/?id=2414012615 / https://steamcommunity.com/sharedfiles/filedetails/?id=2474665933
        ["arccw_ak47"] = true,
        ["arccw_aug"] = true,
        ["arccw_augpara"] = true,
        ["arccw_awm"] = true,
        ["arccw_db"] = true,
        ["arccw_deagle357"] = true,
        ["arccw_deagle50"] = true,
        ["arccw_famas"] = true,
        ["arccw_fiveseven"] = true,
        ["arccw_g18"] = true,
        ["arccw_contender"] = true,
        ["arccw_g3a3"] = true,
        ["arccw_galil556"] = true,
        ["arccw_m1014"] = true,
        ["arccw_m107"] = true,
        ["arccw_minigun"] = true,
        ["arccw_m14"] = true,
        ["arccw_shorty"] = true,
        ["arccw_m4a1"] = true,
        ["arccw_m60"] = true,
        ["arccw_m9"] = true,
        ["arccw_mac11"] = true,
        ["arccw_makarov"] = true,
        ["arccw_minimi"] = true,
        ["arccw_ruger"] = true,
        ["arccw_mp5"] = true,
        ["arccw_tmp"] = true,
        ["arccw_p228"] = true,
        ["arccw_p90"] = true,
        ["arccw_bizon"] = true,
        ["arccw_ragingbull"] = true,
        ["arccw_rpg7"] = true,
        ["arccw_saiga"] = true,
        ["arccw_db_sawnoff"] = true,
        ["arccw_scout"] = true,
        ["arccw_sg550"] = true,
        ["arccw_sg552"] = true,
        ["arccw_ump45"] = true,
        ["arccw_ump9"] = true,
        ["arccw_usp"] = true,
        ["arccw_welrod"] = true,
        ["arccw_eap_aek"] = true,
        ["arccw_eap_brenten"] = true,
        ["arccw_eap_csls5"] = true,
        ["arccw_eap_fmg9"] = true,
        ["arccw_eap_groza"] = true,
        ["arccw_eap_lebedev"] = true,
        ["arccw_eap_spectre"] = true,
        ["arccw_eap_stg44"] = true,
        ["arccw_eap_usas"] = true,
        ["arccw_eap_vp70"] = true,
        ["arccw_eap_xm29"] = true,
        ["arccw_go_ace"] = true,
        ["arccw_go_ak47"] = true,
        ["arccw_go_ar15"] = true,
        ["arccw_go_aug"] = true,
        ["arccw_go_famas"] = true,
        ["arccw_go_m4"] = true,
        ["arccw_go_sg556"] = true,
        ["arccw_go_g3"] = true,
        ["arccw_go_scar"] = true,
        ["arccw_go_nade_incendiary"] = true,
        ["arccw_go_melee_knife"] = true,
        ["arccw_go_nade_frag"] = true,
        ["arccw_go_nade_flash"] = true,
        ["arccw_go_nade_smoke"] = true,
        ["arccw_go_nade_molotov"] = true,
        ["arccw_go_nade_knife"] = true,
        ["arccw_go_m249para"] = true,
        ["arccw_go_negev"] = true,
        ["arccw_go_taser"] = true,
        ["arccw_go_cz75"] = true,
        ["arccw_go_deagle"] = true,
        ["arccw_go_fiveseven"] = true,
        ["arccw_go_glock"] = true,
        ["arccw_go_m9"] = true,
        ["arccw_go_r8"] = true,
        ["arccw_go_p2000"] = true,
        ["arccw_go_p250"] = true,
        ["arccw_go_tec9"] = true,
        ["arccw_go_usp"] = true,
        ["arccw_go_m1014"] = true,
        ["arccw_go_mag7"] = true,
        ["arccw_go_870"] = true,
        ["arccw_go_nova"] = true,
        ["arccw_go_mac10"] = true,
        ["arccw_go_mp5"] = true,
        ["arccw_go_mp7"] = true,
        ["arccw_go_mp9"] = true,
        ["arccw_go_p90"] = true,
        ["arccw_go_bizon"] = true,
        ["arccw_go_ump"] = true,
        ["arccw_go_awp"] = true,
        ["arccw_go_ssg08"] = true,
        ["arccw_nade_claymore"] = true,
        ["arccw_melee_fists"] = true,
        ["arccw_nade_flash"] = true,
        ["arccw_nade_frag"] = true,
        ["arccw_nade_gas"] = true,
        ["arccw_nade_impact"] = true,
        ["arccw_nade_flare"] = true,
        ["arccw_melee_knife"] = true,
        ["arccw_nade_semtex"] = true,
        ["arccw_nade_smoke"] = true,
        ["arccw_nade_incendiary"] = true,
    }

    if IsValid(eWep) and weaponsClasses[eWep:GetClass()] then
        eWep:SetCollisionGroup(1)
    end
end

hook.Add("PlayerDroppedWeapon", "NGH_DROPPED_WEAPONS_COLLISION_CATCHER", Soboring)
hook.Add("PlayerSpawnedSWEP", "NGH_SPAWNMENU_WEAPONS_COLLISION_CATCHER", Soboring)