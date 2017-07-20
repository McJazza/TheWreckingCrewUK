#define CURRENT_VEHICLE GENERIC_AMBULANCE_MOD
class UK3CB_BAF_LandRover_Amb_Green_A;
class TWC_Vehicle_Generic_LandRoverAmbulance_Woodland: UK3CB_BAF_LandRover_Amb_Green_A {
	scope = 2;
	side = 1;
	ADD_FACTION;
	
	displayname = "Land Rover - Ambulance (Woodland)";
	editorSubcategory = "TWC_ForceType_Motorised";

	class TransportItems {
		ADD_ITEM(ACE_fieldDressing, ADD_QNTY(25));
		ADD_ITEM(ACE_elasticBandage, ADD_QNTY(25));
		ADD_ITEM(ACE_quikclot, ADD_QNTY(25));
		ADD_ITEM(ACE_packingBandage, ADD_QNTY(25));
		ADD_ITEM(ACE_tourniquet, ADD_QNTY(10));
		ADD_ITEM(ACE_morphine, ADD_QNTY(15));
		ADD_ITEM(ACE_epinephrine, ADD_QNTY(15));
		
		ADD_ITEM(ACE_atropine, ADD_QNTY(5));
		ADD_ITEM(ACE_adenosine, ADD_QNTY(5));
		ADD_ITEM(ACE_salineIV_500, ADD_QNTY(12));
		ADD_ITEM(ACE_bodyBag, ADD_QNTY(5));
		ADD_ITEM(ACE_personalAidKit, 1); // always only one
	}; 
	
	class TransportMagazines { };
	class TransportWeapons { };
	class TransportBackpacks { };
};

class UK3CB_BAF_LandRover_Amb_Sand_A;
class TWC_Vehicle_Generic_LandRoverAmbulance_Desert: UK3CB_BAF_LandRover_Amb_Sand_A {
	scope = 2;
	side = 1;
	ADD_FACTION;
	
	displayname = "Land Rover - Ambulance (Desert)";
	editorSubcategory = "TWC_ForceType_Motorised";

	class TransportItems {
		ADD_ITEM(ACE_fieldDressing, ADD_QNTY(25));
		ADD_ITEM(ACE_elasticBandage, ADD_QNTY(25));
		ADD_ITEM(ACE_quikclot, ADD_QNTY(25));
		ADD_ITEM(ACE_packingBandage, ADD_QNTY(25));
		ADD_ITEM(ACE_tourniquet, ADD_QNTY(10));
		ADD_ITEM(ACE_morphine, ADD_QNTY(15));
		ADD_ITEM(ACE_epinephrine, ADD_QNTY(15));
		
		ADD_ITEM(ACE_atropine, ADD_QNTY(5));
		ADD_ITEM(ACE_adenosine, ADD_QNTY(5));
		ADD_ITEM(ACE_salineIV_500, ADD_QNTY(12));
		ADD_ITEM(ACE_bodyBag, ADD_QNTY(5));
		ADD_ITEM(ACE_personalAidKit, 1); // always only one
	}; 
	
	class TransportMagazines { };
	class TransportWeapons { };
	class TransportBackpacks { };
};

class UK3CB_BAF_LandRover_Amb_UN_A;
class TWC_Vehicle_Generic_LandRoverAmbulance_UN: UK3CB_BAF_LandRover_Amb_UN_A {
	scope = 2;
	side = 1;
	ADD_FACTION;
	
	displayname = "Land Rover - Ambulance (UN)";
	editorSubcategory = "TWC_ForceType_Motorised";

	class TransportItems {
		ADD_ITEM(ACE_fieldDressing, ADD_QNTY(25));
		ADD_ITEM(ACE_elasticBandage, ADD_QNTY(25));
		ADD_ITEM(ACE_quikclot, ADD_QNTY(25));
		ADD_ITEM(ACE_packingBandage, ADD_QNTY(25));
		ADD_ITEM(ACE_tourniquet, ADD_QNTY(10));
		ADD_ITEM(ACE_morphine, ADD_QNTY(15));
		ADD_ITEM(ACE_epinephrine, ADD_QNTY(15));
		
		ADD_ITEM(ACE_atropine, ADD_QNTY(5));
		ADD_ITEM(ACE_adenosine, ADD_QNTY(5));
		ADD_ITEM(ACE_salineIV_500, ADD_QNTY(12));
		ADD_ITEM(ACE_bodyBag, ADD_QNTY(5));
		ADD_ITEM(ACE_personalAidKit, 1); // always only one
	}; 
	
	class TransportMagazines { };
	class TransportWeapons { };
	class TransportBackpacks { };
};