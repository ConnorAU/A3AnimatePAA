/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

#define THIS_FUNC FUNC(removeGlobal)

#include "defines.inc"

if !isServer exitWith {
	_this remoteExecCall [QUOTE(THIS_FUNC),2];
};

params [["_target","",[objNull,""]],["_reID","",[""]]];

// deleted objects will be null so dont exit for that
if (_target in [""]) exitWith {};

private _index = VAR_ANIMATE_LIST_GLOBAL findIf {_x#0 isEqualTo _target};
if (_index > -1) then {
	if (_reID == "") then {
		_reID = VAR_ANIMATE_LIST_GLOBAL#_index#1;
	};

	VAR_ANIMATE_LIST_GLOBAL deleteAt _index;
	remoteExec ["",_reID];	
};

[_target] remoteExecCall [QUOTE(FUNC(remove)),[0,-2] select isDedicated];