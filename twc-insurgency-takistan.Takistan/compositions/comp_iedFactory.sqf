/*Recommended Location Finding: 

_position = getMarkerPos "middleMarker";  
_radius = 2500;   
_options = "-trees -forest*10 +meadow +houses*5 hills";   
_result = selectBestPlaces [_position, _radius, _options, (_radius / 10) min 500, 100];   
_pos = _result select 0 select 0;
player setPos (_pos); 

*/

private ["_objs"];
_objs = [	
	["Land_Ground_sheet_folded_khaki_F",[-0.77002,7.34668,-0.004035],179.004,1,0,{}],
	["Land_Ground_sheet_folded_khaki_F",[-1.38818,7.47021,-0.00404215],199.797,1,0,{}],
	["Land_EngineCrane_01_F",[-7.67725,4.37549,1.43051e-005],135.789,1,0,{}],
	["Land_FireExtinguisher_F",[-7.82764,4.20996,0.142501],359.44,1,0,{}],
	["Land_WeldingTrolley_01_F",[1.92969,-8.70605,-0.0249834],359.987,1,0,{}],
	["Land_WoodPile_F",[1.99463,8.56543,0],359.304,1,0,{}],
	["Campfire_burning_F",[-0.338379,9.0752,0.0299988],0,1,0,{}],
	["Land_Ground_sheet_yellow_F",[-2.19775,9.27637,0],0,1,0,{}],
	["CUP_I_V3S_Covered_TKG",[9.6543,1.69971,0.0183244],0.000931672,1,0,{}],
	["Land_Pillow_old_F",[-2.21875,10.0303,-0.00348806],0.0799392,1,0,{}],
	["Land_Sleeping_bag_brown_folded_F",[-2.64063,9.9873,0],360,1,0,{}],
	["Box_IED_Exp_F",[-4.27783,-9.57959,-0.0503392],87.7077,1,0.0295612,{}],
	["Box_IED_Exp_F",[-4.2749,-9.59375,-0.0249405],87.6808,1,0.0879232,{}],
	["Box_IED_Exp_F",[-4.23438,-10.4004,-0.050108],87.6988,1,0.0890678,{}],
	["Box_IED_Exp_F",[-4.2417,-10.4097,-0.0249591],87.6913,1,0.198222,{}],
	["Land_Pliers_F",[1.45703,-11.5195,0.498611],0.111438,1,0,{}],
	["Land_ToolTrolley_01_F",[1.41309,-11.6987,-0.0249958],0.00615038,1,0,{}],
	["Land_Hammer_F",[1.36426,-11.7314,0.486068],0.448299,1,0,{}],
	["Land_Grinder_F",[1.43066,-11.7529,0.164133],0.206689,1,0,{}],
	["Land_WoodenBox_F",[9.94678,-6.42627,0.0838885],0.0127728,1,0,{}],
	["Land_TentDome_F",[2.73975,11.7417,0],305.824,1,0,{}],
	["Land_Wrench_F",[1.49023,-12.2012,0.170054],273.268,1,0,{}],
	["Land_TentDome_F",[-4.6416,11.687,0],219.545,1,0,{}],
	["Land_GasTank_01_blue_F",[-4.54688,-11.7573,3.71933e-005],359.987,1,0,{}],
	["Shed",[1.08691,-14.3149,0],273.457,1,0,{}],
	["Land_TentDome_F",[-0.80957,13.083,0],270.087,1,0,{}],
	["Land_FireExtinguisher_F",[11.2129,-6.31592,-0.0248613],359.837,1,0,{}],
	["ShedBig",[-11.6309,3.72607,0],0,1,0,{}],
	["Land_Ind_Garage01",[12.0679,-8.65527,0],89.9662,1,0,{}],
	["land_cwa_Crates",[9.54443,-10.0933,2.86102e-006],0,1,0,{}],
	["Fence_corrugated_plate",[1.37402,14.1851,0],179.024,1,0,{}],
	["Land_Wrench_F",[-13.8892,3.10498,0.195019],273.098,1,0,{}],
	["Fuel_can",[-4.64014,-13.4951,0],268.633,1,0,{}],
	["Land_Ind_TankSmall",[14.376,-0.392578,0],270.632,1,0.31014,{}],
	["Fuel_can",[-4.85889,-13.5254,0],268.633,1,0,{}],
	["Land_Grinder_F",[-13.9492,3.55371,0.18912],359.931,1,0,{}],
	["Fence_corrugated_plate",[-2.63184,14.2041,0],179.024,1,0,{}],
	["Land_ToolTrolley_01_F",[-13.9663,3.60742,2.86102e-006],0.00314559,1,0,{}],
	["Land_Pliers_F",[-13.9224,3.78662,0.523655],0.00760735,1,0,{}],
	["Land_Hammer_F",[-14.02,3.5791,0.511073],359.882,1,0,{}],
	["Land_MobilePhone_smart_F",[-0.0991211,-14.6196,0],359.988,1,0,{}],
	["Land_File_F",[-0.43457,-14.6987,-0.00811005],359.533,1,0,{}],
	["rhs_casing_122mm",[-0.979004,-14.6816,-0.0418854],4.3711,1,0.101443,{}],
	["rhs_casing_122mm",[-0.728516,-14.6978,0.379042],4.32048,1,0.107057,{}],
	["Land_SatelliteAntenna_01_F",[11.8516,-8.8208,0.00245953],0.00849271,1,0,{}],
	["Land_MetalWire_F",[-2.20898,-14.6689,-0.000106812],0,1,0,{}],
	["FlexibleTank_01_forest_F",[13.4023,-6.40088,-0.0249476],359.95,1,0.0576722,{}],
	["rhs_magazine_rhsusf_m112x4_mag",[0.078125,-14.8887,0.450491],0,1,0,{}],
	["rhs_casing_122mm",[1.73389,-14.7905,0.793635],0.00739244,1,0.186786,{}],
	["Land_MetalWire_F",[0.703125,-14.9888,-4.76837e-007],0,1,0,{}],
	["Land_Pliers_F",[-3.34619,-14.6587,0.387672],359.988,1,0,{}],
	["WaterPump_01_sand_F",[-14.3423,-4.60254,0.000853539],359.995,1,0,{}],
	["CUP_ammobednaX",[-1.39111,-15.0034,0],0,1,0,{}],
	["Land_WoodenTable_large_F",[-1.42139,-15.0015,-0.413949],274.204,1,0,{}],
	["Land_MobilePhone_old_F",[-0.45459,-15.0728,-4.76837e-007],351.397,1,0,{}],
	["CUP_ammobednaX",[0.721191,-15.0962,0],0,1,0,{}],
	["Land_WoodenTable_large_F",[0.800293,-15.1104,-0.4141],274.182,1,0,{}],
	["Land_CarBattery_01_F",[-2.14307,-14.9888,-0.0505514],0.459923,1,0,{}],
	["Land_DrillAku_F",[-4.10107,-14.6069,0.266984],348.259,1,0,{}],
	["Fence_corrugated_plate",[5.39844,14.2148,0],179.024,1,0,{}],
	["CUP_ammobednaX",[-3.5791,-14.811,0],0,1,0,{}],
	["Land_WoodenTable_large_F",[-3.58447,-14.833,-0.0250068],275.005,1,0,{}],
	["Land_Rope_01_F",[-1.79785,-15.1582,0.399865],359.757,1,0,{}],
	["Land_FireExtinguisher_F",[2.0625,-15.1958,-0.0249653],0.0208869,1,0,{}],
	["SatPhone",[-3.09424,-15.0464,0.0250058],182.661,1,0,{}],
	["Land_MetalWire_F",[1.23779,-15.3701,-4.76837e-007],0,1,0,{}],
	["Land_DuctTape_F",[0.685059,-15.4077,0.400504],359.516,1,0,{}],
	["rhs_magazine_rhs_100Rnd_762x54mmR_green",[0.0708008,-15.4316,0.450491],0,1,0,{}],
	["FlexibleTank_01_forest_F",[14.0688,-6.39893,-0.024961],359.948,1,0.0576751,{}],
	["rhs_magazine_rhs_100Rnd_762x54mmR",[0.901855,-15.4321,0.450491],0,1,0,{}],
	["rhs_weap_9m113_used",[-1.1123,-15.4326,0.814213],272.378,1,0.165212,{}],
	["Land_WoodenBox_F",[11.2485,-10.6616,0.0810027],0.00159545,1,0,{}],
	["Land_PortableLongRangeRadio_F",[1.68164,-15.4937,-0.0250001],0.0061529,1,0,{}],
	["Fence_corrugated_plate",[-6.58301,14.2002,0],179.024,1,0,{}],
	["Land_Razorwire_F",[1.72656,15.3379,-2.38419e-006],0,1,0,{}],
	["Land_Razorwire_F",[-5.77637,15.2754,-2.38419e-006],0,1,0,{}],
	["cwa_Cardboard_Angelina",[10.7856,-11.5928,0],0,1,0,{}],
	["ACE_ConcertinaWireCoil",[2.61963,-15.7349,-0.020669],161.485,1,0,{}],
	["FlexibleTank_01_forest_F",[14.7959,-6.38037,-0.024961],359.947,1,0.0579902,{}],
	["Land_ToiletBox_F",[14.7905,6.66602,1.95503e-005],92.3671,1,0,{}],
	["Fence_corrugated_plate",[-16.5425,-0.0175781,0],89.593,1,0,{}],
	["Fuel_can",[12.728,-10.5845,8.96454e-005],268.633,1,0,{}],
	["Fuel_can",[12.9204,-10.5908,8.96454e-005],268.633,1,0,{}],
	["Land_CampingTable_small_F",[12.001,-11.6729,-7.15256e-006],0.00143706,1,0,{}],
	["Land_GasTank_02_F",[15.1758,-7.27051,-0.0247893],359.979,1,0,{}],
	["Fuel_can",[13.0991,-10.5669,8.96454e-005],268.633,1,0,{}],
	["Fence_corrugated_plate",[-16.4834,-4.0083,0],89.593,1,0,{}],
	["Fuel_can",[13.2876,-10.5439,8.91685e-005],268.633,1,0,{}],
	["Land_GasTank_02_F",[15.1523,-7.68408,-0.0247846],0.0351015,1,0,{}],
	["Fence_corrugated_plate",[-16.6157,4.0874,0],89.593,1,0,{}],
	["Land_GasTank_02_F",[15.1069,-8.03418,-0.024786],0.00590052,1,0,{}],
	["Land_tires_EP1",[0.825195,17.165,0],0,1,0,{}],
	["Fence_corrugated_plate",[17.4272,0.410645,0],269.968,1,0,{}],
	["Fence_corrugated_plate",[-0.395508,-17.5449,0],0,1,0,{}],
	["Land_Net_Fence_Gate_F",[15.4248,14.2476,0],0,1,0,{}],
	["Fence_corrugated_plate",[-10.6187,14.2026,0],179.024,1,0,{}],
	["Fence_corrugated_plate",[17.3999,-3.57227,0],269.968,1,0.00583,{}],
	["Fence_corrugated_plate",[3.60156,-17.5454,0],0,1,0,{}],
	["Fence_corrugated_plate",[17.4048,4.41748,0],269.968,1,0,{}],
	["Fence_corrugated_plate",[-4.36328,-17.5337,0],0,1,0,{}],
	["Fence_corrugated_plate",[-16.5229,-7.96387,0],89.593,1,0,{}],
	["Land_BagFenceLong",[1.68115,18.271,-0.000999928],100.332,1,0,{}],
	["Fence_corrugated_plate",[-16.627,8.09521,0],89.593,1,0,{}],
	["CUP_I_DSHKM_TK_GUE",[3.72412,18.48,-0.0665398],357.814,1,0,{}],
	["Land_tires_EP1",[1.07959,18.832,0],0,1,0,{}],
	["Fence_corrugated_plate",[17.4116,-7.5791,0],269.968,1,0,{}],
	["Fence_corrugated_plate",[7.60547,-17.5186,0],0,1,0,{}],
	["Fence_corrugated_plate",[17.3511,8.40234,0],269.968,1,0,{}],
	["Land_Razorwire_F",[-14.0361,14.9912,-2.38419e-006],0,1,0,{}],
	["Camera1",[11.3828,-15.7456,0],180.902,1,0,{}],
	["Land_Razorwire_F",[4.18066,-18.9043,-2.38419e-006],0,1,0,{}],
	["Land_DieselGroundPowerUnit_01_F",[15.4282,-12.5469,-0.00125694],89.6598,1,0.0400085,{}],
	["Land_Net_Fence_Gate_F",[-4.4248,-17.52,0],0,1,0,{}],
	["FenceWoodPalet",[-15.2207,13.4551,0],267.346,1,0,{}],
	["Fence_corrugated_plate",[-14.5479,14.187,0],179.024,1,0,{}],
	["Fence_corrugated_plate",[-16.5078,-11.9326,0],89.593,1,0,{}],
	["Land_BagFenceRound",[3.24463,20.5884,-0.00130129],174.287,1,0,{}],
	["Fence_corrugated_plate",[-16.6855,12.1167,0],89.8185,1,0,{}],
	["FenceWoodPalet",[15.8057,13.6626,0],267.346,1,0,{}],
	["Land_BagFenceLong",[6.0835,19.9346,-0.000999928],356.493,1,0,{}],
	["Land_tires_EP1",[2.01807,20.7837,0],0,1,0,{}],
	["Fence_corrugated_plate",[17.4551,-11.5674,0],269.968,1,0,{}],
	["Fence_corrugated_plate",[11.5679,-17.5547,0],0,1,0,{}],
	["Fence_corrugated_plate",[15.4326,14.3276,0],179.024,1,0,{}],
	["Fence_corrugated_plate",[17.4141,12.354,0],269.968,1,0,{}],
	["Land_tires_EP1",[5.46777,20.6362,0],0,1,0,{}],
	["Land_tires_EP1",[3.87012,21.2129,0],0,1,0,{}],
	["Land_tires_EP1",[7.04053,20.7197,0],0,1,0,{}],
	["FenceWoodPalet",[-15.1543,-16.8906,0],89.7346,1,0,{}],
	["Fence_corrugated_plate",[-16.4985,-15.6211,0],89.593,1,0,{}],
	["Fence_corrugated_plate",[-14.5088,-17.5586,0],359.457,1,0,{}],
	["Land_Razorwire_F",[0.933594,-21.1792,-2.38419e-006],104.122,1,0,{}],
	["FenceWoodPalet",[16.0728,-16.8491,0],89.0299,1,0,{}],
	["Land_BagFenceLong",[-0.688477,-23.0938,-0.000999928],286.045,1,0,{}],
	["CUP_I_DSHKM_TK_GUE",[-2.74219,-23.0986,-0.0665493],183.508,1,0,{}],
	["Fence_corrugated_plate",[17.4189,-15.5264,0],269.968,1,0,{}],
	["Fence_corrugated_plate",[15.522,-17.5557,0],0,1,0,{}],
	["Land_Razorwire_F",[12.2241,-18.8003,-2.38419e-006],0,1,0,{}],
	["Land_jezekbeton",[6.54541,23.4507,0],0,1,0,{}],
	["Land_BagFenceLong",[-5.23438,-24.3101,-0.000999928],182.206,1,0,{}],
	["Land_BagFenceRound",[-2.47461,-25.2437,-0.00130129],0,1,0,{}],
	["Land_Razorwire_F",[16.9077,20.7046,-2.38419e-006],89.2517,1,0,{}],
	["land_cwa_tires",[-4.60352,-25.0732,0],0,1,0,{}],
	["Land_tires_EP1",[-1.67188,-25.6431,0],0,1,0,{}],
	["land_cwa_tires",[-6.33057,-25.2002,0],0,1,0,{}],
	["land_cwa_tires",[-2.90381,-25.9771,0],0,1,0,{}],
	["Land_Razorwire_F",[-14.1577,-23.6421,-2.38419e-006],253.016,1,0,{}],
	["Land_jezekbeton",[-5.42285,-26.7583,0],0,1,0,{}],
	["Land_jezekbeton",[0.447754,29.2583,0],0,1,0,{}],
	["Sign_DangerMines_ACR",[-0.0180664,30.4492,0],175.059,1,0,{}],
	["Land_jezekbeton",[14.6323,27.2646,0],0,1,0,{}],
	["Land_jezekbeton",[-15.6299,-29.2163,0],0,1,0,{}],
	["Land_jezekbeton",[1.01416,-33.3115,0],0,1,0,{}],
	["Land_jezekbeton",[12.4341,31.4653,0],0,1,0,{}],
	["Sign_DangerMines_ACR",[2.36328,-34.2583,0],319.608,1,0,{}],
	["Sign_DangerMines_ACR",[11.875,33.4844,0],175.059,1,0,{}],
	["Land_jezekbeton",[-13.0918,-33.3276,0],0,1,0,{}],
	["Land_jezekbeton",[-9.38037,-36.8901,0],0,1,0,{}],
	["Land_jezekbeton",[-5.52002,-41.0435,0],0,1,0,{}],
	["Sign_DangerMines_ACR",[-12.4263,-39.7056,0],1.94586,1,0,{}]
];
_objs;