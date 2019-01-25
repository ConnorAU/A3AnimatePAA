/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

#define THIS_FUNC FUNC(addGlobal)

#include "defines.inc"

if !isServer exitWith {
	_this remoteExecCall [QUOTE(THIS_FUNC),2];
};

params [["_target","",[objNull,""]],["_class","",[""]]];
if (_target in [objNull,""] || _class == "") exitWith {};

private _reID = format["%1_reID_%2",QUOTE(THIS_FUNC),if (_target isEqualType objNull) then {netID _target} else {_target}];
VAR_ANIMATE_LIST_GLOBAL pushBackUnique [_target,_reID];

[_target,_class] remoteExecCall [QUOTE(FUNC(add)),[0,-2] select isDedicated,_reID];