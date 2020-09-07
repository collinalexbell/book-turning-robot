$fn = 30;

servo_x_dim = 12;
servo_y_dim = 22;
servo_z_dim_covered = 18;
servo_z_flange_dim = 5;


clearance = .5;

wall_thickness = 2;

//Main body

    union(){
        //Servo holder portion
        difference(){
            union(){
            translate([0,0,servo_z_dim_covered/2])
            cube([
                servo_x_dim + clearance + wall_thickness,
                servo_y_dim + clearance + wall_thickness,
                servo_z_dim_covered + wall_thickness
            ], center = true);
            translate([0,0,-3.5])
            cylinder(r=10, servo_z_dim_covered+wall_thickness/2+3.5);
            }

            translate([0,0,servo_z_dim_covered/2 + wall_thickness])
            cube([
                servo_x_dim + clearance, 
                servo_y_dim + clearance,
                servo_z_dim_covered
            ], center = true);
        }
        // Large bottom z dim for interfacing
        difference(){
            translate([0,0,-3/2])
            cube([
                servo_x_dim + clearance + wall_thickness,
                servo_y_dim + clearance + wall_thickness,
                4
            ], center = true);
            translate([0,0,-4/2-.01])
            cube([
                5,
                7,
                4
            ], center = true);
            
        }
        
    }

to_servo_center_z = 12.5;
bearing_z = 16;

//Center servo support block
translate([
    0,
    -(servo_y_dim + clearance - 10)/2,
    servo_z_flange_dim/2 + 2
])
cube([
    servo_x_dim+clearance, 
    10, 
    servo_z_flange_dim
], center=true);
    
//Servo bearing
translate([
    0, 
    -(servo_y_dim + wall_thickness - clearance)/2 , 
    servo_z_dim_covered + bearing_z/2 + 1])
cube([
    servo_x_dim + clearance + wall_thickness,
    wall_thickness/2,
    bearing_z
    ],
    center=true);
    
    translate([0,-12,servo_z_dim_covered + to_servo_center_z])
    rotate([90,0,0])
    cylinder(d=6, 4);

