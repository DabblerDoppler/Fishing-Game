module game_logic (
	input logic clk,
	input logic key,
	input logic cont_key,
	input logic reset,
	//data from the Gsensor to show how the player is tilting the controller.
	input logic [9:0] accel_data,
	//rodPosition is left when 0 or right when 1
	//the VGA display uses this to signal to the player how they need to hold the controller.
	output logic rod_pos,
	output logic disp_scene,
	output logic play_sound,
	//Start, Play, Win, Lose
	//Logic is used here rather than an enum so it can be passed to other modules (like the VGA display).
	output logic [1:0] game_state
);
	logic [27:0] counter;
	logic [5:0] presses;
	logic [4:0] random;
	logic [2:0] fish_size;
	
	logic key_debounced;
	
	logic [1:0] next_state;
	
	logic tilt_pos;
	/*
	Logarithm_Calc log_inst (
		.clk    (clk),    //    clk.clk
		.areset (areset), // areset.reset
		.a      (fish_size),      //      a.a
		.q      (log_fish_size)       //      q.q
	);
	*/
	
	debouncer db(.clk, .key, .key_debounced);
	
	pseudo_rng rng(.clk, .reset, .out(random));
	
	assign tilt_pos = accel_data[5] | accel_data[6] | accel_data[7] | accel_data[8] | accel_data[9];
	
	
	initial begin

	end
	
	always @(posedge clk or posedge reset) begin
	
		if(reset) begin
			play_sound <= 0;
			disp_scene <= 0;
			next_state <= 2'b00;
			counter <= 0;
			presses <= 0;
			fish_size <= random[4:2];
			
		end else begin
		
			case (game_state)

			2'b00: begin
				next_state <= 2'b00;
				if(key_debounced) begin
					disp_scene <= 0; 
					counter <= 0; 
					fish_size <= random[4:2];
					presses <= 0;
					rod_pos <= random[4];
					next_state <= 2'b01;
				end
			end
			//play game
			2'b01: begin
				counter <= counter + 1;
				//we start with 1 action per second, getting more difficult using a natural log scale with fishsize.
				if (counter == (200000000 / (fish_size + 1))) begin
					play_sound <= 1;
					//check if we're oriented the same way the rod is supposed to be, if it's not, change gamestate to lose.
					if (tilt_pos != rod_pos)  begin
						next_state <= 2'b11; 
						play_sound <= 0; 
						counter <= 0;
					end else if (presses >= (fish_size * 4)) begin
					
					//if we've pressed enough to catch the fish, change gamestate to win.
						next_state <= 2'b10; 
						play_sound <= 0; 
						counter <= 0;
					end else begin
						next_state <= 2'b01;
					end
					
					rod_pos <= random[0];
					counter <= 1;
				end else begin
					next_state <= 2'b01;
					play_sound <= 0;
				end
				if(key_debounced & (presses != 63)) presses <= presses + 1;
				end
			//win
			2'b10: begin
				next_state <= 2'b10;
				if(key_debounced) begin
					disp_scene <= 0; 
					counter <= 0; 
					fish_size <= random[4:2]; 
					next_state <= 2'b01; 
					presses <= 0; 
					rod_pos <= random[4];
				end 
			end
			//lose
			2'b11: begin	
				next_state <= 2'b11;
				if(key_debounced) begin
					disp_scene <= 0; 
					counter <= 0; 
					fish_size <= random[4:2]; 
					next_state <= 2'b01; 
					presses <= 0; 
					rod_pos <= random[4];
				end
			end
			endcase
		end
		game_state <= next_state;
	end
endmodule
