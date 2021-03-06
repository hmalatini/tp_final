`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:22:27 12/03/2016 
// Design Name: 
// Module Name:    Sign_Extend 
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
module Sign_Extend(a,zeroEx,y);
//-------------------------------------------Entradas-----------------------------------------//
	input [15:0] a;
	input zeroEx;
//--------------------------------------------Salidas-----------------------------------------//
	output reg [31:0] y;
//---------------------------------------------Wires------------------------------------------//
//-------------------------------------------Registros----------------------------------------//
//-----------------------------------------Inicializacion-------------------------------------//
//--------------------------------------Declaracion de Bloques--------------------------------//
//--------------------------------------------Logica------------------------------------------//
	always @(*) 
		begin
			if(zeroEx)
				begin
					y <= {16'h0000,a};
				end
			else if(a[15])
				begin
					y <= {16'hFFFF,a};
				end
			else 
				begin
					y <= {16'h0000,a};
				end
		end
endmodule
