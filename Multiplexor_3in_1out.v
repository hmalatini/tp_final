`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:42 10/31/2016 
// Design Name: 
// Module Name:    Multiplexor_3in_1out 
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
module Mux_3in_1out #(parameter DB = 32)(DatoA, DatoB, DatoC, Sel, Salida);
//-------------------------------------------Entradas-----------------------------------------//
    input [DB-1:0] DatoA;
    input [DB-1:0] DatoB;
    input [DB-1:0] DatoC;
    input [1:0] Sel;	 
//--------------------------------------------Salidas-----------------------------------------//
    output reg [DB-1:0] Salida;
//---------------------------------------------Wires------------------------------------------//
//-------------------------------------------Registros----------------------------------------//
//-----------------------------------------Inicializacion-------------------------------------//
	initial
		begin
			Salida = 0;
		end		
//--------------------------------------Declaracion de Bloques--------------------------------//
//--------------------------------------------Logica------------------------------------------//
	always @(*)
	begin
		if(Sel == 0)
			begin
				Salida = DatoA;
			end
		else if(Sel == 1)
			begin
				Salida = DatoB;
			end
		else if(Sel == 2)
			begin
				Salida = DatoC;
			end
		else
			begin
				Salida = DatoC;
			end
	end
endmodule
