/*
        Different Ammobox v 1.0
        by Demonized.

        1: place a marker named DMZ_DA anywhere you want the players to see their ammobox, all will see their box in same position.
        2: place this in init line of any unit.
                _null = this execVM "DMZ_DA.sqf";
        3: save this script as DMZ_DA.sqf and place it in your mission folder.

        For more classnames on ammoboxes or weapons and magazines go here:
                http://forums.bistudio.com/showthread.php?t=73241&page=2
				edited by FakeMatty
*/

_marker = "cratehelo";  // marker used to spawn.
_boxType = "I_supplyCrate_F";  // the type of ammobox used.
_timer = 240;  // time in seconds until box is refilled.
 
_weapons = [];
_magazines = [["SmokeShell",5], ["SmokeShellYellow",5], ["SmokeShellRed",5], ["SmokeShellGreen",5], ["SmokeShellPurple",5], ["SmokeShellBlue",5], ["SmokeShellOrange",5], ["HandGrenade",5], ["Chemlight_green",5], ["Chemlight_yellow",5], ["Chemlight_red",5], ["Chemlight_blue",5]];
_items = [["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_Flashlight_XL50", 1],["ACE_IR_Strobe_Item",1],["ACE_HandFlare_White",5],["ACE_HandFlare_Green",5],["ACE_CableTie",2]];

_tmp_weapons = [];
_tmp_magazines = [];
_tmp_items = [];

//load availible to pilots only
 if (g_class == "PLT") then {
       _tmp_weapons =
        [

			["CUP_hgun_Colt1911",1]

		];

        _tmp_magazines =
        [

             ["CUP_7Rnd_45ACP_1911",15]
        ];

		_tmp_items =
		[
			 ["ACE_DAGR",1],
             ["ACE_MapTools",1],
             ["ACE_fieldDressing",20],
             ["ACE_morphine",10],
			 ["ACRE_PRC148",1]
		];
};
 if (g_class == "ARMOUR") then {
       _tmp_weapons =
        [

			["CUP_arifle_M4A1_desert",1]

		];

        _tmp_magazines =
        [

             ["30Rnd_556x45_Stanag",15],
			 ["30Rnd_556x45_Stanag_Tracer_Red",5]
        ];

		_tmp_items =
		[
			 ["CUP_optic_CompM2_Desert",1],
			 ["CUP_acc_ANPEQ_15",1],
             ["ACE_MapTools",1],
             ["ACE_fieldDressing",20],
             ["ACE_morphine",10],
			 ["ACRE_PRC148",1]
		];
};
 if (g_class == "ARMOURCREW") then {
       _tmp_weapons =
        [

			["CUP_arifle_M4A1_desert",1]

		];

        _tmp_magazines =
        [

             ["30Rnd_556x45_Stanag",15]
        ];

		_tmp_items =
		[

			 ["CUP_optic_CompM2_Desert",1],

             ["ACE_MapTools",1],
             ["ACE_fieldDressing",20],
             ["ACE_morphine",10],
			 ["ACRE_PRC148",1]
		];
};
{
        _weapons set [count _weapons, _x];
} forEach _tmp_weapons;

{
        _magazines set [count _magazines, _x];
} forEach _tmp_magazines;

{
        _items set [count _items, _x];
} forEach _tmp_items;


// create and fill the box.
_box = _boxType createVehicleLocal (getMarkerPos _marker);
_box setPosATL (getMarkerPos _marker);
_box allowDamage false;
while {true} do {
        refill_box = false;
        // empty it.
        clearWeaponCargo _box;
        clearMagazineCargo _box;
        clearItemCargo _box;
		clearbackPackCargo _box;

        // add in all weapons.
        {_box addWeaponCargo [(_x select 0),(_x select 1)]} foreach _weapons;

        // add in all magazines.
        {_box addMagazineCargo [(_x select 0),(_x select 1)]} foreach _magazines;

        {_box addItemCargo [(_x select 0),(_x select 1)]} foreach _items;



        // wait x amount of seconds then refill box.
        sleep _timer;
};