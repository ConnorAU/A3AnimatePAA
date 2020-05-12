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

params [["_target","",[objNull,"",controlNull]],["_class","",[""]]];
if (_target in [objNull,"",controlNull] || _class == "") exitWith {};

private _config = switch true do {
	case (isClass(missionConfigFile >> "CfgAnimatePAA" >> _class)):{missionConfigFile >> "CfgAnimatePAA" >> _class};
	case (isClass(configFile >> "CfgAnimatePAA" >> _class)):{configFile >> "CfgAnimatePAA" >> _class};
	default {configNull};
};

// class doesnt exist
if (isNull _config) exitWith {};

// remove any existing animation for this target
[_target] call FUNC(remove);

private _type = switch true do {
	case (_target isEqualType objNull):{"object"};
	case (_target isEqualType ""):{"marker"};
	case (_target isEqualType controlNull):{"control"};
	default {""};
};
VAR_ANIMATE_LIST_LOCAL pushBack [
	_type,_target,
	switch _type do {
		case "object":{getArray(_config >> "layers")};
		case "marker":{getText(_config >> "type")};
		case "control":{getText(_config >> "image")};
		default {""};
	},
	0,getNumber(_config >> "frames"),
	0,getNumber(_config >> "delay"),
	getNumber(_config >> "mode"),1
];