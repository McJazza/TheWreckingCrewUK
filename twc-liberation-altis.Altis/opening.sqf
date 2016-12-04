// set side colors
private ["_colorWest", "_colorEast"];
_colorWest = WEST call BIS_fnc_sideColor;
_colorEast = EAST call BIS_fnc_sideColor;
// set transparency for colors
{_x set [3, 0.73]} forEach [_colorWest, _colorEast];
[
    markerPos "respawn_west", // Target position (replace MARKERNAME)
    "TWC Rebel", // SITREP text
    400,                    // 400m altitude
    200,                    // 200m radius
    0,                      // 0 degrees viewing angle
    1,                      // Clockwise movement
    [   // add Icon at player's position
     //   ["\a3\ui_f\data\map\markers\nato\b_inf.paa", _colorWest, getPos player, 1, 1, 0, "Alpha Squad", 0],
        // add Icon at enemy/target position
    //    ["\a3\ui_f\data\map\markers\nato\o_inf.paa", _colorEast, markerPos "MARKERNAME", 1, 1, 0, "Enemy Camp", 0]
    ]
] spawn BIS_fnc_establishingShot;