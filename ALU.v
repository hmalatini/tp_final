`timescale 1ns / 1ps
//`define N 7

module ALU #(parameter N=7)(BusA, BusB, OpCode, Result);

//-------------------------------------------Entradas-----------------------------------------//	
	input signed [N-1:0] BusA;
   input [N-1:0] BusB;
   input [5:0] OpCode;	
//--------------------------------------------Salidas-----------------------------------------//
	output reg[N-1:0] Result;
//---------------------------------------------Wires------------------------------------------//	
	wire [N-1:0] Suma;
	wire [N-1:0] Resta;
	wire [N-1:0] And;
	wire [N-1:0] Xor;
	wire [N-1:0] Or;
	wire [N-1:0] Nor;
	wire [N-1:0] Asr;
	wire [N-1:0] Lsr;
//-------------------------------------------Registros----------------------------------------//
//-----------------------------------------Inicializacion-------------------------------------//
	initial
		begin
			Result = 0;
		end
//--------------------------------------Declaracion de Bloques--------------------------------//
//--------------------------------------------Logica------------------------------------------//
	assign Suma = BusA + BusB;
	assign Resta = BusA - BusB;
	assign And = BusA & BusB;
	assign Xor = BusA ^ BusB;
	assign Or = BusA | BusB;
	assign Nor = ~(BusA | BusB);
	assign Asr = BusA >>> 1; //Arithmetic Shift Right
	assign Lsr = BusA >> 1; //Logical Shift Roght

	always @(*)
      case(OpCode)
			'b100000: Result = Suma;
			'b100010: Result = Resta;
			'b100100: Result = And;
			'b100101: Result = Or;
			'b100110: Result = Xor;
			'b000011: Result = Asr;
			'b000010: Result = Lsr;
			'b100111: Result = Nor;
      default: Result = 0;
		endcase
endmodule