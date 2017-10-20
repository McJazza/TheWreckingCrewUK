/*
* Author: [TWC] Bosenator
* Adds object to all the existing curators.
* Handles mission start, by grouping entries and synchronising 10 seconds after start to lower net. traffic.
*
* Arguments:
* 0: CURATOR <LOGIC UNIT>
*
* Return Value:
* Success <BOOL>
*
* Public: No
*/
params ["_object"];

if (!isServer) exithWith {};

private _objectQueue = missionNamespace getVariable ["TWC_Zeus_ObjectQueue", []];
private _callStarted = missionNamespace getVariable ["TWC_Zeus_callStarted", false];

if (time < 10) then {
	_objectQueue pushBack _object;
	missionNamespace setVariable ["TWC_Zeus_ObjectQueue", _objectQueue];
	
	if (!_callStarted) then {
		missionNamespace setVariable ["TWC_Zeus_callStarted", true];
		[{ [] call TWC_fnc_clearObjectBacklog; }, [], 10] call CBA_fnc_waitAndExecute;
	};
} else {
	{
		_x addCuratorEditableObjects [_object, true];
	} forEach AllCurators;
};