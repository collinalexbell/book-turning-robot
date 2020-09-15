
$fn = 30;
module holes() {
	translate([4.2/2-0.5,0.9+4.2/2-0.5,0]) cylinder(d=0.4, h=6, center=true);
	translate([4.2/2-0.5,0.9-4.2/2+0.5,0]) cylinder(d=0.4, h=6, center=true);
	translate([-4.2/2+0.5,0.9+4.2/2-0.5,0]) cylinder(d=0.4, h=6, center=true);
	translate([-4.2/2+0.5,0.9-4.2/2+0.5,0]) cylinder(d=0.4, h=6, center=true);
}
module shoulder_blade() {

	difference() {
		cube([20.4, 6.4, 0.8], center=true);
		translate([10.8/2,0.9-0.6,0]) cylinder(d=0.5, h=5, center=true);
		translate([-10.8/2,0.9-0.6,0]) cylinder(d=0.5, h=5, center=true);
		translate([16/2,0.9,0]) cylinder(d=0.7, h=6.5, center=true);
		translate([-16/2,0.9,0]) cylinder(d=0.7, h=6.5, center=true);
		translate([16/2,0,0]) holes();
		translate([-16/2,0,0]) holes();
		translate([0,-2.3,0]) cube([21.4, 2.0, 1.2], center=true);
		translate([0,2.3,0]) cube([14, 2.5, 1.2], center=true);
		translate([0,-1.6,0]) cube([10, 2.5, 1.2], center=true);
	}
}
shoulder_blade();
