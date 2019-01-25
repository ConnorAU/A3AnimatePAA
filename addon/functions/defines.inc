/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

// ~ Statics
#define MNS missionNameSpace

// ~ Variables
#define VAR_ANIMATE_LIST_GLOBAL CAU_animate_list_global
#define VAR_ANIMATE_LIST_LOCAL CAU_animate_list_local

// ~ Operations
#define QUOTE(a) #a
#define GVAR(a,b,c) a getVariable [b,c]

// ~ Functions
#define FUNC_PREFIX CAU_animate
#define FUNC(suffix) FUNC_PREFIX##_fnc_##suffix

#ifdef THIS_FUNC
    #define FUNC_SUBVAR(suffix) THIS_FUNC##_##suffix
#endif
