module ctrlCkt(input [6:0] opcode, input [2:0] funct3_32,
	output reg [2:0] aluOp, output reg aluSrcA, output reg [2:0] aluSrcB, output reg [1:0] aluOut);
	
	//Write your code here
	
endmodule

module ALU(input signed [31:0] aluIn1, input signed [31:0] aluIn2, input [2:0] aluOp, output reg [31:0] aluOut);
		
	//Write your code here
	
endmodule

module signExt12to32(input [11:0] in, output reg [31:0] signExtin);
		
	//Write your code here
	
endmodule

module zeroExt5to32(input [4:0] in, output reg [31:0] zeroExtin);
		
	//Write your code here
	
endmodule

module signExt21to32(input [20:0] in, output reg [31:0] signExtin);
		
	//Write your code here
	
endmodule

module signExt6to32(input [5:0] in, output reg [31:0] signExtin);
		
	//Write your code here
	
endmodule

module mux2to1_32bits(input [31:0] in0, input [31:0] in1, input sel, output reg [31:0] muxOut);
    	
	//Write your code here
	
endmodule

module mux4to1_32bits(input [31:0] in0, input [31:0] in1, input [31:0] in2, input [31:0] in3, input [1:0] sel, output reg [31:0] muxOut);
    	
	//Write your code here
	
endmodule

module mux8to1_32bits(input [31:0] in0, input [31:0] in1, input [31:0] in2, input [31:0] in3,
	input [31:0] in4, input [31:0] in5, input [31:0] in6, input [31:0] in7, input [2:0] sel, output reg [31:0] muxOut);
   	
	//Write your code here
	
endmodule

module decodeExecute(input [31:0] busA, input [31:0] busB, input [31:0] IR, output [31:0] outPut, output [31:0] busBout);
		
	//Write your code here
		
endmodule

module testbench;
	reg [31:0] busA, busB, IR;
	wire [31:0] outPut, busBout;
	
	decodeExecute DE(busA, busB, IR, outPut, busBout);
	
	initial
	begin
		#00 busA = 32'h82345678; busB = 32'h12345678; IR = 32'h40000033; // sub
		#10 busA = 32'h3F82A814; busB = 32'h5E518C31; IR = 32'h00006033; // or
		#10 busA = 32'hABD31352; busB = 32'hBABABABA; IR = 32'h36A37413; // andi
		#10 busA = 32'h10000000; busB = 32'hDCDCDCDC; IR = 32'hC0062303; // lw
		#10 busA = 32'hE0000000; busB = 32'h00000005; IR = 32'h40205013; // srai
		#10 busA = 32'hFFFFFFFF; busB = 32'hFFFFFFFF; IR = 32'h0F300637; // lui
		#10 busA = 32'h00000000; busB = 32'hFFFFFFFF; IR = 32'hF0C52023; // sw
		#10 busA = 32'hFFFFFFFF; busB = 32'hFFFFFFFF; IR = 32'hF00001EF; // j
		#10 busA = 32'h0000000F; busB = 32'h11111111; IR = 32'h00001581; // c.addi
		#10 busA = 32'h22222222; busB = 32'h00DEAD00; IR = 32'h00008DBA; // c.mv
		#10 $finish;
	end
endmodule
