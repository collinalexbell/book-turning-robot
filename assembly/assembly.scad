use <../vitamins/box.scad>
use <../vitamins/stepper.scad>
use <../vitamins/mg996rServo.scad>
use <../vitamins/sg90.scad>
use <../parts/shoulder_blade.scad>

box();
translate([0,-0.9,7.5+0.5]) shoulder_blade();
translate([-8, 0, 11]) stepper();
translate([8, 0, 11]) stepper();
translate([-11, 16, 11]) rotate([0, 180, 90]) mg996rServo();
translate([11, 16, 11]) rotate([0, 180, 90]) mg996rServo();
translate([-11, 32, 11]) rotate([0, 180, 90]) mg996rServo();
translate([11, 31, 11]) rotate([0, 180, 90]) mg996rServo();
translate([-9, 32, 11]) rotate([0, 180, 0]) sg90();
translate([9, 32, 11]) rotate([0, 180, 0]) sg90();

