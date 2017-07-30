/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 31 NPCs
private _npcs = [
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "WhiteHead_07", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [8178.46, 7298.91, 13.4555], [-0.999567, 0.0294195, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "WhiteHead_01", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [8173.28, 7283.13, 12.9479], [-0.600876, 0.799342, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_14", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [8151.05, 7265.14, 26.8897], [0.195498, 0.980704, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_16", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [8142.38, 7322.5, 12.7754], [-0.310869, -0.950453, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_02", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [8146.49, 7322.38, 12.9025], [-0.301312, -0.953525, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "WhiteHead_21", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [8140.12, 7313.96, 12.4337], [-0.998028, -0.0627639, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_10", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [8171.27, 7328.91, 14.3303], [0.509471, 0.860488, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "WhiteHead_06", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Tactical_Clear",[],["","","","","",""]], [6537.09, 1633.5, 6.99853], [0.811954, -0.583721, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "WhiteHead_08", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Black",[],["","","","","",""]], [6539.27, 1636.24, 7.00071], [0.79013, -0.612939, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_21", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","",[],["","","","","",""]], [6563.53, 1665.95, 7.00144], [0.217331, -0.976098, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "GreekHead_A3_07", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [6569.45, 1664.84, 7.00144], [-0.310869, -0.950453, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "AfricanHead_01", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]], [6573.56, 1664.72, 7.00144], [-0.301312, -0.953525, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "WhiteHead_07", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [6577.13, 1656.22, 7.00144], [-0.998028, -0.0627639, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_04", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [6576.02, 1661.41, 7.00144], [-0.866542, -0.499104, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "WhiteHead_03", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [931.748, 6347.55, 6.99145], [0.811954, -0.583721, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "WhiteHead_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [933.927, 6350.29, 6.99145], [0.79013, -0.612939, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_15", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","",[],["","","","","",""]], [958.187, 6380, 6.99147], [0.217331, -0.976098, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_18", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [964.102, 6378.89, 6.99145], [-0.310869, -0.950453, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_15", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]], [968.216, 6378.77, 6.99147], [-0.301312, -0.953525, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "GreekHead_A3_05", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [971.78, 6370.27, 6.99145], [-0.998028, -0.0627639, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "GreekHead_A3_07", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [970.675, 6375.46, 6.99145], [-0.866542, -0.499104, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "AfricanHead_03", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [5738.15, 5689.73, 7.00144], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_RussianRoulette", [], "Exile_Trader_RussianRoulette", "AfricanHead_01", [[],[],["hgun_Pistol_Signal_F","","","",[],[],""],["U_Marshal",[]],["V_Rangemaster_belt",[]],[],"H_Cap_marshal","G_Sport_Blackyellow",[],["","","","","",""]], [5746.78, 5684.75, 7.00144], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Boat", [], "Exile_Trader_Boat", "WhiteHead_18", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Aviator",[],["","","","","",""]], [766.374, 3245.24, 6.99145], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", [], "Exile_Trader_BoatCustoms", "WhiteHead_08", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [771.062, 3250.82, 6.44206], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Diving", [], "Exile_Trader_Diving", "WhiteHead_05", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [768.896, 3246.43, 6.99145], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Boat", [], "Exile_Trader_Boat", "WhiteHead_14", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","",[],["","","","","",""]], [3571.79, 732.184, 6.99145], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", [], "Exile_Trader_BoatCustoms", "WhiteHead_10", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [3576.48, 737.76, 6.99149], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Diving", [], "Exile_Trader_Diving", "GreekHead_A3_05", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [3574.31, 733.374, 6.99145], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", [], "Exile_Trader_AircraftCustoms", "AfricanHead_02", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Combat",[],["","","","","",""]], [10035.3, 477.571, 7.00144], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "WhiteHead_08", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","",[],["","","","","",""]], [10042.1, 478.441, 7.00144], [0, 1, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;