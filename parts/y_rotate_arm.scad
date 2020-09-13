$fn=30;

difference(){
union(){
cube([15,33,1]);
cube([15,1.5,20]);
translate([0,33,0])
cube([15,1.5,20]);
}

translate([15/2,0,15])
rotate([90,0,0])
cylinder(d=7, 70, center=true);
}