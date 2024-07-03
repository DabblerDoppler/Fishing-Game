module pseudo_rng
   #(parameter BITS = 5)
   (
    input  logic       clk,
	 input logic        reset,
    output logic [BITS-1:0] out
    );

   logic [BITS-1:0] data_next;
	
	
   always_comb begin
      data_next = out;
      repeat(BITS) begin
         data_next = {(data_next[BITS-1]^data_next[BITS-4]), data_next[BITS-1:BITS-4]};
      end
   end

   always_ff @(posedge clk or posedge reset) begin
		if(reset) out <= 22;
		else out <= data_next;
   end

endmodule