/*
*   AO Funtion for Flashpoint for use only on TWC by Jayman
*
*   Parameters
*
*   0 - Marker that is named with the name of the town it is placed over
*
*
*  returns
*
*  fuck all expect for one AO
*
*/

hint"Radar Garrison Spawned";
params["_marker"];

_CentralMarker = format ["%1",_marker];

//units
_squad = (configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Infantry" >> "CUP_O_SLA_InfantrySquad");
_ATteam = (configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Infantry" >> "CUP_O_SLA_InfantrySectionAT");
_AAteam = (configfile >> "CfgGroups" >> "East" >> "CUP_O_SLA" >> "Infantry" >> "CUP_O_SLA_InfantrySectionAA");
_radar = "Land_Radar_Small_F";

[_CentralMarker, _squad]spawn{
	if isServer then {
		private ["_pos","_m"];
		sleep 5;
		_pos = [getmarkerpos (_this select 0),[0,25],random 360,0] call SHK_pos;
		_PatrolSquad = [_pos, EAST, (_this select 1)] call BIS_fnc_spawnGroup;
		[_PatrolSquad, getmarkerpos (_this select 0), 100] call CBA_fnc_taskPatrol;
	};
};

[_CentralMarker, _ATteam]spawn{
	if isServer then {
		private ["_pos","_m"];
		sleep 3;
		_pos = [getmarkerpos (_this select 0),[0,25],random 360,0] call SHK_pos;
		_DefendAT = [_pos, EAST, (_this select 1)] call BIS_fnc_spawnGroup;
		[_DefendAT, getmarkerpos (_this select 0), 50] call CBA_fnc_taskDefend;
	};
};

if isServer then {
		private ["_pos","_m"];
		_pos = [getmarkerpos _CentralMarker,[0,25],random 360,0] call SHK_pos;
		_DefendAA = [_pos, EAST, _AAteam] call BIS_fnc_spawnGroup;
		[_DefendAA, getmarkerpos _CentralMarker, 50] call CBA_fnc_taskDefend;
	};
/*
if isServer then {
		private ["_m"];
		
		_radarstation = _radar createVehicle getmarkerpos _CentralMarker;
	};
*/