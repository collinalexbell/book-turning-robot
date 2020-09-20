
$fn = 30;
difference() {
	union() {
		cube([0.4, 3.0, 0.4]);
		translate([0.4, 0, 0]) rotate([0,0,165]) cube([0.4, 2.5, 0.4]);
	}
	translate([0.2, 0, 0]) cylinder(r=0.1, h = 3, center=true);
	rotate([0,0,165-180]) translate([0.2,-2.2,0]) cylinder(r=0.1, h = 3, center=true);
}
