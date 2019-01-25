/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

class CfgPatches {
	class AnimatePAADemo {
        name="AnimatePAADemo";
        author="Connor";
        url="https://steamcommunity.com/id/_connor";

		requiredVersion=1.82;
		requiredAddons[]={"A3_Data_F"};
		units[]={};
		weapons[]={};
	};
};

// CfgAnimatePAA can also be used in the description.ext
class CfgAnimatePAA {
    /*

    class example {
        // If this class is for an object, define the image layer(s)
        // Empty string elements will skip that layer when applying textures to the object
        layers[]={"myImageLayer0_%1.paa","","myImageLayer2_%1.paa"};

        // If this class if for a marker, define the marjer type
        type="myMarkerClass_%1.paa";

        // Number of frames to the animation.
        // 16 frames would mena you have an image for every interval from 0 to 15
        // EG: myMarkerClass_0.paa, myMarkerClass_1.paa, myMarkerClass_2.paa... myMarkerClass_15.paa
        frames=16;

        // Delay in seconds between applying a new frame
        delay=0.1;
    };

    */
    class objectExample {
        layers[]={"\AnimatePAADemo_ConnorAU\images\vehicle_%1.paa"};
        frames=16; // starts at 0, will end on 15
        delay=0.07; // Time between changing frames
    };
    class markerExample {
        type="AnimatePAA_example%1";
        frames=8;
        delay=0.1;
    };
};

class CfgMarkers {
	class AnimatePAA_example0 {
		name="AnimatePAA by ConnorAU";
		icon="\AnimatePAADemo_ConnorAU\images\marker_0.paa";
		color[]={1,1,1,1};
		size=36;
		scope=0;
		shadow=1;
		markerClass="AnimatePAA by ConnorAU";
		showEditorMarkerColor=0;
	};
    class AnimatePAA_example1: AnimatePAA_example0 {
		icon="\AnimatePAADemo_ConnorAU\images\marker_1.paa";
    };
    class AnimatePAA_example2: AnimatePAA_example0 {
		icon="\AnimatePAADemo_ConnorAU\images\marker_2.paa";
    };
    class AnimatePAA_example3: AnimatePAA_example0 {
		icon="\AnimatePAADemo_ConnorAU\images\marker_3.paa";
    };
    class AnimatePAA_example4: AnimatePAA_example0 {
		icon="\AnimatePAADemo_ConnorAU\images\marker_4.paa";
    };
    class AnimatePAA_example5: AnimatePAA_example0 {
		icon="\AnimatePAADemo_ConnorAU\images\marker_5.paa";
    };
    class AnimatePAA_example6: AnimatePAA_example0 {
		icon="\AnimatePAADemo_ConnorAU\images\marker_6.paa";
    };
    class AnimatePAA_example7: AnimatePAA_example0 {
		icon="\AnimatePAADemo_ConnorAU\images\marker_7.paa";
    };
};