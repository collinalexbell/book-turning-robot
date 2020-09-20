
$fn=30;
module backarm_holes() {
	translate([1.15/2, 1.15/2, 0]) cylinder(d=0.4, h=4, center=true);
	translate([-1.15/2, 1.15/2, 0]) cylinder(d=0.4, h=4, center=true);
	translate([-1.15/2, -1.15/2, 0]) cylinder(d=0.4, h=4, center=true);
	translate([1.15/2, -1.15/2, 0]) cylinder(d=0.4, h=4, center=true);
}

module backarm_servo_holes() {
	translate([1.15/2, 4.8/2, 0]) cylinder(d=0.45, h=4, center=true);
	translate([-1.15/2, 4.8/2, 0]) cylinder(d=0.45, h=4, center=true);
	translate([-1.15/2, -4.8/2, 0]) cylinder(d=0.45, h=4, center=true);
	translate([1.15/2, -4.8/2, 0]) cylinder(d=0.45, h=4, center=true);
}

module backarm() {
	difference() {
		union() {
			cube([2.1, 14, 1], center=true);
			translate([0,-16/2+1,0]) cube([3.2, 5.4, 1], center=true);
			translate([0,-16/2+0.7,0]) cube([3.2, 5.4, 1], center=true);
		}
		translate([0, 12/2,0]) backarm_holes();	
		//translate([0, 19/2+1.5,0]) cube([2.2, 1, 2], center=true);	
		translate([0,-16/2+1,0]) cube([2.2, 4.3, 2], center=true);
		translate([1,0.5,0])cube([1, 8.5, 2], center=true);
		translate([-1,0.5,0])cube([1, 8.5, 2], center=true);
		translate([0, -16/2+1,0]) backarm_servo_holes();
	}
}
backarm();
