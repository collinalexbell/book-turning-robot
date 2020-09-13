
$fn = 20;
module stepper() {
	cube([4.2, 4.2, 4.2], center=true);
	translate([0,0,-4.2]) cylinder(d=0.5/2, h=2.2);
}
