# (Airbus A380) MFD Modes Dropdown Menu
# Narendran Muraleedharan (c) 2014

var modes = {
	path: "/Aircraft/A380/Models/Instruments/MFD/modes.svg", # SVG Path
	svg: {}, # SVG Elements (must be empty)
	options: ["fms1", "fms2", "atc_com", "surv", "fcu_bkup"],
	objects: ["dropdown", "fms1_click", "fms2_click", "atc_com_click", "surv_click", "fcu_bkup_click", "flightnum", "fms_mode_box", "fms_mode_text", "msg_list"],
	widgets: [ # Widget Objects
		{
			element: "fms_mode_box",
			type: "click",
			function: func(mfd, parent) {
				# Open dropdown menu
				parent.svg["dropdown"].show();
				foreach(var obj; parent.objects) {
					parent.svg[obj~"_click"].show();
				}
				parent.svg["fms_mode_box"].setColorFill(220,220,220);
			}
		},
		{
			element: "fms1_click",
			type: "click",
			function: func(mfd, parent) {
				# Close dropdown menu
				parent.svg["dropdown"].hide();
				foreach(var obj; parent.objects) {
					parent.svg[obj~"_click"].hide();
				}
				parent.svg["fms_mode_box"].setColorFill(80,80,80);
				# Switch to Mode
				parent.svg["fms_mode_text"].setText("FMS 1");
			}
		},
		{
			element: "fms2_click",
			type: "click",
			function: func(mfd, parent) {
				# Close dropdown menu
				parent.svg["dropdown"].hide();
				foreach(var obj; parent.objects) {
					parent.svg[obj~"_click"].hide();
				}
				parent.svg["fms_mode_box"].setColorFill(80,80,80);
				# Switch to Mode
				parent.svg["fms_mode_text"].setText("FMS 2");
			}
		},
		{
			element: "atc_com_click",
			type: "click",
			function: func(mfd, parent) {
				# Close dropdown menu
				parent.svg["dropdown"].hide();
				foreach(var obj; parent.objects) {
					parent.svg[obj~"_click"].hide();
				}
				parent.svg["fms_mode_box"].setColorFill(80,80,80);
				# Switch to Mode
				parent.svg["fms_mode_text"].setText("ATC COM");
			}
		},
		{
			element: "surv_click",
			type: "click",
			function: func(mfd, parent) {
				# Close dropdown menu
				parent.svg["dropdown"].hide();
				foreach(var obj; parent.objects) {
					parent.svg[obj~"_click"].hide();
				}
				parent.svg["fms_mode_box"].setColorFill(80,80,80);
				# Switch to Mode
				parent.svg["fms_mode_text"].setText("SURV");
			}
		},
		{
			element: "fcu_bkup_click",
			type: "click",
			function: func(mfd, parent) {
				# Close dropdown menu
				parent.svg["dropdown"].hide();
				foreach(var obj; parent.objects) {
					parent.svg[obj~"_click"].hide();
				}
				parent.svg["fms_mode_box"].setColorFill(80,80,80);
				# Switch to Mode
				parent.svg["fms_mode_text"].setText("FCU BKUP");
			}
		}
	],
	load: func { # Load Function
		me.svg["dropdown"].hide();
		foreach(var obj; me.options) {
			me.svg[obj~"_click"].hide();
		}
		me.svg["flightnum"].setText("");
	}
};