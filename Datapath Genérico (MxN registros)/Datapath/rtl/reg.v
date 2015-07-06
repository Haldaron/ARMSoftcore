module registro #(
parameter M=8 //número de bits del registro
)(
input clk,write,rst,
input[M-1:0] datain,
input[M-1:0] inicial,
output reg[M-1:0] dataout
);

initial 
begin
dataout=0;
end		

always@(posedge write, posedge rst)
begin
           if(rst)
            dataout=inicial;
           else
            dataout=datain;
end
endmodule
