class CfgFunctions
{
	class TWC
	{
		class Functions
		{
			file="twc_framework\functions";
			class AirAssault {};
			class Artillery{};
			class AttackHelicopter{};
			class AttackPlane {};
			class CommandMessage{};
			class createMarker{};
			class CreateTask{};
			class daisyCutter{};
			class Defend {};
			class IEDpopulate{};
			class intelHint{};
			class LightsSwitch{};
			class Patrol {};
			class patrolMarkers{};
			class patrolRoads{};
			class placedIED{};
			class putWeaponOnBack{};
			class reconnected{};
			class Retreat{};
			class spawnGroup{};
			class spawnIed{};
			class stationaryUnits{};
			class UpdateTask{};
			class virtualMortar{};
		};
		class Modules
		{
			file="twc_framework\modules";
			class era{};
			class rollShirt{};
			class boatSafety{};
			class civilianEquipment{};
			class deadBodies{};
			class forwardBase{};
			class missionModuleInit{};
			class nightGear{};
			class run{};
			class saveGear{};
			class safeZone{};
			class stats{};
			class zeus{};
		};
		class medical
		{
			file="twc_framework\medical";
			class itemCheck {};
			class useSyrette {};
		};
		class cache
		{
			file="twc_framework\cache";
			class aiCaching {};
			class cacheGroup {};
			class cacheModuleInit {};
			class cacheVehicle {};
			class initAICache {};
			class initVehicleCache {};
			class unCacheGroup {};
			class unCacheVehicle {};
			class vehicleCaching {};
		};
		class headlessClient
		{
			file="twc_framework\headlessClient";
			class handleSpawn {};
			class hcModuleInit {};
			class rebalance {};
			class transferGroups {};
		};
		class curator
		{
			file="twc_framework\curator";
			class healPlayer {};
			class killPlayer {};
			class setSpectator {};
		};

	};
};