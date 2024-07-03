module debouncer(
	input logic clk,
	input logic key,
	output logic key_debounced
	);
	
	logic key_bouncer;
	
	always @(posedge clk) begin
		key_debounced <= 0;
		if(key & ~key_bouncer) begin
			key_debounced <= 1;
			key_bouncer <= 1;
		end else if(~key) begin
			key_bouncer <= 0;
		end
	end
endmodule