module alu(
input [31:0] busA,busB,		// Entradas de 32 bits de los buses "A" y "B" .
input [3:0]func,		// Bits de selección de función de la ALU.
output reg[31:0] busC,		// Salida de 32 bits para el busC.
output [3:0] psr		// Bits para banderas de Carry, Negative, Overflow, Zero.
);



wire  neg,zero,ov;		// Flags negative, zero y overflow
wire carry;			// flag carry
wire [31:0] variover; 		//Variables usadas en la determinación de las flags
wire [31:0] varicarry;
wire caover;

/*Flags*/
assign variover=busA[30:0]+busB[30:0]; 	//Determinación de carry del bit número 30
assign caover=variover[31];		//Determinación de carry del bit número 30
assign {carry,varicarry}=busA+busB;	//Determinación de la flag Carry y la suma de busA y busB
assign neg=busC[31];			//Determinación de la flag Neg 
assign ov=caover^carry;			//Determinación de la flag Ov a partir de la flag Carry y el carry del bit 30
assign zero=(busC==0) ? 1 : 0;		//Determinación de la flag Zero

		

//OPERACIONES ALU
//NOTA:Las operaciones de shift serán manejadas en el barrel_shifter, que para este caso es otro modulo
always@(*)
begin
case(func)
	0:busC=busA&busB;	//ANDCC
	1:busC=busA|busB;	//ORCC
	2:busC=~(busA|busB);	//NORCC
	3:busC=varicarry;	//ADDCC
	4:busC=busA;		//SRL(Shift Right Logical)
	5:busC=busA&busB;	//AND
	6:busC=busA|busB;	//OR
	7:busC=~(busA|busB);	//NOR
	8:busC=busA+busB;	//ADD
	9:busC=busA;		//LSHIFT2
	10:busC=busA;		//LSHIFT10
	11:begin busC[31:13]=19'b0;busC[12:0]=busA[12:0]; end				//SIMM13
	12:begin busC[12:0]=busA[12:0]; busC[31:13]= (busA[12]==1) ? 19'b1111111111111111111 : 19'b0;end 	//SEXT13
	13:busC=busA+1'b1;	//INC
	14:busC=busA+4'b100;	//INCPC
	15:busC={busA[31],busA[31],busA[31],busA[31],busA[31],busA[31:5]};		//RSHIFT5
	default: busC=busA;
endcase
end

/*PSR: Actuaización del Process Status Register para las operaciones que actualizan Condition Codes (CC)*/

assign psr = {neg,zero,ov,carry};




endmodule
