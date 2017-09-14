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
	
		D_ff D0(clk, reset, writeLow, decOut1b, writeData[0], outR[0]);
		D_ff D1(clk, reset, writeLow, decOut1b, writeData[1], outR[1]);
		D_ff D2(clk, reset, writeLow, decOut1b, writeData[2], outR[2]);
		D_ff D3(clk, reset, writeLow, decOut1b, writeData[3], outR[3]);
		D_ff D4(clk, reset, writeLow, decOut1b, writeData[4], outR[4]);
		D_ff D5(clk, reset, writeLow, decOut1b, writeData[5], outR[5]);
		D_ff D6(clk, reset, writeLow, decOut1b, writeData[6], outR[6]);
		D_ff D7(clk, reset, writeLow, decOut1b, writeData[7], outR[7]);
		D_ff D8(clk, reset, writeLow, decOut1b, writeData[8], outR[8]);
		D_ff D9(clk, reset, writeLow, decOut1b, writeData[9], outR[9]);
		D_ff D10(clk, reset, writeLow, decOut1b, writeData[10], outR[10]);
		D_ff D11(clk, reset, writeLow, decOut1b, writeData[11], outR[11]);
		D_ff D12(clk, reset, writeLow, decOut1b, writeData[12], outR[12]);
		D_ff D13(clk, reset, writeLow, decOut1b, writeData[13], outR[13]);
		D_ff D14(clk, reset, writeLow, decOut1b, writeData[14], outR[14]);
		D_ff D15(clk, reset, writeLow, decOut1b, writeData[15], outR[15]);
		D_ff D16(clk, reset, writeHigh, decOut1b, writeData[16], outR[16]);
		D_ff D17(clk, reset, writeHigh, decOut1b, writeData[17], outR[17]);
		D_ff D18(clk, reset, writeHigh, decOut1b, writeData[18], outR[18]);
		D_ff D19(clk, reset, writeHigh, decOut1b, writeData[19], outR[19]);
		D_ff D20(clk, reset, writeHigh, decOut1b, writeData[20], outR[20]);
		D_ff D21(clk, reset, writeHigh, decOut1b, writeData[21], outR[21]);
		D_ff D22(clk, reset, writeHigh, decOut1b, writeData[22], outR[22]);
		D_ff D23(clk, reset, writeHigh, decOut1b, writeData[23], outR[23]);
		D_ff D24(clk, reset, writeHigh, decOut1b, writeData[24], outR[24]);
		D_ff D25(clk, reset, writeHigh, decOut1b, writeData[25], outR[25]);
		D_ff D26(clk, reset, writeHigh, decOut1b, writeData[26], outR[26]);
		D_ff D27(clk, reset, writeHigh, decOut1b, writeData[27], outR[27]);
		D_ff D28(clk, reset, writeHigh, decOut1b, writeData[28], outR[28]);
		D_ff D29(clk, reset, writeHigh, decOut1b, writeData[29], outR[29]);
		D_ff D30(clk, reset, writeHigh, decOut1b, writeData[30], outR[30]);
		D_ff D31(clk, reset, writeHigh, decOut1b, writeData[31], outR[31]);
		
	
	
endmodule

module registerSet(input clk, input reset, input writeLow, input writeHigh, input [15:0] decOut, input [31:0] writeData,
	output [31:0] outR0, output [31:0] outR1, output [31:0] outR2, output [31:0] outR3,
	output [31:0] outR4, output [31:0] outR5, output [31:0] outR6, output [31:0] outR7,
	output [31:0] outR8, output [31:0] outR9, output [31:0] outR10, output [31:0] outR11,
	output [31:0] outR12, output [31:0] outR13, output [31:0] outR14, output [31:0] outR15);

		register32bit R0(clk, reset, writeLow, writeHigh, decOut[0], writeData[0], outR0);
		register32bit R1(clk, reset, writeLow, writeHigh, decOut[1], writeData[1], outR1);
		register32bit R2(clk, reset, writeLow, writeHigh, decOut[2], writeData[2], outR2);
		register32bit R3(clk, reset, writeLow, writeHigh, decOut[3], writeData[3], outR3);
		register32bit R4(clk, reset, writeLow, writeHigh, decOut[4], writeData[4], outR4);
		register32bit R5(clk, reset, writeLow, writeHigh, decOut[5], writeData[5], outR5);
		register32bit R6(clk, reset, writeLow, writeHigh, decOut[6], writeData[6], outR6);
		register32bit R7(clk, reset, writeLow, writeHigh, decOut[7], writeData[7], outR7);
		register32bit R8(clk, reset, writeLow, writeHigh, decOut[8], writeData[8], outR8);
		register32bit R9(clk, reset, writeLow, writeHigh, decOut[9], writeData[9], outR9);
		register32bit R10(clk, reset, writeLow, writeHigh, decOut[10], writeData[10], outR10);
		register32bit R11(clk, reset, writeLow, writeHigh, decOut[11], writeData[11], outR11);
		register32bit R12(clk, reset, writeLow, writeHigh, decOut[12], writeData[12], outR12);
		register32bit R13(clk, reset, writeLow, writeHigh, decOut[13], writeData[13], outR13);
		register32bit R14(clk, reset, writeLow, writeHigh, decOut[14], writeData[14], outR14);
		register32bit R15(clk, reset, writeLow, writeHigh, decOut[15], writeData[15], outR15);
endmodule

module decoder4to16(input [3:0] destReg, output reg [15:0] decOut);
	
	always @ (destReg)
	begin
		case(destReg)
			4'b0000:
				decOut=16'b0000000000000001;
			4'b0001:
				decOut=16'b0000000000000010;
			4'b0010:
				decOut=16'b0000000000000100;
			4'b0011:
				decOut=16'b0000000000001000;
			4'b0100:
				decOut=16'b0000000000010000;
			4'b0101:
				decOut=16'b0000000000100000;
			4'b0110:
				decOut=16'b0000000001000000;
			4'b0111:
				decOut=16'b0000000010000000;
			4'b1000:
				decOut=16'b0000000100000000;
			4'b1001:
				decOut=16'b0000001000000000;
			4'b1010:
				decOut=16'b0000010000000000;
			4'b1011:
				decOut=16'b0000100000000000;
			4'b1100:
				decOut=16'b0001000000000000;
			4'b1101:
				decOut=16'b0010000000000000;
			4'b1110:
				decOut=16'b0100000000000000;
			4'b1111:
				decOut=16'b1000000000000000;
		endcase
	end
	
endmodule

module mux16to1(input [31:0] outR0, input [31:0] outR1, input [31:0] outR2, input [31:0] outR3,
	input [31:0] outR4, input [31:0] outR5, input [31:0] outR6, input [31:0] outR7,
	input [31:0] outR8, input [31:0] outR9, input [31:0] outR10, input [31:0] outR11,
	input [31:0] outR12, input [31:0] outR13, input [31:0] outR14, input [31:0] outR15,
	input [3:0] Sel, output reg [31:0] outBus);

	always @ (Sel, outR1, outR2, outR3, outR4, outR5, outR6, outR7, outR8, outR9, outR10, outR11, outR12, outR13, outR14, outR15)
		begin
			case(Sel)
			4'b0000:
				outBus=outR0;
			4'b0001:
				outBus=outR1;
			4'b0010:
				outBus=outR2;
			4'b0011:
				outBus=outR3;
			4'b0100:
				outBus=outR4;
			4'b0101:
				outBus=outR5;
			4'b0110:
				outBus=outR6;
			4'b0111:
				outBus=outR7;
			4'b1000:
				outBus=outR8;
			4'b1001:
				outBus=outR9;
			4'b1010:
				outBus=outR10;
			4'b1011:
				outBus=outR11;
			4'b1100:
				outBus=outR12;
			4'b1101:
				outBus=outR13;
			4'b1110:
				outBus=outR14;
			4'b1111:
				outBus=outR15;
			endcase
		end
	
endmodule

module mux2to1_16bits(input [15:0] in0, input [15:0] in1, input Sel, output reg [15:0] outBus);
	always @ (Sel, in0, in1)
		begin
			case(Sel)
				1'b1:
					outBus=in0;
				1'b0:
					outBus=in1;
			endcase
		end
endmodule

module busOutput(input [31:0] reg_rx, input mode, input rx3, output [31:0] rxOut);

	wire lowSelect;
	wire notrx3;
	not(notrx3, rx3);
	or(lowSelect, notrx3, mode);
	mux2to1_16bits M0(reg_rx[31:16], 16'b0000000000000000, mode, rxOut[31:16]);
	mux2to1_16bits M1(reg_rx[15:0], 16'b0000000000000000, lowSelect, rxOut[15:0]);
	
endmodule

module registerFile(input clk, input reset, input regWrite, input mode, input [3:0] rs, input [3:0] rt,input [3:0] rd, 
input [31:0] writeData, output [31:0] rsOut, output [31:0] rtOut);
	
	wire [15:0] deOut;
	wire a;
	wire writeLow;
	wire writeHigh;
	wire c;
	not(c, rd[3]);
	or(a, mode, c);
	and(writeLow, regWrite, a);
	and(writeHigh, mode, regWrite);
	
	decoder4to16 De0(rd, deOut);
	
	//writeLow=regWrite && (mode || !rd[3]);
	
	//assign writeHigh=mode && regWrite;
	
	wire [31:0] regSetOut0;
	wire [31:0] regSetOut1;
	wire [31:0] regSetOut2;
	wire [31:0] regSetOut3;
	wire [31:0] regSetOut4;
	wire [31:0] regSetOut5;
	wire [31:0] regSetOut6;
	wire [31:0] regSetOut7;
	wire [31:0] regSetOut8;
	wire [31:0] regSetOut9;
	wire [31:0] regSetOut10;
	wire [31:0] regSetOut11;
	wire [31:0] regSetOut12;
	wire [31:0] regSetOut13;
	wire [31:0] regSetOut14;
	wire [31:0] regSetOut15;
	
	registerSet Rs1(clk, reset, writeLow, writeHigh, deOut, writeData, regSetOut0, regSetOut1, regSetOut2, regSetOut3,
		regSetOut4, regSetOut5, regSetOut6, regSetOut7, regSetOut8, regSetOut9, regSetOut10, regSetOut11, regSetOut12,	
		regSetOut13, regSetOut14, regSetOut15);
	
	wire [31:0] Mu0Out;
	mux16to1 Mu0(regSetOut0, regSetOut1, regSetOut2, regSetOut3,regSetOut4, regSetOut5, regSetOut6, regSetOut7, regSetOut8,
	regSetOut9, regSetOut10, regSetOut11, regSetOut12,	regSetOut13, regSetOut14, regSetOut15, rs, Mu0Out);
	
	wire [31:0] Mu1Out;
	mux16to1 Mu1(regSetOut0, regSetOut1, regSetOut2, regSetOut3,regSetOut4, regSetOut5, regSetOut6, regSetOut7, regSetOut8,
	regSetOut9, regSetOut10, regSetOut11, regSetOut12,	regSetOut13, regSetOut14, regSetOut15, rt, Mu1Out);
	
	busOutput Bs1(Mu0Out, mode, rs[3], rsOut);
	busOutput Bs2(Mu1Out, mode, rt[3], rtOut);
	
	
		
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