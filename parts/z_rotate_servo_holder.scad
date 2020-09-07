servo_y_dim = 11;
servo_x_dim = 32;
servo_z_dim = 25.5;

clearance = .8;

wall_thickness = 2;

servo_wire_y_dim = 8;
servo_wire_x_dim = 3;

difference(){
   
    union(){
        translate([servo_x_dim/2-10,0,wall_thickness/2]){
        cylinder(r=10, servo_z_dim+wall_thickness/2);
        }
        translate([
        0,0,(servo_z_dim+wall_thickness)/2
        ])
        cube([
            servo_x_dim + wall_thickness + clearance,
            servo_y_dim + wall_thickness + clearance,
            servo_z_dim + wall_thickness
        ], center=true);
    }

    translate([
        0,0,(servo_z_dim+wall_thickness)/2 + wall_thickness
    ])
    cube([
        servo_x_dim + clearance,
        servo_y_dim + clearance,
        servo_z_dim + wall_thickness
    ], center=true);
    
    // Servo wire hole
    translate([(servo_x_dim - 4)/2,0,0])
    cube([
        servo_wire_x_dim + clearance,
        servo_wire_y_dim + clearance,
        5
    ],center=true);
}

