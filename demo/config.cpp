/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

class CfgPatches {
	class CAU_AnimatePAADemo {
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
			path[]={"myImageLayer0_%1.paa","","myImageLayer2_%1.paa"};
			path="myMarkerClass_%1";

			// Minimum and maximum frame of the animation. This allows selecting a specific range of sub-frames from larger animation set if desired.
			// EG: myImagePath_0.paa, myImagePath_1.paa, myImagePath_2.paa... myImagePath_15.paa
			frames[]={0,15};

			// Seconds between applying a new frame
			interval=0.1;
			
			// Loop mode
			//    0: start at min frame, reach max frame, return to min frame, repeat
			//    1: start at min frame, reach max frame, reverse frame by frame back to min frame, repeat
			//    2: start at min frame, reach max frame, end loop (texture stays as final frame)
			mode=0;
	};

	*/
	class objectExample {
			path[]={"\cau\animatepaa\demo\images\vehicle_%1.paa"};
			frames[]={0,15}; // starts at 0, will end on 15
			interval=0.07; // Time between changing frames
			mode=0; // Loop mode
	};
	class markerExample {
			path="AnimatePAA_example%1";
			frames[]={0,7};
			interval=0.1;
			mode=0;
	};
	class ctrlExample {
			path="\a3\boat_f_destroyer\destroyer_01\data\destroyer_01_n_0%1_co.paa";
			frames[]={3,7};
			interval=0.5;
			mode=1;
	};
};

class CfgMarkers {
	class AnimatePAA_example0 {
		name="AnimatePAA by ConnorAU";
		icon="\cau\animatepaa\demo\images\marker_0.paa";
		color[]={1,1,1,1};
		size=36;
		scope=0;
		shadow=1;
		markerClass="AnimatePAA by ConnorAU";
		showEditorMarkerColor=0;
	};
	class AnimatePAA_example1: AnimatePAA_example0 {
	    icon="\cau\animatepaa\demo\images\marker_1.paa";
	};
	class AnimatePAA_example2: AnimatePAA_example0 {
	    icon="\cau\animatepaa\demo\images\marker_2.paa";
	};
	class AnimatePAA_example3: AnimatePAA_example0 {
	    icon="\cau\animatepaa\demo\images\marker_3.paa";
	};
	class AnimatePAA_example4: AnimatePAA_example0 {
	    icon="\cau\animatepaa\demo\images\marker_4.paa";
	};
	class AnimatePAA_example5: AnimatePAA_example0 {
	    icon="\cau\animatepaa\demo\images\marker_5.paa";
	};
	class AnimatePAA_example6: AnimatePAA_example0 {
	    icon="\cau\animatepaa\demo\images\marker_6.paa";
	};
	class AnimatePAA_example7: AnimatePAA_example0 {
	    icon="\cau\animatepaa\demo\images\marker_7.paa";
	};
};