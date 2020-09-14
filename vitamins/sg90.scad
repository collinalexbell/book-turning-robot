
$fn = 30;
module sg90() {
	cube([1.2, 2.25, 2.2], center=true);
	translate([0,0,2.2/2-0.15-0.3]) cube([1.2, 3.3, 0.3], center=true);
	translate([0,2.25/2-1.1/2,2.2/2]){
		cylinder(d=1.1, h=.45);
		translate([0,0,.45]) cylinder(d=0.5, h=0.35);
	}
}
sg90();
