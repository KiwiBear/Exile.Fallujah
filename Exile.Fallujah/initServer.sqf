/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 35 Vehicles
private _vehicles = [
["Exile_ConcreteMixer", [5976.93, 4350.54, 7.2], [0.0810115, -0.996713, 0], [0, 0, 1], true],
["Land_CinderBlocks_F", [5982.46, 4350.2, 7.19216], [-0.0864378, 0.996257, 0], [0, 0, 1], true],
["Land_CinderBlocks_F", [5981.25, 4350.09, 7.19216], [-0.0864378, 0.996257, 0], [0, 0, 1], true],
["Land_CinderBlocks_F", [5980.05, 4349.98, 7.19216], [-0.0864378, 0.996257, 0], [0, 0, 1], true],
["Land_CinderBlocks_F", [5978.86, 4349.88, 7.19216], [-0.0864378, 0.996257, 0], [0, 0, 1], true],
["Land_CinderBlocks_01_F", [5978.39, 4351.25, 8.05224], [0, 1, 0], [0, 0, 1], true],
["Land_Bucket_clean_F", [5975.75, 4349.57, 7.33837], [0, 1, 0], [0, 0, 1], true],
["Land_Bucket_clean_F", [5975.88, 4350.07, 7.31222], [0.124781, 0.175071, -0.976617], [0.566832, 0.795287, 0.214988], true],
["Land_Bucket_clean_F", [5975.37, 4349.62, 7.33837], [0, 1, 0], [0, 0, 1], true],
["Land_BarrelWater_F", [5974.66, 4349.74, 7.60475], [0, 1, 0], [0, 0, 1], true],
["Land_BarrelWater_F", [5974, 4350.07, 7.60475], [0, 1, 0], [0, 0, 1], true],
["Land_Wreck_BMP2_F", [5964.99, 4365.46, 8.04954], [-0.911102, -0.412181, 0], [0, 0, 1], true],
["Land_Wreck_UAZ_F", [5990.08, 4374.42, 7.84602], [0.0708926, -0.997484, 0], [0, 0, 1], true],
["Land_Wreck_Car_F", [5992.58, 4374.81, 7.72829], [0, 1, 0], [0, 0, 1], true],
["Land_Wreck_Skodovka_F", [5996.1, 4375.03, 7.58269], [0, 1, 0], [0, 0, 1], true],
["Land_Wreck_Skodovka_F", [6004.29, 4375.63, 7.58269], [0.417937, -0.908476, 0], [0, 0, 1], true],
["Land_Wreck_HMMWV_F", [6000.26, 4375.38, 7.83807], [0, 1, 0], [0, 0, 1], true],
["Land_SCF_01_storageBin_medium_F", [6021.2, 4359.98, 12.3822], [0.99999, 0.00448221, 0], [0, 0, 1], true],
["Land_Ind_TankBig", [6009.43, 4273.35, 11.6552], [0, 1, 0], [0, 0, 1], true],
["Land_Ind_TankBig", [5987.43, 4271.35, 11.6552], [0, 1, 0], [0, 0, 1], true],
["Land_Ind_TankBig", [5965.44, 4269.36, 11.6552], [0, 1, 0], [0, 0, 1], true],
["Misc_cargo_cont_net3", [5962.69, 4350.32, 8.53867], [-0.0552766, 0.998471, 0], [0, 0, 1], true],
["Misc_cargo_cont_net3", [5962.35, 4355.03, 8.53867], [-0.0552766, 0.998471, 0], [0, 0, 1], true],
["Land_Cargo20_military_green_F", [6005.76, 4371.57, 8.52431], [-0.0813755, 0.996684, 0], [0, 0, 1], true],
["Land_Cargo20_military_green_F", [6005.93, 4369.21, 8.52431], [-0.0813755, 0.996684, 0], [0, 0, 1], true],
["Land_Cargo20_military_green_F", [6005.97, 4363.77, 8.52431], [0.652355, 0.757913, 0], [0, 0, 1], true],
["Land_ContainerLine_01_F", [5968.21, 4329.47, 12.5652], [-0.0902376, 0.99592, 0], [0, 0, 1], true],
["Land_ContainerLine_02_F", [5969.65, 4313.56, 12.5159], [-0.0834569, 0.996511, 0], [0, 0, 1], true],
["Land_ContainerLine_03_F", [5970.98, 4298.77, 11.2885], [-0.0714996, 0.997441, 0], [0, 0, 1], true],
["Land_MobileCrane_01_F", [5930.46, 4313.1, 30.1542], [-0.0707258, 0.997496, 0], [0, 0, 1], true],
["TK_WarfareBContructionSite_Base_EP1", [5910.17, 4284.35, 16.4026], [-0.0375162, 0.999296, 0], [0, 0, 1], true],
["TK_WarfareBContructionSite_Base_EP1", [5907.08, 4284.23, 16.4026], [-0.0375162, 0.999296, 0], [0, 0, 1], true],
["Land_Cargo40_military_green_F", [5916.03, 4312.12, 29.9659], [0.946477, 0.322772, 0], [0, 0, 1], true],
["Land_Cargo40_military_green_F", [5902.99, 4289.26, 16.4631], [0.997323, 0.0731267, 0], [0, 0, 1], true],
["Exile_ConcreteMixer", [6959.44, 4562.9, 7.2], [0.883528, 0.468379, 0], [0, 0, 1], true]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
    
    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;

// 0 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [

];

{
    private _simpleObject = createSimpleObject [_x select 0, _x select 1];
    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];
    
    {
        if ((toLower _x) in _invisibleSelections) then 
        {
            _simpleObject hideSelection [_x, true];
        };
    }
    forEach (selectionNames _simpleObject);
}
forEach _simpleObjects;