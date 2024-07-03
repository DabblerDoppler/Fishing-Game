module SDRAM_CONTROLLER (
	input logic clk,
	input logic [24:0] data_address,
	input logic read_req,
	output logic read_grant,
	output logic [15:0] data,
	output logic data_valid,
	
	// These ports should be connected directly to the SDRAM chip
	output logic clock_enable,
	output logic [1:0] bank_activate,
	output logic [11:0] address,
	output logic chip_select,
	output logic row_address_strobe,
	output logic column_address_strobe,
	output logic write_enable,
	output logic [1:0] dqm = 2'b11,
	inout logic [15:0] dq 
);


	enum {IDLE, READ, DONE, NOP} state, next_state; 
	 
	enum bit [2:0] {LOADMODE = 3'b000, REFRESH = 3'b001, PRECHARGE = 3'b010, ACTIVE = 3'b011, WRITING = 3'b100, READING = 3'b101, NO_OP = 3'b111} command;
	assign {row_address_strobe, column_address_strobe, write_enable} = command;
	
	
	
	logic read_cycle;
	assign read_cycle = read_now;
	
	logic [24:0] addr_reg = 0;  
	always @(posedge clk) addr_reg <= address;
	
	
	wire read_now  =  read_req;
	
	logic same_row_and_bank;
	assign same_row_and_bank = (data_address[24:10] == addr_reg[24:10]);
	assign read_grant = (state == IDLE &  read_now) | (state == READ &  read_req & same_row_and_bank);
	
	logic more_reqs_in_same_bank;
	
	assign more_reqs_in_same_bank = read_req & same_row_and_bank;

	always @(posedge clk) begin
		case (state)
			
			IDLE: begin
				if(read_req) begin
					command <= ACTIVE;
					bank_activate <= data_address[24:23]; 
					address <= data_address[22:10]; //row
					dqm <= 2'b11;
					next_state <= READ;
				end else begin
					command <= NO_OP;
					bank_activate <= 0;
					address <= 0;
					dqm <= 2'b11;
					next_state <= IDLE;
				end
			end
			
		READ: begin
			command <= READING;
			bank_activate <= data_address[24:23];
			address[9:0] <= data_address[9:0]; //column
			dqm <= 2'b00;
			next_state <= more_reqs_in_same_bank ? READ : DONE;
		end
		DONE: begin
			command <= PRECHARGE;
			bank_activate <= 0;
			address <= 12'b100000000000;
			dqm <= 2'b11;
			next_state <= IDLE;
		end
		NOP: begin
			command <= NO_OP;
			bank_activate <= 2'b00;
			address <= 0;
			dqm <= 2'b11;
			next_state <= IDLE;
		end
		endcase
		state <= next_state;
	end
	
	localparam READ_LATENCY = 4; //2 from controller, 2 from ISSI CAS latency. SDRAM must be programmed for 2 cycle latency.
	reg[READ_LATENCY - 1:0] data_valid_pipe;
	always @(posedge clk) data_valid_pipe <= {data_valid_pipe[READ_LATENCY - 2 : 0], state == READ};
	assign data_valid = data_valid_pipe[READ_LATENCY - 1];
	always @(posedge clk) data <= dq;
	
	assign dq = 4'bzzzz;
		
endmodule
