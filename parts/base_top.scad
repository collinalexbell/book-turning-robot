module base_top() {
	pi_x = 85;
	sd_x = 1.5;
	sd_y = 21;
	sd_z = 1;
	plug_x = 2;

	pi_y = 57.5;

	pi_z = 23.0;

	wall_thickness = .75;
	pi_x_clearance = .2;
	pi_y_clearance = .2;
	pi_z_clearance = .2;

	sd_x_clearance = .2;
	sd_y_clearance = .2;
	sd_z_clearance = 1;

	floor_width = 1;

	//Double the - clearance for the SD
	bottom_base_block_x = sd_x + pi_x + wall_thickness*2 + pi_x_clearance*2+ sd_x_clearance;

	bottom_base_block_y = pi_y + pi_y_clearance*2 + wall_thickness*2;
	bottom_base_block_z = floor_width + pi_z + pi_z_clearance;

	top_base_block_x = bottom_base_block_x + 1.5;

	top_base_block_y = bottom_base_block_y + 1.5;

	top_base_block_z = 10 + floor_width;

	difference(){
			cube([top_base_block_x,top_base_block_y, top_base_block_z]);

			translate([1.5/2,1.5/2,floor_width+.05])
			cube([bottom_base_block_x,bottom_base_block_y, 10]);

			translate([-2,3,3]) {
				cube([20, 53, 20]);
			}

			translate([35,7,-0.5]) cube([20, 4, 2]);
	}
}

base_top();
