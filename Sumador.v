`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:21:28 12/03/2016 
// Design Name: 
// Module Name:    Sumador 
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
module Sumador(a, b, result);
//-------------------------------------------Entradas-----------------------------------------//
	input [7:0] a;
	input [7:0] b;
//--------------------------------------------Salidas-----------------------------------------//
	output [7:0] result;
//---------------------------------------------Wires------------------------------------------//
//-------------------------------------------Registros----------------------------------------//
//-----------------------------------------Inicializacion-------------------------------------//
//--------------------------------------Declaracion de Bloques--------------------------------//
//--------------------------------------------Logica------------------------------------------//
	assign result = a + b;
endmodule
