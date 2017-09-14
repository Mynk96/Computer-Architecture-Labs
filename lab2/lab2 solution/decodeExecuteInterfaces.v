module ctrlCkt(input [6:0] opcode, input [2:0] funct3_32,
	output reg [2:0] aluOp, output reg aluSrcA, output reg [2:0] aluSrcB, output reg [1:0] aluOut);
	always @ (opcode or funct3_32)
		begin
			if (opcode==7'b0110011 && funct3_32==3'b000)
				begin
					aluOp=3'b001;
					aluSrcA=0;
					aluSrcB=3'b000;
					aluOut=2'b00;
				end
			else if (opcode==7'b0110011 && funct3_32==3'b110)
				begin
					aluOp=3'b010;	
					aluSrcA=0;
					aluSrcB=3'b000;
					aluOut=2'b00;
				end
			else if (opcode==7'b0010011 && funct3_32==3'b111)
				begin
					aluOp=3'b011;	
					aluSrcA=0;
					aluSrcB=3'b001;
					aluOut=2'b00;
				end
			else if (opcode==7'b0000011 && funct3_32==3'b010)
				begin
					aluOp=3'b000;	
					aluSrcA=0;
					aluSrcB=3'b001;
					aluOut=2'b00;
				end
			else if (opcode==7'b0010011 && funct3_32==3'b101)
				begin
					aluOp=3'b100;
					aluSrcA=0;
					aluSrcB=3'b010;
					aluOut=2'b00;
				end
			else if (opcode==7'b0110111)
				begin
					aluOp=3'b010;
					aluSrcA=0;
					aluSrcB=3'b000;
					aluOut=2'b01;
				end
			else if (opcode==7'b0100011 && funct3_32==3'b010)
				begin
					aluOp=3'b000;
					aluSrcA=0;
					aluSrcB=3'b011;
					aluOut=2'b00;
				end
			else if (opcode==7'b1101111)
				begin
					aluOp=3'b000;
					aluSrcA=1;
					aluSrcB=3'b100;
					aluOut=2'b00;
				end
			else if (opcode [1:0]==2'b01)
				begin
					aluOp=3'b000;	
					aluSrcA=0;
					aluSrcB=3'b101;
					aluOut=2'b00;
				end
			else if (opcode [1:0]==2'b10)
				begin
					aluOp=3'b000;	
					aluSrcA=0;
					aluSrcB=3'b000;
					aluOut=2'b10;
				end
			else
				begin
					aluOp=3'b000;	
					aluSrcA=0;
					aluSrcB=3'b000;
					aluOut=2'b00;
				end
		end
endmodule

module ALU(input signed [31:0] aluIn1, input signed [31:0] aluIn2, input [2:0] aluOp, output reg [31:0] aluOut);
	always @ (aluIn1 or aluIn2 or aluOp)
		begin
			case (aluOp)
				3'b000:
					aluOut=aluIn1+aluIn2;
				3'b001:
					aluOut=aluIn1-aluIn2;
				3'b010:
					aluOut=aluIn1 | aluIn2;
				3'b011:
					aluOut=aluIn1 & aluIn2;
				3'b100:
					aluOut = aluIn1 >>> aluIn2;
			endcase
		end
endmodule

module signExt12to32(input [11:0] in, output reg [31:0] signExtin);
		always @ (in)
		begin
			case(in[11])
				1'b0:
					begin
						signExtin [11:0] = in;
						signExtin [31:12] = 20'b00000000000000000000;
					end
				1'b1: 
					begin
						signExtin [11:0] = in;
						signExtin [31:12] = 20'b11111111111111111111;
					end
			endcase
		end
	
endmodule

module zeroExt5to32(input [4:0] in, output reg [31:0] zeroExtin);
	always @ (in)
		begin
			zeroExtin [4:0] = in;
			zeroExtin [31:5] = 27'd0;
		end
	
endmodule

module signExt21to32(input [20:0] in, output  [31:0] signExtin);
	assign signExtin = { {11{in[20]}} ,in };
endmodule

module signExt6to32(input [5:0] in, output  [31:0] signExtin);
	assign signExtin = { {26{in[5]}} ,in };
	
endmodule

module mux2to1_32bits(input [31:0] in0, input [31:0] in1, input sel, output reg [31:0] muxOut);
	always @ (in0 or in1 or sel)
		begin
			case(sel)
				1'b0:
					muxOut=in0;
				1'b1:
					muxOut=in1;
			endcase
		end
endmodule

module mux4to1_32bits(input [31:0] in0, input [31:0] in1, input [31:0] in2, input [31:0] in3, input [1:0] sel, output reg [31:0] muxOut);
	always @ (in0 or in1 or in2 or in3 or sel)
		begin
			case(sel)
				2'b00:
					muxOut=in0;
				2'b01:
					muxOut=in1;
				2'b10:
					muxOut=in2;
				2'b11:
					muxOut=in3;
			endcase
		end
endmodule

module mux8to1_32bits(input [31:0] in0, input [31:0] in1, input [31:0] in2, input [31:0] in3,
	input [31:0] in4, input [31:0] in5, input [31:0] in6, input [31:0] in7, input [2:0] sel, output reg [31:0] muxOut);
	always @ (in0 or in1 or in2 or in3 or in4 or in5 or in6 or in7 or sel)
		begin
			case(sel)
				3'b000:
					muxOut=in0;
				3'b001:
					muxOut=in1;
				3'b010:
					muxOut=in2;
				3'b011:
					muxOut=in3;
				3'b100:
					muxOut=in4;
				3'b101:
					muxOut=in5;
				3'b110:
					muxOut=in6;
				3'b111:
					muxOut=in7;
			endcase
		end
endmodule

module decodeExecute(input [31:0] busA, input [31:0] busB, input [31:0] IR, output [31:0] outPut, output [31:0] busBout);
	wire [2:0] aluOp;
	wire [2:0] aluSrcB;
	wire [1:0] aluOut;
	wire aluSrcA;
	ctrlCkt Ctr(IR[6:0], IR[14:12], aluOp, aluSrcA, aluSrcB, aluOut);
	
	wire [31:0] w0;
	wire [31:0] w1;
	wire [31:0] w2;
	wire [31:0] w3;
	wire [31:0] w4;
	wire [31:0] w5;
	wire [31:0] w6;
	wire [31:0] w7;
	signExt12to32 s1(IR[31:20], w1);
	zeroExt5to32 s2(IR[24:20], w2);
	signExt12to32 s3({IR[31:25], IR[11:7]}, w3);
	signExt21to32 s4({IR[31:12], 1'b0}, w4);
	signExt6to32 s5({IR[12], IR[6:2]}, w5);
	
	wire  [31:0] mux8out;
	wire [31:0] mux2out;
	mux2to1_32bits m2(busA, 32'd0, aluSrcA, mux2out);
	mux8to1_32bits m8(busB, w1, w2, w3, w4, w5, w6, w7, aluSrcB, mux8out);
	wire [31:0] aluUnitOut;
	ALU al(mux2out, mux8out, aluOp, aluUnitOut);
	
	mux4to1_32bits m4(aluUnitOut, {IR[31:12], 12'd0}, busB, 32'd0, aluOut, outPut);
	assign busBout=busB;

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
