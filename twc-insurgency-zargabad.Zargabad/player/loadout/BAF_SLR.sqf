waitUntil {!isNull _unit};       //to prevent MP / JIP issues

_unit = _this select 0;
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "BAF_Soldier_Base_L_M_Uniform_DG1";
_unit addVest "BAF_Soldier_Officer_Vest_M_DG1";
_unit addBackpack "tf_rt1523g_big_rhs";
_unit addHeadgear "BAF_Soldier_Engineer_Headgear_M_DG1";

comment "Add weapons";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152";
_unit linkItem "rhsusf_ANPVS_14";

comment "Set identity";
_unit setFace "GreekHead_A3_07";
_unit setSpeaker "Male06ENG";
if(true) exitWith{};