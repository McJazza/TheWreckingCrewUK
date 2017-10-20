/*
* Author: [TWC] Bosenator
* Adds the entire objectQueue to all existing curator modules.
*
* Arguments:
* NONE
*
* Return Value:
* NONE
*
* Public: No
*/
private _objectQueue = missionNamespace getVariable ["TWC_Zeus_ObjectQueue", []];

{
	_x addCuratorEditableObjects [_objectQueue, true];
} forEach AllCurators;

missionNamespace setVariable ["TWC_Zeus_ObjectQueue", nil]; // garbage collector