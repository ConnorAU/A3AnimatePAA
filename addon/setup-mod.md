# Mod setup
The mod itself contains the functions required for the system to operate. There is no reason to edit the mod pbo.

## Download the mod
You can download the mod from the following locations:
- [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=1634591219)
- [Github Releases](https://github.com/ConnorAU/A3AnimatePAA/releases)

## Adding new animations
Use own mod to add new animation configurations, simply open your `config.cpp` and add the following:
```cpp
class CfgAnimatePAA {
    // Example: https://github.com/ConnorAU/A3AnimatePAA/blob/master/demo/config.cpp#L26-L44
};
```
Using this [example](https://github.com/ConnorAU/A3AnimatePAA/blob/master/demo/config.cpp#L26-L44) as a guide, you can create your own animation configurations inside the newly created `CfgAnimatePAA` class.

## MP functionality
If you plan on using this mod in your MP mission you may need to follow these [mission instructions](https://github.com/ConnorAU/A3AnimatePAA/blob/master/addon/functions/setup-mission.md#L15) on adding functions to your remoteExec whitelist.

# Contact Me
If you have any questions about this mod, you can contact me on discord: https://discord.gg/DMkxetD