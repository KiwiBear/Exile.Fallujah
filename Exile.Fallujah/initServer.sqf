/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 17 Vehicles
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
["Land_Wreck_HMMWV_F", [6000.26, 4375.38, 7.83807], [0, 1, 0], [0, 0, 1], true]
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
