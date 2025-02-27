module main_memory(
input [31:0] address,
input [31:0] data_in,
input 	clk,rst,
	rd,
	wr,
output reg [31:0] data_out
);
/* Declaración de registro de la main memory.
 Esta contener hasta 2³² registros. Para este
ejemplo se utilizaran solo 32 registros*/
reg [31:0]
 data0,data1,data2,data3,data4,data5,data6,data7,data8,data12,data16,data20,data2048,
data2049,data2050,data2051,data2052,data2053,data2054,data2055,data2056,
data2057,data2058,data2059,data2060,data2061,data2062,data2063,data2064,
data2065,data2066,data2067,data2068,data2069,data2070,data2071,data2072,
data2073,data2074,data2075,data2076,data2077,data2078,data2079,data2080,
data2081,data2082,data2083,data2084,data2085,data2086,data2087,data2088,
data2089,data2090,data2091,data2092,data2093,data2094,data2095,data2096,
data2097,data2098,data2099,data2100,data2101,data2102,data2103,data2104,
data2105,data2106,data2107,data2108,data2109,data2110,data2111,data2112,
data2113,data2114,data2115,data2116,data2117,data2118,data2119,data2120;
always@(posedge clk)
begin
if(rst)
begin
/*===========================================*/
/*==============INICIO INSTRUCCIONES===========*/
/*===========================================*/
		data0=32'b10000001110000000010100000000000;
		data2052=32'hC2002810;
		data2056=32'hC4002814;
		data2060=32'h86804002;
		data2064=32'hC6202818;
		data2068=32'hF
		data2072=32'h3
		data2076=32'h0
/*===========================================*/
/*==============FIN INSTRUCCIONES===========*/
/*===========================================*/
end
else if(wr)
	case(address)
	0:data0=data_in;
	1:data1=data_in;
	2:data2=data_in;
	3:data3=data_in;
	4:data4=data_in;
	5:data5=data_in;
	6:data6=data_in;
	7:data7=data_in;
	8:data8=data_in;
	12:data12=data_in;
	16:data16=data_in;
	20:data20=data_in;
	2048:data2048=data_in;
	2049:data2049=data_in;
	2050:data2050=data_in;
	2051:data2051=data_in;
	2052:data2052=data_in;
	2053:data2053=data_in;
	2054:data2054=data_in;
	2055:data2055=data_in;
	2056:data2056=data_in;
	2057:data2057=data_in;
	2058:data2058=data_in;
	2059:data2059=data_in;
	2060:data2060=data_in;
	2061:data2061=data_in;
	2062:data2062=data_in;
	2063:data2063=data_in;
	2064:data2064=data_in;
	2065:data2065=data_in;
	2066:data2066=data_in;
	2067:data2067=data_in;
	2068:data2068=data_in;
	2069:data2069=data_in;
	2070:data2070=data_in;
	2071:data2071=data_in;
	2072:data2072=data_in;
	2073:data2073=data_in;
	2074:data2074=data_in;
	2075:data2075=data_in;
	2076:data2076=data_in;
	2077:data2077=data_in;
	2078:data2078=data_in;
	2079:data2079=data_in;
	2080:data2080=data_in;
	2081:data2081=data_in;
	2082:data2082=data_in;
	2083:data2083=data_in;
	2084:data2084=data_in;
	2085:data2085=data_in;
	2086:data2086=data_in;
	2087:data2087=data_in;
	2088:data2088=data_in;
	2089:data2089=data_in;
	2090:data2090=data_in;
	2091:data2091=data_in;
	2092:data2092=data_in;
	2093:data2093=data_in;
	2094:data2094=data_in;
	2095:data2095=data_in;
	2096:data2096=data_in;
	2097:data2097=data_in;
	2098:data2098=data_in;
	2099:data2099=data_in;
	2100:data2100=data_in;
	2101:data2101=data_in;
	2102:data2102=data_in;
	2103:data2103=data_in;
	2104:data2104=data_in;
	2105:data2105=data_in;
	2106:data2106=data_in;
	2107:data2107=data_in;
	2108:data2108=data_in;
	2109:data2109=data_in;
	2110:data2110=data_in;
	2111:data2111=data_in;
	2112:data2112=data_in;
	2113:data2113=data_in;
	2114:data2114=data_in;
	2115:data2115=data_in;
	2116:data2116=data_in;
	2117:data2117=data_in;
	2118:data2118=data_in;
	2119:data2119=data_in;
	2120:data2120=data_in;
	default:data0=data_in;
	endcase
end
always@(posedge clk)
begin
if(rd)
	case(address)
	0:data_out=data0;
	1:data_out=data1;
	2:data_out=data2;
	3:data_out=data3;
	4:data_out=data4;
	5:data_out=data5;
	6:data_out=data6;
	7:data_out=data7;
	8:data_out=data8;
	12:data_out=data12;
	16:data_out=data16;
	20:data_out=data20;
	2048:data_out=data2048;
	2049:data_out=data2049;
	2050:data_out=data2050;
	2051:data_out=data2051;
	2052:data_out=data2052;
	2053:data_out=data2053;
	2054:data_out=data2054;
	2055:data_out=data2055;
	2056:data_out=data2056;
	2057:data_out=data2057;
	2058:data_out=data2058;
	2059:data_out=data2059;
	2060:data_out=data2060;
	2061:data_out=data2061;
	2062:data_out=data2062;
	2063:data_out=data2063;
	2064:data_out=data2064;
	2065:data_out=data2065;
	2066:data_out=data2066;
	2067:data_out=data2067;
	2068:data_out=data2068;
	2069:data_out=data2069;
	2070:data_out=data2070;
	2071:data_out=data2071;
	2072:data_out=data2072;
	2073:data_out=data2073;
	2074:data_out=data2074;
	2075:data_out=data2075;
	2076:data_out=data2076;
	2077:data_out=data2077;
	2078:data_out=data2078;
	2079:data_out=data2079;
	2080:data_out=data2080;
	2081:data_out=data2081;
	2082:data_out=data2082;
	2083:data_out=data2083;
	2084:data_out=data2084;
	2085:data_out=data2085;
	2086:data_out=data2086;
	2087:data_out=data2087;
	2088:data_out=data2088;
	2089:data_out=data2089;
	2090:data_out=data2090;
	2091:data_out=data2091;
	2092:data_out=data2092;
	2093:data_out=data2093;
	2094:data_out=data2094;
	2095:data_out=data2095;
	2096:data_out=data2096;
	2097:data_out=data2097;
	2098:data_out=data2098;
	2099:data_out=data2099;
	2100:data_out=data2100;
	2101:data_out=data2101;
	2102:data_out=data2102;
	2103:data_out=data2103;
	2104:data_out=data2104;
	2105:data_out=data2105;
	2106:data_out=data2106;
	2107:data_out=data2107;
	2108:data_out=data2108;
	2109:data_out=data2109;
	2110:data_out=data2110;
	2111:data_out=data2111;
	2112:data_out=data2112;
	2113:data_out=data2113;
	2114:data_out=data2114;
	2115:data_out=data2115;
	2116:data_out=data2116;
	2117:data_out=data2117;
	2118:data_out=data2118;
	2119:data_out=data2119;
	2120:data_out=data2120;
	default:data_out=data0;
	endcase
end
endmodule