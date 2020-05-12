/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

[object,"objectExample"] call CAU_animate_fnc_add;
["marker","markerExample"] call CAU_animate_fnc_add;

[] spawn {
	waitUntil {!isNull findDisplay 46};
	with uiNamespace do {
		if (!isNil "CAU_animate_demo_ctrl" && {!isNull CAU_animate_demo_ctrl}) then {ctrlDelete CAU_animate_demo_ctrl};
		CAU_animate_demo_ctrl = findDisplay 46 ctrlCreate ["ctrlStaticPicture",-1];
		CAU_animate_demo_ctrl ctrlSetPosition [safezoneX+0.05*safezonew,safezoneY + 0.25*safeZoneH,100*pixelW,100*pixelH];
		CAU_animate_demo_ctrl ctrlSetFade 1;
		CAU_animate_demo_ctrl ctrlCommit 0;
	};
	//[uiNamespace getVariable "CAU_animate_demo_ctrl","ctrlExample"] call CAU_animate_fnc_add;
	[ 
		uiNamespace getVariable ["CAU_animate_demo_ctrl",controlNull], 
		[ 
			"\a3\boat_f_destroyer\destroyer_01\data\destroyer_01_n_0%1_co.paa",
			[3,7],0.5,1 
		] 
	] call CAU_animate_fnc_add;
};

"CAU_ANIMATE" cutText ["This demo showcases the functionality of the AnimatePAA mod.<br/>Observe the SUV infront of you, the control on screen and the marker on the map.","BLACK FADED",0,true,true];
uisleep 8;
"CAU_ANIMATE" cutFadeOut 2;

with uiNamespace do {
	CAU_animate_demo_ctrl ctrlSetFade 0;
	CAU_animate_demo_ctrl ctrlCommit 2;
};