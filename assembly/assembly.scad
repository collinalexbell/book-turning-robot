use <../vitamins/box.scad>
use <../vitamins/stepper.scad>
use <../vitamins/mg996rServo.scad>

box();
translate([-8, 0, 11]) stepper();
translate([8, 0, 11]) stepper();
translate([-11, 16, 11]) rotate([0, 180, 90]) mg996rServo();
translate([11, 16, 11]) rotate([0, 180, 90]) mg996rServo();

