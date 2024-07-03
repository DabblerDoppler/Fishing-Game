//module drives the built-in VGA port to show a picture on a 640*480 VGA Monitor.
//clk input should be 25 MHz
module VGA (
	input logic clk, 
	input logic reset,
	input logic [1:0] game_state,
	input logic rod_pos,
	//vertical and horizontal sync
	output logic vga_vsync,
	output logic vga_hsync,
	output logic [3:0] vga_r,
	output logic [3:0] vga_g,
	output logic [3:0] vga_b
	
	/*
	//sdram variables
	input logic [15:0] data,
	input logic read_grant,
	input logic data_valid,
	output logic read_req,
	output logic [10:0] address
	*/
	
);



//the pixel we're currently looking at in using coordinate logic.
logic [9:0] X;
logic [8:0] Y;

/*

logic [1:0] prev_state, hold_state;


//each word holds 16 bits (16 * x)
parameter X_SIZE = 16;
//each line holds 5120 bits (16 * 80 * y)
parameter Y_SIZE = 1280;
//each scene holds 1228800 bits (16 * 80 * 60 * game_state)
parameter SCENE_SIZE = 76800;
assign address = (SCENE_SIZE * game_state) + (X * X_SIZE) + (Y * Y_SIZE);

*/


initial begin
	X <= 0;
	Y <= 0;
end

logic v_sync;
logic h_sync;
logic [11:0] RGB;

//enables data when we are in an appropriate space to draw.
logic video_on;

 // horizontal timings
parameter HA_END = 639;           // end of active pixels
parameter HS_STA = HA_END + 16;   // sync starts after front porch
parameter HS_END = HS_STA + 96;   // sync ends
parameter LAST_PIXEL   = 799;     // last pixel on line (after back porch)

 // vertical timings
parameter VA_END = 479;           // end of active pixels
parameter VS_STA = VA_END + 10;   // sync starts after front porch
parameter VS_END = VS_STA + 2;    // sync ends
parameter LAST_ROW = 524;         // last line on screen (after back porch

/*
// memory offsets
parameter SCENE_BIT_OFFSET = 3686400; //12 bits per pixel, 640 pixels per row, 480 rows per image
parameter X_OFFSET = 12; //12 bits per pixel
parameter Y_OFFSET = 7680; //12 bits per pixel * 640 pixels per row
*/
//syncs are enabled when we are inside of the signal bounds but outside of the drawable area.
assign h_sync = ~(X >= HS_STA && X < HS_END);
assign v_sync = ~(Y >= VS_STA && Y < VS_END);
//video on is enabled when we are inside of the drawable area.
assign video_on = (X <= HA_END && Y <= VA_END);


wire XFull;
wire YFull;

assign XFull = (X == LAST_PIXEL);
assign YFull = (Y == LAST_ROW);

//loop through the pixels on the monitor
always @(posedge clk) begin
	if(XFull) begin 
		X <= 0; 
		if(~YFull) Y <= Y + 1;
		else Y <= 0;
	end
	else X <= X + 1;
end

/*
//scene loader
always @(posedge clk) begin
	prev_state <= hold_state;
	hold_state <= game_state;
	scene_changed = (prev_state != game_state);
	//if the game state isn't the same as the previous game state
	if(scene_changed) begin
		stored_x <= 0;
		stored_y <= 0;
		read_req <= 1'b1;
	end
	if(read_req && read_grant && data_valid) begin
		rgb_stored [stored_x] [stored_y] <= data[11:0];
		if(stored_x == STORED_X_MAX) begin
			if(stored_y == STORED_Y_MAX) begin
				read_req <= 1'b0;
			end else begin
				stored_y <= stored_y + 1;
			end
		end else begin
			stored_x <= stored_x + 1;
		end
	end
end
*/			
	
//test display - paint a square on screen. The color of the square is determined by game state.

 // define a square with screen coordinates
 logic square;
 always_comb begin
	  square = (X > 220 && X < 420) && (Y > 140 && Y < 340);
 end

 always_ff @(posedge clk) begin
		if(!video_on) RGB = 12'h000;
		else begin
			case (game_state)
			//start
			2'b00: begin
					RGB <= (square) ? 12'h012 :  12'hFFF;
				end
			//fish
			2'b01: begin
					if(rod_pos) RGB <= (square) ? 12'h012 : 12'h0AF;
					else RGB <= (square) ? 12'h012 : 12'h40F;
				end
			//win
			2'b10: begin
					RGB <= (square) ? 12'h012 : 12'h0B3;
				end
			//lose
			2'b11: begin
					RGB <= (square) ? 12'h012 : 12'hF12;
			    end
			endcase
		end
 end

 /*
always_ff @(posedge clk) begin
	if(!video_on) RGB <= 12'h000;
	else begin
		RGB <= data; 
	end
end
*/

//register outputs
always_ff @(posedge clk) begin
    vga_hsync <= h_sync;
    vga_vsync <= v_sync;
    vga_r <= RGB[11:8];
    vga_g <= RGB[7:4];
    vga_b <= RGB[3:0];
end


endmodule