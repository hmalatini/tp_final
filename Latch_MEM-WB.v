`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:01:05 11/30/2016 
// Design Name: 
// Module Name:    Latch_MEM-WB 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Latch_MEM_WB(Read_Data_Input, ALU_Result_input, Read_Data_Output, ALU_Result_Output);
//-------------------------------------------Entradas-----------------------------------------//
	input Read_Data_Input;
	input ALU_Result_input;
//--------------------------------------------Salidas-----------------------------------------//
	output reg Read_Data_Output;
	output reg ALU_Result_Output;
//---------------------------------------------Wires------------------------------------------//
//-------------------------------------------Registros----------------------------------------//
//-----------------------------------------Inicializacion-------------------------------------//
	initial
		begin
			Read_Data_Output = 0;
			ALU_Result_Output = 0;
		end
//--------------------------------------Declaracion de Bloques--------------------------------//
//--------------------------------------------Logica------------------------------------------//
	always @(*)
		begin
			Read_Data_Output = Read_Data_Input;
			ALU_Result_Output = ALU_Result_input;
		end
endmodule
