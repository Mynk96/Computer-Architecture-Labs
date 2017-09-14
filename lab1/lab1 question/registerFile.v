module D_ff(input clk, input reset, input regWrite, input decOut1b , input d, output reg q);
	always @ (negedge clk)
	begin
	if(reset==1)
		q=0;
	else
		if(regWrite == 1 && decOut1b==1)
		begin
			q=d;
		end
	end
endmodule

module register32bit(input clk, input reset, input writeLow, input writeHigh, input decOut1b, input [31:0] writeData, output  [31:0] outR);
	
	//Write your code here
	
endmodule

module registerSet(input clk, input reset, input writeLow, input writeHigh, input [15:0] decOut, input [31:0] writeData,
	output [31:0] outR0, output [31:0] outR1, output [31:0] outR2, output [31:0] outR3,
	output [31:0] outR4, output [31:0] outR5, output [31:0] outR6, output [31:0] outR7,
	output [31:0] outR8, output [31:0] outR9, output [31:0] outR10, output [31:0] outR11,
	output [31:0] outR12, output [31:0] outR13, output [31:0] outR14, output [31:0] outR15);

		//Write your code here
		
endmodule

module decoder4to16(input [3:0] destReg, output reg [15:0] decOut);
	
	//Write your code here
	
endmodule

module mux16to1(input [31:0] outR0, input [31:0] outR1, input [31:0] outR2, input [31:0] outR3,
	input [31:0] outR4, input [31:0] outR5, input [31:0] outR6, input [31:0] outR7,
	input [31:0] outR8, input [31:0] outR9, input [31:0] outR10, input [31:0] outR11,
	input [31:0] outR12, input [31:0] outR13, input [31:0] outR14, input [31:0] outR15,
	input [3:0] Sel, output reg [31:0] outBus);

	//Write your code here
	
endmodule

module mux2to1_16bits(input [15:0] in0, input [15:0] in1, input Sel, output reg [15:0] outBus);
	
	//Write your code here
	
endmodule

module busOutput(input [31:0] reg_rx, input mode, input rx3, output [31:0] rxOut);
	
	//Write your code here
	
endmodule

module registerFile(input clk, input reset, input regWrite, input mode, input [3:0] rs, input [3:0] rt,input [3:0] rd, 
input [31:0] writeData, output [31:0] rsOut, output [31:0] rtOut);
	
	//Write your code here
	
endmodule

module testbench;
	// Input
	reg clk, reset, regWrite, mode;
	reg [3:0] rs, rt, rd;
	reg [31:0] writeData;
	// Output
	wire [31:0] rsOut, rtOut;
	
	registerFile RF1(clk,reset,regWrite,mode,rs,rt,rd,writeData,rsOut,rtOut);
	
	always
		#5 clk=~clk;
	initial
		begin
			clk=0;reset=1; rs=4'd15; rt=4'd14; rd=4'd15; regWrite=1; mode=1; writeData=32'hAC0AC0AC;
			#5 reset=0;
			#10 rs=4'd15; rt=4'd14; rd=4'd14; regWrite=1; mode=1; writeData=32'hDEADBEEF;
			#10 rs=4'd15; rt=4'd14; rd=4'd14; regWrite=1; mode=0; writeData=32'h12345678;
			#10 rs=4'd15; rt=4'd14; rd=4'd1; regWrite=1; mode=1; writeData=32'hDEADBEEF;
			#10 rs=4'd15; rt=4'd1; rd=4'd1; regWrite=1; mode=0; writeData=32'h12345678;
			#10 rs=4'd15; rt=4'd1; rd=4'd2; regWrite=1; mode=1; writeData=32'hBABABABE;
			#10 rs=4'd2; rt=4'd1; rd=4'd2; regWrite=0; mode=1; writeData=32'h12345678;
			#10 rs=4'd2; rt=4'd1; rd=4'd2; regWrite=0; mode=0; writeData=32'h12345678;
			#10 $finish;
		end
endmodule