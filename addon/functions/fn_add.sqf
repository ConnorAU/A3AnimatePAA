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

params [["_target","",[objNull,"",controlNull]],["_parameters","",["",[]]]];

// Define type index so we dont need to keep checking the type itself
private _typeIndex = [
	_target isEqualType objNull,
	_target isEqualType controlNull,
	_target isEqualType ""
] find true;

// Don't add animation if target doesn't exist
private _targetExists = switch _typeIndex do {
	case 0;
	case 1:{!isNull _target};
	case 2:{_target in allMapMarkers};
	default {false};
};
if !_targetExists exitWith {["Target does not exist: %1",_target] call BIS_fnc_error};

// If _parameters is a string, search for a config class and get parameters for re-execution
if (_parameters isEqualType "") exitWith {
	if (_parameters isEqualTo "") exitWith {["No animation class provide"] call BIS_fnc_error};
	private _config = switch true do {
		case (isClass(missionConfigFile >> "CfgAnimatePAA" >> _parameters)):{missionConfigFile >> "CfgAnimatePAA" >> _parameters};
		case (isClass(configFile >> "CfgAnimatePAA" >> _parameters)):{configFile >> "CfgAnimatePAA" >> _parameters};
		default {configNull};
	};
	if (isNull _config) exitWith {["Animation config class not found"] call BIS_fnc_error};
	[
		_target,
		[
			[_config >> "path"] call BIS_fnc_getCfgData,
			getArray(_config >> "frames"),
			getNumber(_config >> "interval"),
			getNumber(_config >> "mode")
		]
	] call THIS_FUNC;
};

// Validate parameters
private _goodParameters = _parameters params [
	["_path","",["",[]]],
	["_frames",[0,0],[[]],2],
	["_interval",0,[0]],
	["_mode",0,[0]]
];
if !_goodParameters exitWith {["Bad parameters: %1",_parameters] call BIS_fnc_error};
if (count _path == 0) exitWith {["Path parameter is empty"] call BIS_fnc_error};
if (_path isEqualType [] && {(_path findIf {!(_x isEqualType "")}) > -1}) exitWith {["Paths array contains invalid data type: %1",_path] call BIS_fnc_error};
if ((_frames findIf {!(_x isEqualType 0)}) > -1) exitWith {["Frames array contains invalid data type: %1",_frames] call BIS_fnc_error};
if (_frames#0 >= _frames#1) exitWith {["Invalid frames range: %1",_frames] call BIS_fnc_error};
if (_interval <= 0) exitWith {["Interval too short: %1",_interval] call BIS_fnc_error};
if !(_mode in [0,1,2]) exitWith {["Mode unknown: %1",_mode] call BIS_fnc_error};

// Remove existing animation from target
[_target] call FUNC(remove);

// Format _path type to string or array depending on what the task handler expects
private _path = switch _typeIndex do { 
	case 0:{if (_path isEqualType []) then {_path} else {[_path]}};
	case 1;
	case 2:{if (_path isEqualType "") then {_path} else {_path#0}};
};

// Add new animation
VAR_ANIMATE_LIST_LOCAL pushBack [_typeIndex,_target,_path,_frames#0,_frames#0,_frames#1,0,_interval,_mode,1];