_givenNumber = (_this select 0) select 0;
_civilianQuestioned = (_this select 0) select 1;

if (_civilianQuestioned in nonQuestionableList) then {
	hintSilent "I've already told you what I know.";
}else{
	nonQuestionableList pushBack _civilianQuestioned;
	publicVariable "nonQuestionableList";

	if (_givenNumber == 0) then {
		switch (True) do {
			case (floor InsP_enemyMorale == -3):{hintSilent "I hope they kill you on your way there!"};
			case (floor InsP_enemyMorale == -2):{hintSilent "I'll mark a spot. Now LEAVE!"};
			case (floor InsP_enemyMorale == -1):{hintSilent "I'll mark the position on your map."};
			case (floor InsP_enemyMorale == 0):{hintSilent "Let me mark the position on your map."};
			case (floor InsP_enemyMorale == 1):{hintSilent "I think I know where they are. I'll mark the position on your map."};
			case (floor InsP_enemyMorale == 2):{hintSilent "I'll mark your map. Be careful."};
			case (floor InsP_enemyMorale >= 3):{hintSilent "I believe they are somewhere around here. Good luck."};
			default {hintSilent "For some reson this Civilian doesn't know the morale status. Please inform management of this bug."};
		};
		_color = "ColorOrange";
		_object = InsP_cacheGroup call BIS_fnc_selectRandom;
		_distance = [1500,1000,750,750,500,500,250] call BIS_fnc_selectRandom;

		_intelPos = [_object, _distance] call CBA_fnc_randPos;
		_marker = createMarker [format["%1%2", _object, (str _intelPos)], _intelPos];
		_marker setMarkerType "hd_join";
		_marker setMarkerColor _color;
		_marker setMarkerText (str(_distance) + "m");
		_marker setMarkerSize [0.5,0.5];
		[_marker, true] call CBA_fnc_setMarkerPersistent;

		switch (str _object) do {
			case (str (InsP_cacheGroup select 0)): {cacheAMarkers pushBack _marker; publicVariable "cacheAMarkers"};
			case (str (InsP_cacheGroup select 1)): {cacheBMarkers pushBack _marker; publicVariable "cacheBMarkers"};
			case (str (InsP_cacheGroup select 2)): {cacheCMarkers pushBack _marker; publicVariable "cacheCMarkers"};
			default {hint "Something went wrong";};
		};
	}else{
		switch (True) do {
			case (floor InsP_enemyMorale <= -3):{hintSilent "DEATH TO THE FOREIGN INVADERS!!"};
			case (floor InsP_enemyMorale == -2):{hintSilent "Even if I did happen to know something I wouldn't tell you."};
			case (floor InsP_enemyMorale == -1):{hintSilent "I can't help you."};
			case (floor InsP_enemyMorale == 0):{hintSilent "I don't know anything."};
			case (floor InsP_enemyMorale == 1):{hintSilent "Sorry, but I don't know anything."};
			case (floor InsP_enemyMorale == 2):{hintSilent "I wish I could help, but I don't know anything."};
			case (floor InsP_enemyMorale >= 3):{hintSilent "I really wish I could help you, but I don't know anything."};
			default {hintSilent "For some reson this Civilian doesn't know the morale status. Please inform management of this bug."};
		};
	};
};