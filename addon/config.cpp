/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

class CfgPatches {
	class AnimatePAA {
        name="AnimatePAA";
        author="Connor";
        url="https://steamcommunity.com/id/_connor";

		requiredVersion=1.82;
		requiredAddons[]={};
		units[]={};
		weapons[]={};
	};
};

class CfgFunctions {
    #include "\AnimatePAA_ConnorAU\CfgFunctions.cpp"
};