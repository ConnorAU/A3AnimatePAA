/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

#define THIS_FUNC FUNC(init)

#include "defines.inc"

if isServer then {
	VAR_ANIMATE_LIST_GLOBAL = [];
	addMissionEventHandler["EachFrame",{call FUNC(eachFrameServer)}];
};

if !isDedicated then {
	VAR_ANIMATE_LIST_LOCAL = [];
	addMissionEventHandler["EachFrame",{call FUNC(eachFrameClient)}];
};