/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

#define THIS_FUNC FUNC(remove)

#include "defines.inc"

if isDedicated exitWith {};

params [["_target","",[objNull,""]]];

// deleted objects will be null so dont exit for that
if (_target in [""]) exitWith {};

private _index = VAR_ANIMATE_LIST_LOCAL findIf {_x#1 isEqualTo _target};
if (_index > -1) then {
	VAR_ANIMATE_LIST_LOCAL deleteAt _index;
};