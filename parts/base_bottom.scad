module base_bottom() {
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
	base_block_x = sd_x + pi_x + wall_thickness*2 + pi_x_clearance*2+ sd_x_clearance;

	base_block_y = pi_y + pi_y_clearance*2 + wall_thickness*2;
	base_block_z = floor_width + pi_z + pi_z_clearance;

	difference(){
		cube([base_block_x, base_block_y, base_block_z], 
				center=true);

		//Pi hole
		//Move 1 pi_x_clearance for SD card
		translate([sd_x/2 + sd_x_clearance,0,floor_width])
			cube([pi_x+pi_y_clearance*2, pi_y+pi_y_clearance*2, pi_z+pi_z_clearance],
					center=true);

		translate([-pi_x/2,0,40/2+-pi_z/2 - pi_z_clearance/2+floor_width])
			//SD hole
			cube([sd_x+sd_x_clearance,sd_y+sd_y_clearance, 40],
					center=true);
		translate([-pi_x/2 - sd_x,0, -pi_z/2 + floor_width + sd_z_clearance +pi_z_clearance])
			cube([sd_x+sd_x_clearance*2,sd_y+sd_y_clearance, sd_z + sd_z_clearance*2],
					center=true);


		//Ethernet, USBs
		translate([pi_x/2,-pi_y/2 +.5,-pi_z/2+floor_width]){
			translate([0,1.5,0])
				cube([10,17,25]);

			translate([0, 22, 0])
				cube([10,14.5, 25]);

			translate([0,39,0])
				cube([10,14.5,25]);
		}

		translate([-pi_x/2 +1.5 + pi_x_clearance, -pi_y/2-5, -pi_z/2+floor_width]){
			// Power, HDMI, Headphones
			translate([6,0,0])
				cube([10,10,25]);

			translate([24, 0, 0])
				cube([16,10,25]);

			translate([49,0,0])
				cube([9, 10, 25]);
		}
	}
}



