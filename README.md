# A3AnimatePAA
Transform your vehicle skins and marker icons from static images to GIF-like animations in Arma 3.

# Download
- [Steam workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=1634591219)
- [Github Releases](https://github.com/ConnorAU/A3AnimatePAA/releases)

# Setup
This mod is designed to work as an enabled mod & pack within a mission file.
- [Mod setup](https://github.com/ConnorAU/A3AnimatePAA/blob/master/addon/setup-mod.md)
- [Mission setup](https://github.com/ConnorAU/A3AnimatePAA/blob/master/addon/functions/setup-mission.md)
- [Demo Setup](https://github.com/ConnorAU/A3AnimatePAA/blob/master/demo/setup-demo.md)

This mod comes with a playable demo which can be found on the [releases](https://github.com/ConnorAU/A3AnimatePAA/releases) page.  
Video demonstration: https://www.youtube.com/watch?v=aNkuvgqeHVQ

# Functions

## [CAU_animate_fnc_add](https://github.com/ConnorAU/A3AnimatePAA/blob/master/addon/functions/fn_add.sqf)
![Arguments: Global](https://community.bistudio.com/wikidata/images/2/25/arguments_global.gif) ![Effect: Local](https://community.bistudio.com/wikidata/images/5/52/effects_local.gif)  
Definition: Adds a new animation task on the client where the function was executed  
Syntax:   
- 0: Target (Object or String)
- 1: Class (String) must match a class found in `CfgAnimatePAA`

## [CAU_animate_fnc_addGlobal](https://github.com/ConnorAU/A3AnimatePAA/blob/master/addon/functions/fn_addGlobal.sqf)
![Server Execution Only](https://community.bistudio.com/wikidata/images/9/9f/Exec_Server.gif) ![Arguments: Global](https://community.bistudio.com/wikidata/images/2/25/arguments_global.gif) ![Effect: Global](https://community.bistudio.com/wikidata/images/f/f7/effects_global.gif)  
Definition: Adds a new animation task on all connected and JIP clients  
Syntax:   
- 0: Target (Object or String)
- 1: Class (String) must match a class found in `CfgAnimatePAA`

Note: This function must be executed on the server. Executing on the client will redirect the request to the server automatically.

## [CAU_animate_fnc_remove](https://github.com/ConnorAU/A3AnimatePAA/blob/master/addon/functions/fn_remove.sqf)
![Arguments: Global](https://community.bistudio.com/wikidata/images/2/25/arguments_global.gif) ![Effect: Local](https://community.bistudio.com/wikidata/images/5/52/effects_local.gif)   
Definition: Removes an existing animation task on the client where the function was executed  
Syntax:   
- 0: Target (Object or String)

## [CAU_animate_fnc_removeGlobal](https://github.com/ConnorAU/A3AnimatePAA/blob/master/addon/functions/fn_removeGlobal.sqf)
![Server Execution Only](https://community.bistudio.com/wikidata/images/9/9f/Exec_Server.gif) ![Arguments: Global](https://community.bistudio.com/wikidata/images/2/25/arguments_global.gif) ![Effect: Global](https://community.bistudio.com/wikidata/images/f/f7/effects_global.gif)  
Definition: Removes an existing animation task on all connected clients and the JIP queue  
Syntax:   
- 0: Target (Object or String)
- 1: remoteExec JIP ID (String) (Optional)

Note: This function must be executed on the server. Executing on the client will redirect the request to the server automatically.

# License
This work is licensed under CUP-License (CUP-L), Version 1.0  
http://cup-arma3.org/license  
https://github.com/ConnorAU/A3AnimatePAA/blob/master/LICENSE

# Contact Me
If you have any questions about this mod, you can contact me on discord: https://discord.gg/DMkxetD
