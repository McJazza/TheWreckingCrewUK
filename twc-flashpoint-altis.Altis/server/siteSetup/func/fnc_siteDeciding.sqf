params["_marker"];

{
	deleteVehicle _x
}forEach allDead;

_men = nearestObjects [getMarkerPos _marker, ["Man"], 1000];


if(side (_men select 0) == WEST) exitWith{
	[_marker] call twc_siteCapturedBlufor;
};

if(str _men == "[]")exitWith{
	hint "All Units Killed Or only Vehicles Remain. Reverting to Blufor Controll";
	[_marker] call twc_siteCapturedBlufor;
};


if(side (_men select 0) == EAST) exitWith{
	{
		if(side _x == WEST)exitWith {
			[_marker] call twc_siteCapturedBlufor;
		};
	}forEach _men;
	[_marker] call twc_siteCapturedRedfor;
};

if(side (_men select 0) != EAST && side (_men select 0) != WEST) then {
	hint "Neither Blu nor Red were closest. Only possible for Independents or TeamKillers.";
	[_marker] call twc_siteCapturedBlufor;
}else{
	hint "Site Deciding Function has failed";
};