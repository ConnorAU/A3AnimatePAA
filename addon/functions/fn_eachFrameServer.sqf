/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

#define THIS_FUNC FUNC(eachFrameServer)

#include "defines.inc"

#define VAR_UPDATE_TICK FUNC_SUBVAR(update_tick)

// remove deleted targets from the animation list
if (diag_tickTime > (GVAR(MNS,QUOTE(VAR_UPDATE_TICK),0))) then {
	VAR_UPDATE_TICK = diag_tickTime + 0.25;
	private _remove = [];
	{
		_x params ["_target"];
		private _deleted = switch true do {
			case (_target isEqualType objNull):{isNull _target};
			case (_target isEqualType ""):{!(_target in allMapMarkers)};
			default {true};
		};
		if _deleted then {_remove pushBack _x};
	} foreach VAR_ANIMATE_LIST_GLOBAL;

	// remove null objects and missing markers from the list
	{
		_x call FUNC(removeGlobal);
	} forEach _remove;
};