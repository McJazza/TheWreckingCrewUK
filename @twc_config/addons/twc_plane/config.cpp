class CfgPatches
{
	class unit_config
	{
		units[]=
		{
			"twc_c130"
		};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]=
		{
			"cup_airvehicles_c130j",
			"A3_Air_F",
			"A3_Weapons_F",
			"A3_Soft_F",
			"A3_data_F"
		};
	};
};
class Extended_PostInit_EventHandlers
{
	class TWC_Plane_Init
	{
		init="execVM '\twc_plane\init.sqf';";
	};
};
class CfgVehicles
{
	class CUP_B_C130J_GB;
	class twc_c5_hercules: CUP_B_C130J_GB
	{
		scope=2;
		side=1;
		faction="Veh_units";
		author="CUP";
		displayname="C5 Hercules";
		class TransportMagazines
		{
			
		};
		class TransportItems
		{
		
		};
		class TransportWeapons
		{
			
		};
	};
};