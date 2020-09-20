$fn = 30;
module holes() {
	fudge_room = 0.04;
	translate([1.15/2, 1.15/2, 0]) cylinder(d=0.4 + fudge_room, h=4, center=true);
	translate([-1.15/2, 1.15/2, 0]) cylinder(d=0.4 + fudge_room, h=4, center=true);
	translate([-1.15/2, -1.15/2, 0]) cylinder(d=0.4 + fudge_room, h=4, center=true);
	translate([1.15/2, -1.15/2, 0]) cylinder(d=0.4 + fudge_room, h=4, center=true);
}

module elbow() {
	difference() {
		union() {
			cube([2.1, 3, 1], center=true);
			translate([0,2,4/2]) cube([2.1, 1, 5], center=true);
			translate([0,(3+6)/2 + 1,0])cube([2.1, 6, 1], center=true);
			translate([0,(3+6+1)/2 ,5])cube([2.1, 7, 1], center=true);
		}
		holes();
		translate([0, 7, 0.08]) cylinder(d=2.5, h=0.87, center=true);
		translate([0, 7, 4.4]) cylinder(d=1.5, h=1, center=true);
	}
}

elbow();

