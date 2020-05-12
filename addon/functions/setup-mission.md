# Mission setup

## Download the scripts
You can download the scripts from the [Github Releases](https://github.com/ConnorAU/A3AnimatePAA/releases) page.

## Installing the mod into your mission file
1. Download `AnimatePAAScripts.zip` from the releases page linked above
2. Extract the folder `cau` from the .zip into your mission file root folder
3. Open your `description.ext` and include the `CfgFunctions.cpp` file as shown below
```cpp
class CfgFunctions {
    #include "cau\animatepaa\CfgFunctions.cpp"
};
```
4. Still inside the `description.ext`, include the `CfgRemoteExec.cpp` file as shown below
```cpp
class CfgRemoteExec {
    class Functions {
        #include "cau\animatepaa\CfgRemoteExec.cpp"
    };
};
```

If you do not have a `CfgFunctions` or `CfgRemoteExec` set up already, take a look at the BI Wiki for assistance.

## Adding new animations
You can add your animation configurations in the mission file directly, simply open your `description.ext` and add the following:
```cpp
class CfgAnimatePAA {
    // Example: https://github.com/ConnorAU/A3AnimatePAA/blob/master/demo/config.cpp#L26-L44
};
```
Using this [example](https://github.com/ConnorAU/A3AnimatePAA/blob/master/demo/config.cpp#L26-L44) as a guide, you can create your own animation configurations inside the newly created `CfgAnimatePAA` class.

# Contact Me
If you have any questions about this mod, you can contact me on discord: https://discord.gg/DMkxetD