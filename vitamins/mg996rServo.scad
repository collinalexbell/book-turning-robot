$fn = 30;

module mg996rServo() {
	flange_width = 5.36;
	flange_height_offset = 2.69;
	flange_height = 0.2;
	main_width = 4.03;
	depth = 2;
	height = 3.75;

  translate([0,-depth/2,0]){
			cube([main_width, depth, height]);
			translate([main_width/2-flange_width/2,0,flange_height_offset]) {
				difference() {
					cube([flange_width, depth, flange_height]);
					translate([0,depth/2,-0.25]) {
						translate([0.15,-0.5,0]) cylinder(d=0.4, h=0.5);
						translate([0.15,0.5,0]) cylinder(d=0.4, h=0.5);
						translate([flange_width - 0.15,-0.5,0]) cylinder(d=0.4, h=0.5);
						translate([flange_width - 0.15,0.5,0]) cylinder(d=0.4, h=0.5);
					}
				}
			}
		translate([3.43, depth/2, height]) color("orange") cylinder(r=0.2, h=0.4);
	}
}
mg996rServo();
