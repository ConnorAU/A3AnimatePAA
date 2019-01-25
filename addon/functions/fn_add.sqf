/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

#define THIS_FUNC FUNC(add)

#include "defines.inc"

if isDedicated exitWith {};

params [["_target","",[objNull,""]],["_class","",[""]]];
if (_target in [objNull,""] || _class == "") exitWith {};

private _config = switch true do {
	case (isClass(missionConfigFile >> "CfgAnimatePAA" >> _class)):{missionConfigFile >> "CfgAnimatePAA" >> _class};
	case (isClass(configFile >> "CfgAnimatePAA" >> _class)):{configFile >> "CfgAnimatePAA" >> _class};
	default {configNull};
};

// class doesnt exist
if (isNull _config) exitWith {};

// remove any existing animation for this target
[_target] call FUNC(remove);

private _type = ["object","marker"] select (_target isEqualType "");
VAR_ANIMATE_LIST_LOCAL pushBack [
	_type,_target,
	if (_type == "object") then {
		getArray(_config >> "layers")
	} else {
		getText(_config >> "type")
	},
	0,getNumber(_config >> "frames"),
	0,getNumber(_config >> "delay")
];