/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

#define THIS_FUNC FUNC(eachFrameClient)

#include "defines.inc"

private _remove = [];
{
	_x params ["_type","_target","_path","_iteration","_maxIteration","_tick","_delay","_mode","_increment"];
	if (diag_tickTime >= _tick) then {
		switch _type do {
			case "object":{
				if (isNull _target) then {
					_remove pushBack _target;
				} else {
					{
						if (_x != "") then {
							_target setObjectTexture [_forEachIndex,format[_x,_iteration]];
						};
					} foreach _path;
				};
			};
			case "marker":{
				if (_target in allMapMarkers) then {
					_target setMarkerTypeLocal format[_path,_iteration];
				} else {
					_remove pushBack _target;
				};
			};
			case "control":{
				if (isNull _target) then {
					_remove pushBack _target;
				} else {
					_target ctrlSetText format[_path,_iteration];
				};
			};
		};

		_iteration = _iteration + _increment;
		switch _mode do {
			// normal loop, return to frame 0
			case 0:{
				if (_iteration >= _maxIteration) then {_iteration = 0};
			};
			// smoothly play from start to end to start
			case 1:{
				switch true do {
					case (_iteration >= _maxIteration):{
						_iteration = _maxIteration - 2;
						_increment = -1;
					};
					case (_iteration < 0):{
						_iteration = 1;
						_increment = 1;
					};
				};			
				_x set [8,_increment];
			};
			// remove task on final frame
			case 2:{
				if (_iteration >= _maxIteration) then {
					_remove pushBack _target;
				};
			};
		};

		_x set [3,_iteration];
		_x set [5,diag_tickTime + _delay];
	};
} foreach VAR_ANIMATE_LIST_LOCAL;

// remove null objects from the list
{
	[_x] call FUNC(remove);
} foreach _remove;