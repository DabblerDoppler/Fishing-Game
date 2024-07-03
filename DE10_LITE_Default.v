
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module DE10_LITE_Default(

	//////////// CLOCK //////////
	input 		          		ADC_CLK_10,
	input 		          		MAX10_CLK1_50,
	input 		          		MAX10_CLK2_50,


	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW,

	//////////// VGA //////////
	output		     [3:0]		VGA_B,
	output		     [3:0]		VGA_G,
	output		          		VGA_HS,
	output		     [3:0]		VGA_R,
	output		          		VGA_VS,

	//////////// Accelerometer //////////
	output		          		GSENSOR_CS_N,
	input 		     [2:1]		GSENSOR_INT,
	output		          		GSENSOR_SCLK,
	inout 		          		GSENSOR_SDI,
	inout 		          		GSENSOR_SDO,
	
	

	output		          		DRAM_WE_N,

	/////////// Audio ///////////////////
	
	output                     SPEAKER
	
);



//=======================================================
//  REG/WIRE declarations
//=======================================================


wire DLY_RST;
wire VGA_CTRL_CLK;



reg  [31:0]	Cont;
wire [23:0]	mSEG7_DIG;
wire	      spi_clk_out;
wire 			resrt_n;
wire	[15:0]  data_x;

wire reset;

assign reset = SW[0];

//=======================================================
//  Structural coding
//=======================================================
//
//assign DRAM_DQ 	   =  16'hzzzz;
//assign ARDUINO_IO 	=  16'hzzzz;
//assign GPIO		  		=	36'hzzzzzzzz;




always@(posedge MAX10_CLK1_50)
    begin
			 Cont	<=	Cont+1;
    end
	 
Reset_Delay			r0	(.iCLK(MAX10_CLK1_50),
								.oRESET(DLY_RST));


							

SEG7_LUT_6 			u0	(	.oSEG0(HEX0),
							   .oSEG1(HEX1),
							   .oSEG2(HEX2),
							   .oSEG3(HEX3),
								.oSEG4(HEX4),
								.oSEG5(HEX5),
							   .iDIG(mSEG7_DIG) );

VGA_Audio_PLL 		p1	(	.areset(~DLY_RST),
								.inclk0(MAX10_CLK1_50),
								.c0(VGA_CTRL_CLK),
								.c1(spi_clk), // 2MHz
								.c2(spi_clk_out)		// 2MHz phase shift 						
								);
								
SDRAM_PLL 		p2	(	.areset(~DLY_RST),
								.inclk0(MAX10_CLK1_50),
								.c0(DRAM_CLK)				
								);

								
								
wire play_sound;

audio_gen audio(.clk(MAX10_CLK1_50), .reset(reset), .play_sound(play_sound), .speaker(SPEAKER));



							
							
//  Initial Setting and Data Read Back
spi_ee_config u_spi_ee_config (			
						.iRSTN(DLY_RST),															
						.iSPI_CLK(spi_clk),								
						.iSPI_CLK_OUT(spi_clk_out),								
						.iG_INT2(GSENSOR_INT[1]),            
						.oDATA_L(data_x[7:0]),
						.oDATA_H(data_x[15:8]),
						.SPI_SDIO(GSENSOR_SDI),
						.oSPI_CSN(GSENSOR_CS_N),
						.oSPI_CLK(GSENSOR_SCLK));
			
wire [9:0] led_gensor;

assign LEDR = led_gensor;
			
			//	LED
led_driver u_led_driver	(	
						.iRSTN(DLY_RST),
						.iCLK(MAX10_CLK1_50),
						.iDIG(data_x[9:0]),
						.iG_INT2(GSENSOR_INT[1]),            
						.oLED(led_gensor));
							

							

	wire [10:0] data_address;
	wire [15:0] data;
	

wire rod_pos;
wire [1:0] game_state;

VGA vga1 (.clk(VGA_CTRL_CLK), .reset(reset), .game_state(game_state[1:0]), .rod_pos(rod_pos), .vga_vsync(VGA_VS), .vga_hsync(VGA_HS), .vga_r(VGA_R), .vga_g(VGA_G), .vga_b(VGA_B),
			);

game_logic gl1 (.clk(MAX10_CLK1_50), .key(KEY[0]), .reset(reset), .accel_data(led_gensor), .rod_pos(rod_pos), .disp_scene(disp_scene), .play_sound(play_sound), .game_state(game_state[1:0]));

							
							

endmodule
