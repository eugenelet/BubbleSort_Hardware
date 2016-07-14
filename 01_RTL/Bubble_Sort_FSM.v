`timescale 1ns/10ps
`define	INIT_STATE	0
`define	STORE_INPUT 1
`define	BUBBLE_SORT 2
`define	DUMP_OUTPUT 3
module Bubble_Sort_FSM(
	clk,
	rst_n,
	in_valid,
	in_data,
	out_valid,
	out_data
	);

input             clk;
input             rst_n;
input             in_valid;
input       [7:0] in_data;
output reg	      out_valid;
output reg	[7:0] out_data;


reg			[1:0] current_state;
reg			[1:0] next_state;

/*
 * Memory to store in data
 */
reg			[7:0] in_data0;
reg			[7:0] in_data1;
reg			[7:0] in_data2;
reg			[7:0] in_data3;
reg			[7:0] in_data4;
reg			[7:0] in_data5;
reg			[7:0] in_data6;
reg			[7:0] in_data7;
reg			[7:0] in_data8;
reg			[7:0] in_data9;
reg			[7:0] in_data10;
reg			[7:0] in_data11;
reg			[7:0] in_data12;
reg			[7:0] in_data13;
reg			[7:0] in_data14;
reg			[7:0] in_data15;
reg			[7:0] in_data16;
reg			[7:0] in_data17;
reg			[7:0] in_data18;
reg			[7:0] in_data19;
reg			[7:0] in_data20;
reg			[7:0] in_data21;
reg			[7:0] in_data22;
reg			[7:0] in_data23;
reg			[7:0] in_data24;
reg			[7:0] in_data25;
reg			[7:0] in_data26;
reg			[7:0] in_data27;
reg			[7:0] in_data28;
reg			[7:0] in_data29;
reg			[7:0] in_data30;
reg			[7:0] in_data31;
reg			[7:0] in_data32;
reg			[7:0] in_data33;
reg			[7:0] in_data34;
reg			[7:0] in_data35;
reg			[7:0] in_data36;
reg			[7:0] in_data37;
reg			[7:0] in_data38;
reg			[7:0] in_data39;
reg			[7:0] in_data40;
reg			[7:0] in_data41;
reg			[7:0] in_data42;
reg			[7:0] in_data43;
reg			[7:0] in_data44;
reg			[7:0] in_data45;
reg			[7:0] in_data46;
reg			[7:0] in_data47;
reg			[7:0] in_data48;
reg			[7:0] in_data49;
reg			[7:0] in_data50;
reg			[7:0] in_data51;
reg			[7:0] in_data52;
reg			[7:0] in_data53;
reg			[7:0] in_data54;
reg			[7:0] in_data55;
reg			[7:0] in_data56;
reg			[7:0] in_data57;
reg			[7:0] in_data58;
reg			[7:0] in_data59;
reg			[7:0] in_data60;
reg			[7:0] in_data61;
reg			[7:0] in_data62;
reg			[7:0] in_data63;
reg			[7:0] in_data64;
reg			[7:0] in_data65;
reg			[7:0] in_data66;
reg			[7:0] in_data67;
reg			[7:0] in_data68;
reg			[7:0] in_data69;
reg			[7:0] in_data70;
reg			[7:0] in_data71;
reg			[7:0] in_data72;
reg			[7:0] in_data73;
reg			[7:0] in_data74;
reg			[7:0] in_data75;
reg			[7:0] in_data76;
reg			[7:0] in_data77;
reg			[7:0] in_data78;
reg			[7:0] in_data79;
reg			[7:0] in_data80;
reg			[7:0] in_data81;
reg			[7:0] in_data82;
reg			[7:0] in_data83;
reg			[7:0] in_data84;
reg			[7:0] in_data85;
reg			[7:0] in_data86;
reg			[7:0] in_data87;
reg			[7:0] in_data88;
reg			[7:0] in_data89;
reg			[7:0] in_data90;
reg			[7:0] in_data91;
reg			[7:0] in_data92;
reg			[7:0] in_data93;
reg			[7:0] in_data94;
reg			[7:0] in_data95;
reg			[7:0] in_data96;
reg			[7:0] in_data97;
reg			[7:0] in_data98;
reg			[7:0] in_data99;
reg			[7:0] in_data100;
reg			[7:0] in_data101;
reg			[7:0] in_data102;
reg			[7:0] in_data103;
reg			[7:0] in_data104;
reg			[7:0] in_data105;
reg			[7:0] in_data106;
reg			[7:0] in_data107;
reg			[7:0] in_data108;
reg			[7:0] in_data109;
reg			[7:0] in_data110;
reg			[7:0] in_data111;
reg			[7:0] in_data112;
reg			[7:0] in_data113;
reg			[7:0] in_data114;
reg			[7:0] in_data115;
reg			[7:0] in_data116;
reg			[7:0] in_data117;
reg			[7:0] in_data118;
reg			[7:0] in_data119;
reg			[7:0] in_data120;
reg			[7:0] in_data121;
reg			[7:0] in_data122;
reg			[7:0] in_data123;
reg			[7:0] in_data124;
reg			[7:0] in_data125;
reg			[7:0] in_data126;
reg			[7:0] in_data127;
reg			[7:0] in_data128;
reg			[7:0] in_data129;
reg			[7:0] in_data130;
reg			[7:0] in_data131;
reg			[7:0] in_data132;
reg			[7:0] in_data133;
reg			[7:0] in_data134;
reg			[7:0] in_data135;
reg			[7:0] in_data136;
reg			[7:0] in_data137;
reg			[7:0] in_data138;
reg			[7:0] in_data139;
reg			[7:0] in_data140;
reg			[7:0] in_data141;
reg			[7:0] in_data142;
reg			[7:0] in_data143;
reg			[7:0] in_data144;
reg			[7:0] in_data145;
reg			[7:0] in_data146;
reg			[7:0] in_data147;
reg			[7:0] in_data148;
reg			[7:0] in_data149;
reg			[7:0] in_data150;
reg			[7:0] in_data151;
reg			[7:0] in_data152;
reg			[7:0] in_data153;
reg			[7:0] in_data154;
reg			[7:0] in_data155;
reg			[7:0] in_data156;
reg			[7:0] in_data157;
reg			[7:0] in_data158;
reg			[7:0] in_data159;
reg			[7:0] in_data160;
reg			[7:0] in_data161;
reg			[7:0] in_data162;
reg			[7:0] in_data163;
reg			[7:0] in_data164;
reg			[7:0] in_data165;
reg			[7:0] in_data166;
reg			[7:0] in_data167;
reg			[7:0] in_data168;
reg			[7:0] in_data169;
reg			[7:0] in_data170;
reg			[7:0] in_data171;
reg			[7:0] in_data172;
reg			[7:0] in_data173;
reg			[7:0] in_data174;
reg			[7:0] in_data175;
reg			[7:0] in_data176;
reg			[7:0] in_data177;
reg			[7:0] in_data178;
reg			[7:0] in_data179;
reg			[7:0] in_data180;
reg			[7:0] in_data181;
reg			[7:0] in_data182;
reg			[7:0] in_data183;
reg			[7:0] in_data184;
reg			[7:0] in_data185;
reg			[7:0] in_data186;
reg			[7:0] in_data187;
reg			[7:0] in_data188;
reg			[7:0] in_data189;
reg			[7:0] in_data190;
reg			[7:0] in_data191;
reg			[7:0] in_data192;
reg			[7:0] in_data193;
reg			[7:0] in_data194;
reg			[7:0] in_data195;
reg			[7:0] in_data196;
reg			[7:0] in_data197;
reg			[7:0] in_data198;
reg			[7:0] in_data199;
reg			[7:0] in_data200;
reg			[7:0] in_data201;
reg			[7:0] in_data202;
reg			[7:0] in_data203;
reg			[7:0] in_data204;
reg			[7:0] in_data205;
reg			[7:0] in_data206;
reg			[7:0] in_data207;
reg			[7:0] in_data208;
reg			[7:0] in_data209;
reg			[7:0] in_data210;
reg			[7:0] in_data211;
reg			[7:0] in_data212;
reg			[7:0] in_data213;
reg			[7:0] in_data214;
reg			[7:0] in_data215;
reg			[7:0] in_data216;
reg			[7:0] in_data217;
reg			[7:0] in_data218;
reg			[7:0] in_data219;
reg			[7:0] in_data220;
reg			[7:0] in_data221;
reg			[7:0] in_data222;
reg			[7:0] in_data223;
reg			[7:0] in_data224;
reg			[7:0] in_data225;
reg			[7:0] in_data226;
reg			[7:0] in_data227;
reg			[7:0] in_data228;
reg			[7:0] in_data229;
reg			[7:0] in_data230;
reg			[7:0] in_data231;
reg			[7:0] in_data232;
reg			[7:0] in_data233;
reg			[7:0] in_data234;
reg			[7:0] in_data235;
reg			[7:0] in_data236;
reg			[7:0] in_data237;
reg			[7:0] in_data238;
reg			[7:0] in_data239;
reg			[7:0] in_data240;
reg			[7:0] in_data241;
reg			[7:0] in_data242;
reg			[7:0] in_data243;
reg			[7:0] in_data244;
reg			[7:0] in_data245;
reg			[7:0] in_data246;
reg			[7:0] in_data247;
reg			[7:0] in_data248;
reg			[7:0] in_data249;
reg			[7:0] in_data250;
reg			[7:0] in_data251;
reg			[7:0] in_data252;
reg			[7:0] in_data253;
reg			[7:0] in_data254;
reg			[7:0] in_data255;






/*
 * Store input into memory
 */
reg			[8:0] input_index;
always @(posedge clk) begin
	if (!rst_n) begin
		input_index <= 'd0;
		in_data0 <= 'd0;
		in_data1 <= 'd0;
		in_data2 <= 'd0;
		in_data3 <= 'd0;
		in_data4 <= 'd0;
		in_data5 <= 'd0;
		in_data6 <= 'd0;
		in_data7 <= 'd0;
		in_data8 <= 'd0;
		in_data9 <= 'd0;
		in_data10 <= 'd0;
		in_data11 <= 'd0;
		in_data12 <= 'd0;
		in_data13 <= 'd0;
		in_data14 <= 'd0;
		in_data15 <= 'd0;
		in_data16 <= 'd0;
		in_data17 <= 'd0;
		in_data18 <= 'd0;
		in_data19 <= 'd0;
		in_data20 <= 'd0;
		in_data21 <= 'd0;
		in_data22 <= 'd0;
		in_data23 <= 'd0;
		in_data24 <= 'd0;
		in_data25 <= 'd0;
		in_data26 <= 'd0;
		in_data27 <= 'd0;
		in_data28 <= 'd0;
		in_data29 <= 'd0;
		in_data30 <= 'd0;
		in_data31 <= 'd0;
		in_data32 <= 'd0;
		in_data33 <= 'd0;
		in_data34 <= 'd0;
		in_data35 <= 'd0;
		in_data36 <= 'd0;
		in_data37 <= 'd0;
		in_data38 <= 'd0;
		in_data39 <= 'd0;
		in_data40 <= 'd0;
		in_data41 <= 'd0;
		in_data42 <= 'd0;
		in_data43 <= 'd0;
		in_data44 <= 'd0;
		in_data45 <= 'd0;
		in_data46 <= 'd0;
		in_data47 <= 'd0;
		in_data48 <= 'd0;
		in_data49 <= 'd0;
		in_data50 <= 'd0;
		in_data51 <= 'd0;
		in_data52 <= 'd0;
		in_data53 <= 'd0;
		in_data54 <= 'd0;
		in_data55 <= 'd0;
		in_data56 <= 'd0;
		in_data57 <= 'd0;
		in_data58 <= 'd0;
		in_data59 <= 'd0;
		in_data60 <= 'd0;
		in_data61 <= 'd0;
		in_data62 <= 'd0;
		in_data63 <= 'd0;
		in_data64 <= 'd0;
		in_data65 <= 'd0;
		in_data66 <= 'd0;
		in_data67 <= 'd0;
		in_data68 <= 'd0;
		in_data69 <= 'd0;
		in_data70 <= 'd0;
		in_data71 <= 'd0;
		in_data72 <= 'd0;
		in_data73 <= 'd0;
		in_data74 <= 'd0;
		in_data75 <= 'd0;
		in_data76 <= 'd0;
		in_data77 <= 'd0;
		in_data78 <= 'd0;
		in_data79 <= 'd0;
		in_data80 <= 'd0;
		in_data81 <= 'd0;
		in_data82 <= 'd0;
		in_data83 <= 'd0;
		in_data84 <= 'd0;
		in_data85 <= 'd0;
		in_data86 <= 'd0;
		in_data87 <= 'd0;
		in_data88 <= 'd0;
		in_data89 <= 'd0;
		in_data90 <= 'd0;
		in_data91 <= 'd0;
		in_data92 <= 'd0;
		in_data93 <= 'd0;
		in_data94 <= 'd0;
		in_data95 <= 'd0;
		in_data96 <= 'd0;
		in_data97 <= 'd0;
		in_data98 <= 'd0;
		in_data99 <= 'd0;
		in_data100 <= 'd0;
		in_data101 <= 'd0;
		in_data102 <= 'd0;
		in_data103 <= 'd0;
		in_data104 <= 'd0;
		in_data105 <= 'd0;
		in_data106 <= 'd0;
		in_data107 <= 'd0;
		in_data108 <= 'd0;
		in_data109 <= 'd0;
		in_data110 <= 'd0;
		in_data111 <= 'd0;
		in_data112 <= 'd0;
		in_data113 <= 'd0;
		in_data114 <= 'd0;
		in_data115 <= 'd0;
		in_data116 <= 'd0;
		in_data117 <= 'd0;
		in_data118 <= 'd0;
		in_data119 <= 'd0;
		in_data120 <= 'd0;
		in_data121 <= 'd0;
		in_data122 <= 'd0;
		in_data123 <= 'd0;
		in_data124 <= 'd0;
		in_data125 <= 'd0;
		in_data126 <= 'd0;
		in_data127 <= 'd0;
		in_data128 <= 'd0;
		in_data129 <= 'd0;
		in_data130 <= 'd0;
		in_data131 <= 'd0;
		in_data132 <= 'd0;
		in_data133 <= 'd0;
		in_data134 <= 'd0;
		in_data135 <= 'd0;
		in_data136 <= 'd0;
		in_data137 <= 'd0;
		in_data138 <= 'd0;
		in_data139 <= 'd0;
		in_data140 <= 'd0;
		in_data141 <= 'd0;
		in_data142 <= 'd0;
		in_data143 <= 'd0;
		in_data144 <= 'd0;
		in_data145 <= 'd0;
		in_data146 <= 'd0;
		in_data147 <= 'd0;
		in_data148 <= 'd0;
		in_data149 <= 'd0;
		in_data150 <= 'd0;
		in_data151 <= 'd0;
		in_data152 <= 'd0;
		in_data153 <= 'd0;
		in_data154 <= 'd0;
		in_data155 <= 'd0;
		in_data156 <= 'd0;
		in_data157 <= 'd0;
		in_data158 <= 'd0;
		in_data159 <= 'd0;
		in_data160 <= 'd0;
		in_data161 <= 'd0;
		in_data162 <= 'd0;
		in_data163 <= 'd0;
		in_data164 <= 'd0;
		in_data165 <= 'd0;
		in_data166 <= 'd0;
		in_data167 <= 'd0;
		in_data168 <= 'd0;
		in_data169 <= 'd0;
		in_data170 <= 'd0;
		in_data171 <= 'd0;
		in_data172 <= 'd0;
		in_data173 <= 'd0;
		in_data174 <= 'd0;
		in_data175 <= 'd0;
		in_data176 <= 'd0;
		in_data177 <= 'd0;
		in_data178 <= 'd0;
		in_data179 <= 'd0;
		in_data180 <= 'd0;
		in_data181 <= 'd0;
		in_data182 <= 'd0;
		in_data183 <= 'd0;
		in_data184 <= 'd0;
		in_data185 <= 'd0;
		in_data186 <= 'd0;
		in_data187 <= 'd0;
		in_data188 <= 'd0;
		in_data189 <= 'd0;
		in_data190 <= 'd0;
		in_data191 <= 'd0;
		in_data192 <= 'd0;
		in_data193 <= 'd0;
		in_data194 <= 'd0;
		in_data195 <= 'd0;
		in_data196 <= 'd0;
		in_data197 <= 'd0;
		in_data198 <= 'd0;
		in_data199 <= 'd0;
		in_data200 <= 'd0;
		in_data201 <= 'd0;
		in_data202 <= 'd0;
		in_data203 <= 'd0;
		in_data204 <= 'd0;
		in_data205 <= 'd0;
		in_data206 <= 'd0;
		in_data207 <= 'd0;
		in_data208 <= 'd0;
		in_data209 <= 'd0;
		in_data210 <= 'd0;
		in_data211 <= 'd0;
		in_data212 <= 'd0;
		in_data213 <= 'd0;
		in_data214 <= 'd0;
		in_data215 <= 'd0;
		in_data216 <= 'd0;
		in_data217 <= 'd0;
		in_data218 <= 'd0;
		in_data219 <= 'd0;
		in_data220 <= 'd0;
		in_data221 <= 'd0;
		in_data222 <= 'd0;
		in_data223 <= 'd0;
		in_data224 <= 'd0;
		in_data225 <= 'd0;
		in_data226 <= 'd0;
		in_data227 <= 'd0;
		in_data228 <= 'd0;
		in_data229 <= 'd0;
		in_data230 <= 'd0;
		in_data231 <= 'd0;
		in_data232 <= 'd0;
		in_data233 <= 'd0;
		in_data234 <= 'd0;
		in_data235 <= 'd0;
		in_data236 <= 'd0;
		in_data237 <= 'd0;
		in_data238 <= 'd0;
		in_data239 <= 'd0;
		in_data240 <= 'd0;
		in_data241 <= 'd0;
		in_data242 <= 'd0;
		in_data243 <= 'd0;
		in_data244 <= 'd0;
		in_data245 <= 'd0;
		in_data246 <= 'd0;
		in_data247 <= 'd0;
		in_data248 <= 'd0;
		in_data249 <= 'd0;
		in_data250 <= 'd0;
		in_data251 <= 'd0;
		in_data252 <= 'd0;
		in_data253 <= 'd0;
		in_data254 <= 'd0;
		in_data255 <= 'd0;
	end
	else begin
		if(current_state==`STORE_INPUT || (current_state==`DUMP_OUTPUT)&&in_valid) begin
			input_index <= input_index + 1'b1;
			case(input_index)
				'd0: in_data0 <= in_data;
				'd1: in_data1 <= in_data;
				'd2: in_data2 <= in_data;
				'd3: in_data3 <= in_data;
				'd4: in_data4 <= in_data;
				'd5: in_data5 <= in_data;
				'd6: in_data6 <= in_data;
				'd7: in_data7 <= in_data;
				'd8: in_data8 <= in_data;
				'd9: in_data9 <= in_data;
				'd10: in_data10 <= in_data;
				'd11: in_data11 <= in_data;
				'd12: in_data12 <= in_data;
				'd13: in_data13 <= in_data;
				'd14: in_data14 <= in_data;
				'd15: in_data15 <= in_data;
				'd16: in_data16 <= in_data;
				'd17: in_data17 <= in_data;
				'd18: in_data18 <= in_data;
				'd19: in_data19 <= in_data;
				'd20: in_data20 <= in_data;
				'd21: in_data21 <= in_data;
				'd22: in_data22 <= in_data;
				'd23: in_data23 <= in_data;
				'd24: in_data24 <= in_data;
				'd25: in_data25 <= in_data;
				'd26: in_data26 <= in_data;
				'd27: in_data27 <= in_data;
				'd28: in_data28 <= in_data;
				'd29: in_data29 <= in_data;
				'd30: in_data30 <= in_data;
				'd31: in_data31 <= in_data;
				'd32: in_data32 <= in_data;
				'd33: in_data33 <= in_data;
				'd34: in_data34 <= in_data;
				'd35: in_data35 <= in_data;
				'd36: in_data36 <= in_data;
				'd37: in_data37 <= in_data;
				'd38: in_data38 <= in_data;
				'd39: in_data39 <= in_data;
				'd40: in_data40 <= in_data;
				'd41: in_data41 <= in_data;
				'd42: in_data42 <= in_data;
				'd43: in_data43 <= in_data;
				'd44: in_data44 <= in_data;
				'd45: in_data45 <= in_data;
				'd46: in_data46 <= in_data;
				'd47: in_data47 <= in_data;
				'd48: in_data48 <= in_data;
				'd49: in_data49 <= in_data;
				'd50: in_data50 <= in_data;
				'd51: in_data51 <= in_data;
				'd52: in_data52 <= in_data;
				'd53: in_data53 <= in_data;
				'd54: in_data54 <= in_data;
				'd55: in_data55 <= in_data;
				'd56: in_data56 <= in_data;
				'd57: in_data57 <= in_data;
				'd58: in_data58 <= in_data;
				'd59: in_data59 <= in_data;
				'd60: in_data60 <= in_data;
				'd61: in_data61 <= in_data;
				'd62: in_data62 <= in_data;
				'd63: in_data63 <= in_data;
				'd64: in_data64 <= in_data;
				'd65: in_data65 <= in_data;
				'd66: in_data66 <= in_data;
				'd67: in_data67 <= in_data;
				'd68: in_data68 <= in_data;
				'd69: in_data69 <= in_data;
				'd70: in_data70 <= in_data;
				'd71: in_data71 <= in_data;
				'd72: in_data72 <= in_data;
				'd73: in_data73 <= in_data;
				'd74: in_data74 <= in_data;
				'd75: in_data75 <= in_data;
				'd76: in_data76 <= in_data;
				'd77: in_data77 <= in_data;
				'd78: in_data78 <= in_data;
				'd79: in_data79 <= in_data;
				'd80: in_data80 <= in_data;
				'd81: in_data81 <= in_data;
				'd82: in_data82 <= in_data;
				'd83: in_data83 <= in_data;
				'd84: in_data84 <= in_data;
				'd85: in_data85 <= in_data;
				'd86: in_data86 <= in_data;
				'd87: in_data87 <= in_data;
				'd88: in_data88 <= in_data;
				'd89: in_data89 <= in_data;
				'd90: in_data90 <= in_data;
				'd91: in_data91 <= in_data;
				'd92: in_data92 <= in_data;
				'd93: in_data93 <= in_data;
				'd94: in_data94 <= in_data;
				'd95: in_data95 <= in_data;
				'd96: in_data96 <= in_data;
				'd97: in_data97 <= in_data;
				'd98: in_data98 <= in_data;
				'd99: in_data99 <= in_data;
				'd100: in_data100 <= in_data;
				'd101: in_data101 <= in_data;
				'd102: in_data102 <= in_data;
				'd103: in_data103 <= in_data;
				'd104: in_data104 <= in_data;
				'd105: in_data105 <= in_data;
				'd106: in_data106 <= in_data;
				'd107: in_data107 <= in_data;
				'd108: in_data108 <= in_data;
				'd109: in_data109 <= in_data;
				'd110: in_data110 <= in_data;
				'd111: in_data111 <= in_data;
				'd112: in_data112 <= in_data;
				'd113: in_data113 <= in_data;
				'd114: in_data114 <= in_data;
				'd115: in_data115 <= in_data;
				'd116: in_data116 <= in_data;
				'd117: in_data117 <= in_data;
				'd118: in_data118 <= in_data;
				'd119: in_data119 <= in_data;
				'd120: in_data120 <= in_data;
				'd121: in_data121 <= in_data;
				'd122: in_data122 <= in_data;
				'd123: in_data123 <= in_data;
				'd124: in_data124 <= in_data;
				'd125: in_data125 <= in_data;
				'd126: in_data126 <= in_data;
				'd127: in_data127 <= in_data;
				'd128: in_data128 <= in_data;
				'd129: in_data129 <= in_data;
				'd130: in_data130 <= in_data;
				'd131: in_data131 <= in_data;
				'd132: in_data132 <= in_data;
				'd133: in_data133 <= in_data;
				'd134: in_data134 <= in_data;
				'd135: in_data135 <= in_data;
				'd136: in_data136 <= in_data;
				'd137: in_data137 <= in_data;
				'd138: in_data138 <= in_data;
				'd139: in_data139 <= in_data;
				'd140: in_data140 <= in_data;
				'd141: in_data141 <= in_data;
				'd142: in_data142 <= in_data;
				'd143: in_data143 <= in_data;
				'd144: in_data144 <= in_data;
				'd145: in_data145 <= in_data;
				'd146: in_data146 <= in_data;
				'd147: in_data147 <= in_data;
				'd148: in_data148 <= in_data;
				'd149: in_data149 <= in_data;
				'd150: in_data150 <= in_data;
				'd151: in_data151 <= in_data;
				'd152: in_data152 <= in_data;
				'd153: in_data153 <= in_data;
				'd154: in_data154 <= in_data;
				'd155: in_data155 <= in_data;
				'd156: in_data156 <= in_data;
				'd157: in_data157 <= in_data;
				'd158: in_data158 <= in_data;
				'd159: in_data159 <= in_data;
				'd160: in_data160 <= in_data;
				'd161: in_data161 <= in_data;
				'd162: in_data162 <= in_data;
				'd163: in_data163 <= in_data;
				'd164: in_data164 <= in_data;
				'd165: in_data165 <= in_data;
				'd166: in_data166 <= in_data;
				'd167: in_data167 <= in_data;
				'd168: in_data168 <= in_data;
				'd169: in_data169 <= in_data;
				'd170: in_data170 <= in_data;
				'd171: in_data171 <= in_data;
				'd172: in_data172 <= in_data;
				'd173: in_data173 <= in_data;
				'd174: in_data174 <= in_data;
				'd175: in_data175 <= in_data;
				'd176: in_data176 <= in_data;
				'd177: in_data177 <= in_data;
				'd178: in_data178 <= in_data;
				'd179: in_data179 <= in_data;
				'd180: in_data180 <= in_data;
				'd181: in_data181 <= in_data;
				'd182: in_data182 <= in_data;
				'd183: in_data183 <= in_data;
				'd184: in_data184 <= in_data;
				'd185: in_data185 <= in_data;
				'd186: in_data186 <= in_data;
				'd187: in_data187 <= in_data;
				'd188: in_data188 <= in_data;
				'd189: in_data189 <= in_data;
				'd190: in_data190 <= in_data;
				'd191: in_data191 <= in_data;
				'd192: in_data192 <= in_data;
				'd193: in_data193 <= in_data;
				'd194: in_data194 <= in_data;
				'd195: in_data195 <= in_data;
				'd196: in_data196 <= in_data;
				'd197: in_data197 <= in_data;
				'd198: in_data198 <= in_data;
				'd199: in_data199 <= in_data;
				'd200: in_data200 <= in_data;
				'd201: in_data201 <= in_data;
				'd202: in_data202 <= in_data;
				'd203: in_data203 <= in_data;
				'd204: in_data204 <= in_data;
				'd205: in_data205 <= in_data;
				'd206: in_data206 <= in_data;
				'd207: in_data207 <= in_data;
				'd208: in_data208 <= in_data;
				'd209: in_data209 <= in_data;
				'd210: in_data210 <= in_data;
				'd211: in_data211 <= in_data;
				'd212: in_data212 <= in_data;
				'd213: in_data213 <= in_data;
				'd214: in_data214 <= in_data;
				'd215: in_data215 <= in_data;
				'd216: in_data216 <= in_data;
				'd217: in_data217 <= in_data;
				'd218: in_data218 <= in_data;
				'd219: in_data219 <= in_data;
				'd220: in_data220 <= in_data;
				'd221: in_data221 <= in_data;
				'd222: in_data222 <= in_data;
				'd223: in_data223 <= in_data;
				'd224: in_data224 <= in_data;
				'd225: in_data225 <= in_data;
				'd226: in_data226 <= in_data;
				'd227: in_data227 <= in_data;
				'd228: in_data228 <= in_data;
				'd229: in_data229 <= in_data;
				'd230: in_data230 <= in_data;
				'd231: in_data231 <= in_data;
				'd232: in_data232 <= in_data;
				'd233: in_data233 <= in_data;
				'd234: in_data234 <= in_data;
				'd235: in_data235 <= in_data;
				'd236: in_data236 <= in_data;
				'd237: in_data237 <= in_data;
				'd238: in_data238 <= in_data;
				'd239: in_data239 <= in_data;
				'd240: in_data240 <= in_data;
				'd241: in_data241 <= in_data;
				'd242: in_data242 <= in_data;
				'd243: in_data243 <= in_data;
				'd244: in_data244 <= in_data;
				'd245: in_data245 <= in_data;
				'd246: in_data246 <= in_data;
				'd247: in_data247 <= in_data;
				'd248: in_data248 <= in_data;
				'd249: in_data249 <= in_data;
				'd250: in_data250 <= in_data;
				'd251: in_data251 <= in_data;
				'd252: in_data252 <= in_data;
				'd253: in_data253 <= in_data;
				'd254: in_data254 <= in_data;
				'd255: in_data255 <= in_data;
			endcase
		end
		else if(current_state == `INIT_STATE) begin //Clear Input Datas (RESET)
			input_index <= 'd0;
			in_data0 <= 'd0;
			in_data1 <= 'd0;
			in_data2 <= 'd0;
			in_data3 <= 'd0;
			in_data4 <= 'd0;
			in_data5 <= 'd0;
			in_data6 <= 'd0;
			in_data7 <= 'd0;
			in_data8 <= 'd0;
			in_data9 <= 'd0;
			in_data10 <= 'd0;
			in_data11 <= 'd0;
			in_data12 <= 'd0;
			in_data13 <= 'd0;
			in_data14 <= 'd0;
			in_data15 <= 'd0;
			in_data16 <= 'd0;
			in_data17 <= 'd0;
			in_data18 <= 'd0;
			in_data19 <= 'd0;
			in_data20 <= 'd0;
			in_data21 <= 'd0;
			in_data22 <= 'd0;
			in_data23 <= 'd0;
			in_data24 <= 'd0;
			in_data25 <= 'd0;
			in_data26 <= 'd0;
			in_data27 <= 'd0;
			in_data28 <= 'd0;
			in_data29 <= 'd0;
			in_data30 <= 'd0;
			in_data31 <= 'd0;
			in_data32 <= 'd0;
			in_data33 <= 'd0;
			in_data34 <= 'd0;
			in_data35 <= 'd0;
			in_data36 <= 'd0;
			in_data37 <= 'd0;
			in_data38 <= 'd0;
			in_data39 <= 'd0;
			in_data40 <= 'd0;
			in_data41 <= 'd0;
			in_data42 <= 'd0;
			in_data43 <= 'd0;
			in_data44 <= 'd0;
			in_data45 <= 'd0;
			in_data46 <= 'd0;
			in_data47 <= 'd0;
			in_data48 <= 'd0;
			in_data49 <= 'd0;
			in_data50 <= 'd0;
			in_data51 <= 'd0;
			in_data52 <= 'd0;
			in_data53 <= 'd0;
			in_data54 <= 'd0;
			in_data55 <= 'd0;
			in_data56 <= 'd0;
			in_data57 <= 'd0;
			in_data58 <= 'd0;
			in_data59 <= 'd0;
			in_data60 <= 'd0;
			in_data61 <= 'd0;
			in_data62 <= 'd0;
			in_data63 <= 'd0;
			in_data64 <= 'd0;
			in_data65 <= 'd0;
			in_data66 <= 'd0;
			in_data67 <= 'd0;
			in_data68 <= 'd0;
			in_data69 <= 'd0;
			in_data70 <= 'd0;
			in_data71 <= 'd0;
			in_data72 <= 'd0;
			in_data73 <= 'd0;
			in_data74 <= 'd0;
			in_data75 <= 'd0;
			in_data76 <= 'd0;
			in_data77 <= 'd0;
			in_data78 <= 'd0;
			in_data79 <= 'd0;
			in_data80 <= 'd0;
			in_data81 <= 'd0;
			in_data82 <= 'd0;
			in_data83 <= 'd0;
			in_data84 <= 'd0;
			in_data85 <= 'd0;
			in_data86 <= 'd0;
			in_data87 <= 'd0;
			in_data88 <= 'd0;
			in_data89 <= 'd0;
			in_data90 <= 'd0;
			in_data91 <= 'd0;
			in_data92 <= 'd0;
			in_data93 <= 'd0;
			in_data94 <= 'd0;
			in_data95 <= 'd0;
			in_data96 <= 'd0;
			in_data97 <= 'd0;
			in_data98 <= 'd0;
			in_data99 <= 'd0;
			in_data100 <= 'd0;
			in_data101 <= 'd0;
			in_data102 <= 'd0;
			in_data103 <= 'd0;
			in_data104 <= 'd0;
			in_data105 <= 'd0;
			in_data106 <= 'd0;
			in_data107 <= 'd0;
			in_data108 <= 'd0;
			in_data109 <= 'd0;
			in_data110 <= 'd0;
			in_data111 <= 'd0;
			in_data112 <= 'd0;
			in_data113 <= 'd0;
			in_data114 <= 'd0;
			in_data115 <= 'd0;
			in_data116 <= 'd0;
			in_data117 <= 'd0;
			in_data118 <= 'd0;
			in_data119 <= 'd0;
			in_data120 <= 'd0;
			in_data121 <= 'd0;
			in_data122 <= 'd0;
			in_data123 <= 'd0;
			in_data124 <= 'd0;
			in_data125 <= 'd0;
			in_data126 <= 'd0;
			in_data127 <= 'd0;
			in_data128 <= 'd0;
			in_data129 <= 'd0;
			in_data130 <= 'd0;
			in_data131 <= 'd0;
			in_data132 <= 'd0;
			in_data133 <= 'd0;
			in_data134 <= 'd0;
			in_data135 <= 'd0;
			in_data136 <= 'd0;
			in_data137 <= 'd0;
			in_data138 <= 'd0;
			in_data139 <= 'd0;
			in_data140 <= 'd0;
			in_data141 <= 'd0;
			in_data142 <= 'd0;
			in_data143 <= 'd0;
			in_data144 <= 'd0;
			in_data145 <= 'd0;
			in_data146 <= 'd0;
			in_data147 <= 'd0;
			in_data148 <= 'd0;
			in_data149 <= 'd0;
			in_data150 <= 'd0;
			in_data151 <= 'd0;
			in_data152 <= 'd0;
			in_data153 <= 'd0;
			in_data154 <= 'd0;
			in_data155 <= 'd0;
			in_data156 <= 'd0;
			in_data157 <= 'd0;
			in_data158 <= 'd0;
			in_data159 <= 'd0;
			in_data160 <= 'd0;
			in_data161 <= 'd0;
			in_data162 <= 'd0;
			in_data163 <= 'd0;
			in_data164 <= 'd0;
			in_data165 <= 'd0;
			in_data166 <= 'd0;
			in_data167 <= 'd0;
			in_data168 <= 'd0;
			in_data169 <= 'd0;
			in_data170 <= 'd0;
			in_data171 <= 'd0;
			in_data172 <= 'd0;
			in_data173 <= 'd0;
			in_data174 <= 'd0;
			in_data175 <= 'd0;
			in_data176 <= 'd0;
			in_data177 <= 'd0;
			in_data178 <= 'd0;
			in_data179 <= 'd0;
			in_data180 <= 'd0;
			in_data181 <= 'd0;
			in_data182 <= 'd0;
			in_data183 <= 'd0;
			in_data184 <= 'd0;
			in_data185 <= 'd0;
			in_data186 <= 'd0;
			in_data187 <= 'd0;
			in_data188 <= 'd0;
			in_data189 <= 'd0;
			in_data190 <= 'd0;
			in_data191 <= 'd0;
			in_data192 <= 'd0;
			in_data193 <= 'd0;
			in_data194 <= 'd0;
			in_data195 <= 'd0;
			in_data196 <= 'd0;
			in_data197 <= 'd0;
			in_data198 <= 'd0;
			in_data199 <= 'd0;
			in_data200 <= 'd0;
			in_data201 <= 'd0;
			in_data202 <= 'd0;
			in_data203 <= 'd0;
			in_data204 <= 'd0;
			in_data205 <= 'd0;
			in_data206 <= 'd0;
			in_data207 <= 'd0;
			in_data208 <= 'd0;
			in_data209 <= 'd0;
			in_data210 <= 'd0;
			in_data211 <= 'd0;
			in_data212 <= 'd0;
			in_data213 <= 'd0;
			in_data214 <= 'd0;
			in_data215 <= 'd0;
			in_data216 <= 'd0;
			in_data217 <= 'd0;
			in_data218 <= 'd0;
			in_data219 <= 'd0;
			in_data220 <= 'd0;
			in_data221 <= 'd0;
			in_data222 <= 'd0;
			in_data223 <= 'd0;
			in_data224 <= 'd0;
			in_data225 <= 'd0;
			in_data226 <= 'd0;
			in_data227 <= 'd0;
			in_data228 <= 'd0;
			in_data229 <= 'd0;
			in_data230 <= 'd0;
			in_data231 <= 'd0;
			in_data232 <= 'd0;
			in_data233 <= 'd0;
			in_data234 <= 'd0;
			in_data235 <= 'd0;
			in_data236 <= 'd0;
			in_data237 <= 'd0;
			in_data238 <= 'd0;
			in_data239 <= 'd0;
			in_data240 <= 'd0;
			in_data241 <= 'd0;
			in_data242 <= 'd0;
			in_data243 <= 'd0;
			in_data244 <= 'd0;
			in_data245 <= 'd0;
			in_data246 <= 'd0;
			in_data247 <= 'd0;
			in_data248 <= 'd0;
			in_data249 <= 'd0;
			in_data250 <= 'd0;
			in_data251 <= 'd0;
			in_data252 <= 'd0;
			in_data253 <= 'd0;
			in_data254 <= 'd0;
			in_data255 <= 'd0;
		end
	end
end



/*
 * Bubble Sort
 * -------------
 * - Break into ODD and EVEN parts
 * - INDEX of OUTER LOOP set to # of INPUTS (for now)
 */

reg				[8:0] outer_loop;
always @(posedge clk) begin
	if (!rst_n) begin
		outer_loop <= 'd0;	
	end
	else if (current_state == `BUBBLE_SORT) begin
		if(outer_loop < input_index) begin
			outer_loop <= outer_loop + 1'b1;
		end
		else begin
			outer_loop <= outer_loop;
		end
	end
	else if (current_state == `INIT_STATE) begin
		outer_loop <= 'd0;
	end
	else begin
		outer_loop <= outer_loop;
	end
end





/*
 * Dump Output
 */
 reg			[8:0] output_index;
always @(posedge clk) begin
	if (!rst_n) begin
		output_index <= 'd0;		
	end
	else if (current_state == `DUMP_OUTPUT) begin//Start to Dump outputs
		if (output_index < input_index) begin
			output_index <= output_index + 1'b1;
			out_valid <= 1'b1;
			case(output_index)
				'd0: out_data <= in_data0;
				'd1: out_data <= in_data1;
				'd2: out_data <= in_data2;
				'd3: out_data <= in_data3;
				'd4: out_data <= in_data4;
				'd5: out_data <= in_data5;
				'd6: out_data <= in_data6;
				'd7: out_data <= in_data7;
				'd8: out_data <= in_data8;
				'd9: out_data <= in_data9;
				'd10: out_data <= in_data10;
				'd11: out_data <= in_data11;
				'd12: out_data <= in_data12;
				'd13: out_data <= in_data13;
				'd14: out_data <= in_data14;
				'd15: out_data <= in_data15;
				'd16: out_data <= in_data16;
				'd17: out_data <= in_data17;
				'd18: out_data <= in_data18;
				'd19: out_data <= in_data19;
				'd20: out_data <= in_data20;
				'd21: out_data <= in_data21;
				'd22: out_data <= in_data22;
				'd23: out_data <= in_data23;
				'd24: out_data <= in_data24;
				'd25: out_data <= in_data25;
				'd26: out_data <= in_data26;
				'd27: out_data <= in_data27;
				'd28: out_data <= in_data28;
				'd29: out_data <= in_data29;
				'd30: out_data <= in_data30;
				'd31: out_data <= in_data31;
				'd32: out_data <= in_data32;
				'd33: out_data <= in_data33;
				'd34: out_data <= in_data34;
				'd35: out_data <= in_data35;
				'd36: out_data <= in_data36;
				'd37: out_data <= in_data37;
				'd38: out_data <= in_data38;
				'd39: out_data <= in_data39;
				'd40: out_data <= in_data40;
				'd41: out_data <= in_data41;
				'd42: out_data <= in_data42;
				'd43: out_data <= in_data43;
				'd44: out_data <= in_data44;
				'd45: out_data <= in_data45;
				'd46: out_data <= in_data46;
				'd47: out_data <= in_data47;
				'd48: out_data <= in_data48;
				'd49: out_data <= in_data49;
				'd50: out_data <= in_data50;
				'd51: out_data <= in_data51;
				'd52: out_data <= in_data52;
				'd53: out_data <= in_data53;
				'd54: out_data <= in_data54;
				'd55: out_data <= in_data55;
				'd56: out_data <= in_data56;
				'd57: out_data <= in_data57;
				'd58: out_data <= in_data58;
				'd59: out_data <= in_data59;
				'd60: out_data <= in_data60;
				'd61: out_data <= in_data61;
				'd62: out_data <= in_data62;
				'd63: out_data <= in_data63;
				'd64: out_data <= in_data64;
				'd65: out_data <= in_data65;
				'd66: out_data <= in_data66;
				'd67: out_data <= in_data67;
				'd68: out_data <= in_data68;
				'd69: out_data <= in_data69;
				'd70: out_data <= in_data70;
				'd71: out_data <= in_data71;
				'd72: out_data <= in_data72;
				'd73: out_data <= in_data73;
				'd74: out_data <= in_data74;
				'd75: out_data <= in_data75;
				'd76: out_data <= in_data76;
				'd77: out_data <= in_data77;
				'd78: out_data <= in_data78;
				'd79: out_data <= in_data79;
				'd80: out_data <= in_data80;
				'd81: out_data <= in_data81;
				'd82: out_data <= in_data82;
				'd83: out_data <= in_data83;
				'd84: out_data <= in_data84;
				'd85: out_data <= in_data85;
				'd86: out_data <= in_data86;
				'd87: out_data <= in_data87;
				'd88: out_data <= in_data88;
				'd89: out_data <= in_data89;
				'd90: out_data <= in_data90;
				'd91: out_data <= in_data91;
				'd92: out_data <= in_data92;
				'd93: out_data <= in_data93;
				'd94: out_data <= in_data94;
				'd95: out_data <= in_data95;
				'd96: out_data <= in_data96;
				'd97: out_data <= in_data97;
				'd98: out_data <= in_data98;
				'd99: out_data <= in_data99;
				'd100: out_data <= in_data100;
				'd101: out_data <= in_data101;
				'd102: out_data <= in_data102;
				'd103: out_data <= in_data103;
				'd104: out_data <= in_data104;
				'd105: out_data <= in_data105;
				'd106: out_data <= in_data106;
				'd107: out_data <= in_data107;
				'd108: out_data <= in_data108;
				'd109: out_data <= in_data109;
				'd110: out_data <= in_data110;
				'd111: out_data <= in_data111;
				'd112: out_data <= in_data112;
				'd113: out_data <= in_data113;
				'd114: out_data <= in_data114;
				'd115: out_data <= in_data115;
				'd116: out_data <= in_data116;
				'd117: out_data <= in_data117;
				'd118: out_data <= in_data118;
				'd119: out_data <= in_data119;
				'd120: out_data <= in_data120;
				'd121: out_data <= in_data121;
				'd122: out_data <= in_data122;
				'd123: out_data <= in_data123;
				'd124: out_data <= in_data124;
				'd125: out_data <= in_data125;
				'd126: out_data <= in_data126;
				'd127: out_data <= in_data127;
				'd128: out_data <= in_data128;
				'd129: out_data <= in_data129;
				'd130: out_data <= in_data130;
				'd131: out_data <= in_data131;
				'd132: out_data <= in_data132;
				'd133: out_data <= in_data133;
				'd134: out_data <= in_data134;
				'd135: out_data <= in_data135;
				'd136: out_data <= in_data136;
				'd137: out_data <= in_data137;
				'd138: out_data <= in_data138;
				'd139: out_data <= in_data139;
				'd140: out_data <= in_data140;
				'd141: out_data <= in_data141;
				'd142: out_data <= in_data142;
				'd143: out_data <= in_data143;
				'd144: out_data <= in_data144;
				'd145: out_data <= in_data145;
				'd146: out_data <= in_data146;
				'd147: out_data <= in_data147;
				'd148: out_data <= in_data148;
				'd149: out_data <= in_data149;
				'd150: out_data <= in_data150;
				'd151: out_data <= in_data151;
				'd152: out_data <= in_data152;
				'd153: out_data <= in_data153;
				'd154: out_data <= in_data154;
				'd155: out_data <= in_data155;
				'd156: out_data <= in_data156;
				'd157: out_data <= in_data157;
				'd158: out_data <= in_data158;
				'd159: out_data <= in_data159;
				'd160: out_data <= in_data160;
				'd161: out_data <= in_data161;
				'd162: out_data <= in_data162;
				'd163: out_data <= in_data163;
				'd164: out_data <= in_data164;
				'd165: out_data <= in_data165;
				'd166: out_data <= in_data166;
				'd167: out_data <= in_data167;
				'd168: out_data <= in_data168;
				'd169: out_data <= in_data169;
				'd170: out_data <= in_data170;
				'd171: out_data <= in_data171;
				'd172: out_data <= in_data172;
				'd173: out_data <= in_data173;
				'd174: out_data <= in_data174;
				'd175: out_data <= in_data175;
				'd176: out_data <= in_data176;
				'd177: out_data <= in_data177;
				'd178: out_data <= in_data178;
				'd179: out_data <= in_data179;
				'd180: out_data <= in_data180;
				'd181: out_data <= in_data181;
				'd182: out_data <= in_data182;
				'd183: out_data <= in_data183;
				'd184: out_data <= in_data184;
				'd185: out_data <= in_data185;
				'd186: out_data <= in_data186;
				'd187: out_data <= in_data187;
				'd188: out_data <= in_data188;
				'd189: out_data <= in_data189;
				'd190: out_data <= in_data190;
				'd191: out_data <= in_data191;
				'd192: out_data <= in_data192;
				'd193: out_data <= in_data193;
				'd194: out_data <= in_data194;
				'd195: out_data <= in_data195;
				'd196: out_data <= in_data196;
				'd197: out_data <= in_data197;
				'd198: out_data <= in_data198;
				'd199: out_data <= in_data199;
				'd200: out_data <= in_data200;
				'd201: out_data <= in_data201;
				'd202: out_data <= in_data202;
				'd203: out_data <= in_data203;
				'd204: out_data <= in_data204;
				'd205: out_data <= in_data205;
				'd206: out_data <= in_data206;
				'd207: out_data <= in_data207;
				'd208: out_data <= in_data208;
				'd209: out_data <= in_data209;
				'd210: out_data <= in_data210;
				'd211: out_data <= in_data211;
				'd212: out_data <= in_data212;
				'd213: out_data <= in_data213;
				'd214: out_data <= in_data214;
				'd215: out_data <= in_data215;
				'd216: out_data <= in_data216;
				'd217: out_data <= in_data217;
				'd218: out_data <= in_data218;
				'd219: out_data <= in_data219;
				'd220: out_data <= in_data220;
				'd221: out_data <= in_data221;
				'd222: out_data <= in_data222;
				'd223: out_data <= in_data223;
				'd224: out_data <= in_data224;
				'd225: out_data <= in_data225;
				'd226: out_data <= in_data226;
				'd227: out_data <= in_data227;
				'd228: out_data <= in_data228;
				'd229: out_data <= in_data229;
				'd230: out_data <= in_data230;
				'd231: out_data <= in_data231;
				'd232: out_data <= in_data232;
				'd233: out_data <= in_data233;
				'd234: out_data <= in_data234;
				'd235: out_data <= in_data235;
				'd236: out_data <= in_data236;
				'd237: out_data <= in_data237;
				'd238: out_data <= in_data238;
				'd239: out_data <= in_data239;
				'd240: out_data <= in_data240;
				'd241: out_data <= in_data241;
				'd242: out_data <= in_data242;
				'd243: out_data <= in_data243;
				'd244: out_data <= in_data244;
				'd245: out_data <= in_data245;
				'd246: out_data <= in_data246;
				'd247: out_data <= in_data247;
				'd248: out_data <= in_data248;
				'd249: out_data <= in_data249;
				'd250: out_data <= in_data250;
				'd251: out_data <= in_data251;
				'd252: out_data <= in_data252;
				'd253: out_data <= in_data253;
				'd254: out_data <= in_data254;
				'd255: out_data <= in_data255;
				default: out_data <= out_data;
			endcase
		end
		else begin
			out_data <= out_data;
		end
	end
	else if (current_state == `INIT_STATE) begin//finish dumping output and return to init state
		out_data <= 'd0;
		out_valid <= 1'b0;
		output_index <= 1'b0;
	end
end



/*
 * Combinational Block for exchaging elements of Bubble Sort
 */


always @(posedge clk) begin
	if (current_state == `BUBBLE_SORT) begin
		if(outer_loop[0:0] == 1'b1) begin //odd
			if(in_data1 < in_data2) begin
				in_data1 <= in_data2;
				in_data2 <= in_data1;
			end
			if(in_data3 < in_data4) begin
				in_data3 <= in_data4;
				in_data4 <= in_data3;
			end
			if(in_data5 < in_data6) begin
				in_data5 <= in_data6;
				in_data6 <= in_data5;
			end
			if(in_data7 < in_data8) begin
				in_data7 <= in_data8;
				in_data8 <= in_data7;
			end
			if(in_data9 < in_data10) begin
				in_data9 <= in_data10;
				in_data10 <= in_data9;
			end
			if(in_data11 < in_data12) begin
				in_data11 <= in_data12;
				in_data12 <= in_data11;
			end
			if(in_data13 < in_data14) begin
				in_data13 <= in_data14;
				in_data14 <= in_data13;
			end
			if(in_data15 < in_data16) begin
				in_data15 <= in_data16;
				in_data16 <= in_data15;
			end
			if(in_data17 < in_data18) begin
				in_data17 <= in_data18;
				in_data18 <= in_data17;
			end
			if(in_data19 < in_data20) begin
				in_data19 <= in_data20;
				in_data20 <= in_data19;
			end
			if(in_data21 < in_data22) begin
				in_data21 <= in_data22;
				in_data22 <= in_data21;
			end
			if(in_data23 < in_data24) begin
				in_data23 <= in_data24;
				in_data24 <= in_data23;
			end
			if(in_data25 < in_data26) begin
				in_data25 <= in_data26;
				in_data26 <= in_data25;
			end
			if(in_data27 < in_data28) begin
				in_data27 <= in_data28;
				in_data28 <= in_data27;
			end
			if(in_data29 < in_data30) begin
				in_data29 <= in_data30;
				in_data30 <= in_data29;
			end
			if(in_data31 < in_data32) begin
				in_data31 <= in_data32;
				in_data32 <= in_data31;
			end
			if(in_data33 < in_data34) begin
				in_data33 <= in_data34;
				in_data34 <= in_data33;
			end
			if(in_data35 < in_data36) begin
				in_data35 <= in_data36;
				in_data36 <= in_data35;
			end
			if(in_data37 < in_data38) begin
				in_data37 <= in_data38;
				in_data38 <= in_data37;
			end
			if(in_data39 < in_data40) begin
				in_data39 <= in_data40;
				in_data40 <= in_data39;
			end
			if(in_data41 < in_data42) begin
				in_data41 <= in_data42;
				in_data42 <= in_data41;
			end
			if(in_data43 < in_data44) begin
				in_data43 <= in_data44;
				in_data44 <= in_data43;
			end
			if(in_data45 < in_data46) begin
				in_data45 <= in_data46;
				in_data46 <= in_data45;
			end
			if(in_data47 < in_data48) begin
				in_data47 <= in_data48;
				in_data48 <= in_data47;
			end
			if(in_data49 < in_data50) begin
				in_data49 <= in_data50;
				in_data50 <= in_data49;
			end
			if(in_data51 < in_data52) begin
				in_data51 <= in_data52;
				in_data52 <= in_data51;
			end
			if(in_data53 < in_data54) begin
				in_data53 <= in_data54;
				in_data54 <= in_data53;
			end
			if(in_data55 < in_data56) begin
				in_data55 <= in_data56;
				in_data56 <= in_data55;
			end
			if(in_data57 < in_data58) begin
				in_data57 <= in_data58;
				in_data58 <= in_data57;
			end
			if(in_data59 < in_data60) begin
				in_data59 <= in_data60;
				in_data60 <= in_data59;
			end
			if(in_data61 < in_data62) begin
				in_data61 <= in_data62;
				in_data62 <= in_data61;
			end
			if(in_data63 < in_data64) begin
				in_data63 <= in_data64;
				in_data64 <= in_data63;
			end
			if(in_data65 < in_data66) begin
				in_data65 <= in_data66;
				in_data66 <= in_data65;
			end
			if(in_data67 < in_data68) begin
				in_data67 <= in_data68;
				in_data68 <= in_data67;
			end
			if(in_data69 < in_data70) begin
				in_data69 <= in_data70;
				in_data70 <= in_data69;
			end
			if(in_data71 < in_data72) begin
				in_data71 <= in_data72;
				in_data72 <= in_data71;
			end
			if(in_data73 < in_data74) begin
				in_data73 <= in_data74;
				in_data74 <= in_data73;
			end
			if(in_data75 < in_data76) begin
				in_data75 <= in_data76;
				in_data76 <= in_data75;
			end
			if(in_data77 < in_data78) begin
				in_data77 <= in_data78;
				in_data78 <= in_data77;
			end
			if(in_data79 < in_data80) begin
				in_data79 <= in_data80;
				in_data80 <= in_data79;
			end
			if(in_data81 < in_data82) begin
				in_data81 <= in_data82;
				in_data82 <= in_data81;
			end
			if(in_data83 < in_data84) begin
				in_data83 <= in_data84;
				in_data84 <= in_data83;
			end
			if(in_data85 < in_data86) begin
				in_data85 <= in_data86;
				in_data86 <= in_data85;
			end
			if(in_data87 < in_data88) begin
				in_data87 <= in_data88;
				in_data88 <= in_data87;
			end
			if(in_data89 < in_data90) begin
				in_data89 <= in_data90;
				in_data90 <= in_data89;
			end
			if(in_data91 < in_data92) begin
				in_data91 <= in_data92;
				in_data92 <= in_data91;
			end
			if(in_data93 < in_data94) begin
				in_data93 <= in_data94;
				in_data94 <= in_data93;
			end
			if(in_data95 < in_data96) begin
				in_data95 <= in_data96;
				in_data96 <= in_data95;
			end
			if(in_data97 < in_data98) begin
				in_data97 <= in_data98;
				in_data98 <= in_data97;
			end
			if(in_data99 < in_data100) begin
				in_data99 <= in_data100;
				in_data100 <= in_data99;
			end
			if(in_data101 < in_data102) begin
				in_data101 <= in_data102;
				in_data102 <= in_data101;
			end
			if(in_data103 < in_data104) begin
				in_data103 <= in_data104;
				in_data104 <= in_data103;
			end
			if(in_data105 < in_data106) begin
				in_data105 <= in_data106;
				in_data106 <= in_data105;
			end
			if(in_data107 < in_data108) begin
				in_data107 <= in_data108;
				in_data108 <= in_data107;
			end
			if(in_data109 < in_data110) begin
				in_data109 <= in_data110;
				in_data110 <= in_data109;
			end
			if(in_data111 < in_data112) begin
				in_data111 <= in_data112;
				in_data112 <= in_data111;
			end
			if(in_data113 < in_data114) begin
				in_data113 <= in_data114;
				in_data114 <= in_data113;
			end
			if(in_data115 < in_data116) begin
				in_data115 <= in_data116;
				in_data116 <= in_data115;
			end
			if(in_data117 < in_data118) begin
				in_data117 <= in_data118;
				in_data118 <= in_data117;
			end
			if(in_data119 < in_data120) begin
				in_data119 <= in_data120;
				in_data120 <= in_data119;
			end
			if(in_data121 < in_data122) begin
				in_data121 <= in_data122;
				in_data122 <= in_data121;
			end
			if(in_data123 < in_data124) begin
				in_data123 <= in_data124;
				in_data124 <= in_data123;
			end
			if(in_data125 < in_data126) begin
				in_data125 <= in_data126;
				in_data126 <= in_data125;
			end
			if(in_data127 < in_data128) begin
				in_data127 <= in_data128;
				in_data128 <= in_data127;
			end
			if(in_data129 < in_data130) begin
				in_data129 <= in_data130;
				in_data130 <= in_data129;
			end
			if(in_data131 < in_data132) begin
				in_data131 <= in_data132;
				in_data132 <= in_data131;
			end
			if(in_data133 < in_data134) begin
				in_data133 <= in_data134;
				in_data134 <= in_data133;
			end
			if(in_data135 < in_data136) begin
				in_data135 <= in_data136;
				in_data136 <= in_data135;
			end
			if(in_data137 < in_data138) begin
				in_data137 <= in_data138;
				in_data138 <= in_data137;
			end
			if(in_data139 < in_data140) begin
				in_data139 <= in_data140;
				in_data140 <= in_data139;
			end
			if(in_data141 < in_data142) begin
				in_data141 <= in_data142;
				in_data142 <= in_data141;
			end
			if(in_data143 < in_data144) begin
				in_data143 <= in_data144;
				in_data144 <= in_data143;
			end
			if(in_data145 < in_data146) begin
				in_data145 <= in_data146;
				in_data146 <= in_data145;
			end
			if(in_data147 < in_data148) begin
				in_data147 <= in_data148;
				in_data148 <= in_data147;
			end
			if(in_data149 < in_data150) begin
				in_data149 <= in_data150;
				in_data150 <= in_data149;
			end
			if(in_data151 < in_data152) begin
				in_data151 <= in_data152;
				in_data152 <= in_data151;
			end
			if(in_data153 < in_data154) begin
				in_data153 <= in_data154;
				in_data154 <= in_data153;
			end
			if(in_data155 < in_data156) begin
				in_data155 <= in_data156;
				in_data156 <= in_data155;
			end
			if(in_data157 < in_data158) begin
				in_data157 <= in_data158;
				in_data158 <= in_data157;
			end
			if(in_data159 < in_data160) begin
				in_data159 <= in_data160;
				in_data160 <= in_data159;
			end
			if(in_data161 < in_data162) begin
				in_data161 <= in_data162;
				in_data162 <= in_data161;
			end
			if(in_data163 < in_data164) begin
				in_data163 <= in_data164;
				in_data164 <= in_data163;
			end
			if(in_data165 < in_data166) begin
				in_data165 <= in_data166;
				in_data166 <= in_data165;
			end
			if(in_data167 < in_data168) begin
				in_data167 <= in_data168;
				in_data168 <= in_data167;
			end
			if(in_data169 < in_data170) begin
				in_data169 <= in_data170;
				in_data170 <= in_data169;
			end
			if(in_data171 < in_data172) begin
				in_data171 <= in_data172;
				in_data172 <= in_data171;
			end
			if(in_data173 < in_data174) begin
				in_data173 <= in_data174;
				in_data174 <= in_data173;
			end
			if(in_data175 < in_data176) begin
				in_data175 <= in_data176;
				in_data176 <= in_data175;
			end
			if(in_data177 < in_data178) begin
				in_data177 <= in_data178;
				in_data178 <= in_data177;
			end
			if(in_data179 < in_data180) begin
				in_data179 <= in_data180;
				in_data180 <= in_data179;
			end
			if(in_data181 < in_data182) begin
				in_data181 <= in_data182;
				in_data182 <= in_data181;
			end
			if(in_data183 < in_data184) begin
				in_data183 <= in_data184;
				in_data184 <= in_data183;
			end
			if(in_data185 < in_data186) begin
				in_data185 <= in_data186;
				in_data186 <= in_data185;
			end
			if(in_data187 < in_data188) begin
				in_data187 <= in_data188;
				in_data188 <= in_data187;
			end
			if(in_data189 < in_data190) begin
				in_data189 <= in_data190;
				in_data190 <= in_data189;
			end
			if(in_data191 < in_data192) begin
				in_data191 <= in_data192;
				in_data192 <= in_data191;
			end
			if(in_data193 < in_data194) begin
				in_data193 <= in_data194;
				in_data194 <= in_data193;
			end
			if(in_data195 < in_data196) begin
				in_data195 <= in_data196;
				in_data196 <= in_data195;
			end
			if(in_data197 < in_data198) begin
				in_data197 <= in_data198;
				in_data198 <= in_data197;
			end
			if(in_data199 < in_data200) begin
				in_data199 <= in_data200;
				in_data200 <= in_data199;
			end
			if(in_data201 < in_data202) begin
				in_data201 <= in_data202;
				in_data202 <= in_data201;
			end
			if(in_data203 < in_data204) begin
				in_data203 <= in_data204;
				in_data204 <= in_data203;
			end
			if(in_data205 < in_data206) begin
				in_data205 <= in_data206;
				in_data206 <= in_data205;
			end
			if(in_data207 < in_data208) begin
				in_data207 <= in_data208;
				in_data208 <= in_data207;
			end
			if(in_data209 < in_data210) begin
				in_data209 <= in_data210;
				in_data210 <= in_data209;
			end
			if(in_data211 < in_data212) begin
				in_data211 <= in_data212;
				in_data212 <= in_data211;
			end
			if(in_data213 < in_data214) begin
				in_data213 <= in_data214;
				in_data214 <= in_data213;
			end
			if(in_data215 < in_data216) begin
				in_data215 <= in_data216;
				in_data216 <= in_data215;
			end
			if(in_data217 < in_data218) begin
				in_data217 <= in_data218;
				in_data218 <= in_data217;
			end
			if(in_data219 < in_data220) begin
				in_data219 <= in_data220;
				in_data220 <= in_data219;
			end
			if(in_data221 < in_data222) begin
				in_data221 <= in_data222;
				in_data222 <= in_data221;
			end
			if(in_data223 < in_data224) begin
				in_data223 <= in_data224;
				in_data224 <= in_data223;
			end
			if(in_data225 < in_data226) begin
				in_data225 <= in_data226;
				in_data226 <= in_data225;
			end
			if(in_data227 < in_data228) begin
				in_data227 <= in_data228;
				in_data228 <= in_data227;
			end
			if(in_data229 < in_data230) begin
				in_data229 <= in_data230;
				in_data230 <= in_data229;
			end
			if(in_data231 < in_data232) begin
				in_data231 <= in_data232;
				in_data232 <= in_data231;
			end
			if(in_data233 < in_data234) begin
				in_data233 <= in_data234;
				in_data234 <= in_data233;
			end
			if(in_data235 < in_data236) begin
				in_data235 <= in_data236;
				in_data236 <= in_data235;
			end
			if(in_data237 < in_data238) begin
				in_data237 <= in_data238;
				in_data238 <= in_data237;
			end
			if(in_data239 < in_data240) begin
				in_data239 <= in_data240;
				in_data240 <= in_data239;
			end
			if(in_data241 < in_data242) begin
				in_data241 <= in_data242;
				in_data242 <= in_data241;
			end
			if(in_data243 < in_data244) begin
				in_data243 <= in_data244;
				in_data244 <= in_data243;
			end
			if(in_data245 < in_data246) begin
				in_data245 <= in_data246;
				in_data246 <= in_data245;
			end
			if(in_data247 < in_data248) begin
				in_data247 <= in_data248;
				in_data248 <= in_data247;
			end
			if(in_data249 < in_data250) begin
				in_data249 <= in_data250;
				in_data250 <= in_data249;
			end
			if(in_data251 < in_data252) begin
				in_data251 <= in_data252;
				in_data252 <= in_data251;
			end
			if(in_data253 < in_data254) begin
				in_data253 <= in_data254;
				in_data254 <= in_data253;
			end
				
		end
		else begin //even
			if(in_data0 < in_data1) begin
				in_data0 <= in_data1;
				in_data1 <= in_data0;
			end
			if(in_data2 < in_data3) begin
				in_data2 <= in_data3;
				in_data3 <= in_data2;
			end
			if(in_data4 < in_data5) begin
				in_data4 <= in_data5;
				in_data5 <= in_data4;
			end
			if(in_data6 < in_data7) begin
				in_data6 <= in_data7;
				in_data7 <= in_data6;
			end
			if(in_data8 < in_data9) begin
				in_data8 <= in_data9;
				in_data9 <= in_data8;
			end
			if(in_data10 < in_data11) begin
				in_data10 <= in_data11;
				in_data11 <= in_data10;
			end
			if(in_data12 < in_data13) begin
				in_data12 <= in_data13;
				in_data13 <= in_data12;
			end
			if(in_data14 < in_data15) begin
				in_data14 <= in_data15;
				in_data15 <= in_data14;
			end
			if(in_data16 < in_data17) begin
				in_data16 <= in_data17;
				in_data17 <= in_data16;
			end
			if(in_data18 < in_data19) begin
				in_data18 <= in_data19;
				in_data19 <= in_data18;
			end
			if(in_data20 < in_data21) begin
				in_data20 <= in_data21;
				in_data21 <= in_data20;
			end
			if(in_data22 < in_data23) begin
				in_data22 <= in_data23;
				in_data23 <= in_data22;
			end
			if(in_data24 < in_data25) begin
				in_data24 <= in_data25;
				in_data25 <= in_data24;
			end
			if(in_data26 < in_data27) begin
				in_data26 <= in_data27;
				in_data27 <= in_data26;
			end
			if(in_data28 < in_data29) begin
				in_data28 <= in_data29;
				in_data29 <= in_data28;
			end
			if(in_data30 < in_data31) begin
				in_data30 <= in_data31;
				in_data31 <= in_data30;
			end
			if(in_data32 < in_data33) begin
				in_data32 <= in_data33;
				in_data33 <= in_data32;
			end
			if(in_data34 < in_data35) begin
				in_data34 <= in_data35;
				in_data35 <= in_data34;
			end
			if(in_data36 < in_data37) begin
				in_data36 <= in_data37;
				in_data37 <= in_data36;
			end
			if(in_data38 < in_data39) begin
				in_data38 <= in_data39;
				in_data39 <= in_data38;
			end
			if(in_data40 < in_data41) begin
				in_data40 <= in_data41;
				in_data41 <= in_data40;
			end
			if(in_data42 < in_data43) begin
				in_data42 <= in_data43;
				in_data43 <= in_data42;
			end
			if(in_data44 < in_data45) begin
				in_data44 <= in_data45;
				in_data45 <= in_data44;
			end
			if(in_data46 < in_data47) begin
				in_data46 <= in_data47;
				in_data47 <= in_data46;
			end
			if(in_data48 < in_data49) begin
				in_data48 <= in_data49;
				in_data49 <= in_data48;
			end
			if(in_data50 < in_data51) begin
				in_data50 <= in_data51;
				in_data51 <= in_data50;
			end
			if(in_data52 < in_data53) begin
				in_data52 <= in_data53;
				in_data53 <= in_data52;
			end
			if(in_data54 < in_data55) begin
				in_data54 <= in_data55;
				in_data55 <= in_data54;
			end
			if(in_data56 < in_data57) begin
				in_data56 <= in_data57;
				in_data57 <= in_data56;
			end
			if(in_data58 < in_data59) begin
				in_data58 <= in_data59;
				in_data59 <= in_data58;
			end
			if(in_data60 < in_data61) begin
				in_data60 <= in_data61;
				in_data61 <= in_data60;
			end
			if(in_data62 < in_data63) begin
				in_data62 <= in_data63;
				in_data63 <= in_data62;
			end
			if(in_data64 < in_data65) begin
				in_data64 <= in_data65;
				in_data65 <= in_data64;
			end
			if(in_data66 < in_data67) begin
				in_data66 <= in_data67;
				in_data67 <= in_data66;
			end
			if(in_data68 < in_data69) begin
				in_data68 <= in_data69;
				in_data69 <= in_data68;
			end
			if(in_data70 < in_data71) begin
				in_data70 <= in_data71;
				in_data71 <= in_data70;
			end
			if(in_data72 < in_data73) begin
				in_data72 <= in_data73;
				in_data73 <= in_data72;
			end
			if(in_data74 < in_data75) begin
				in_data74 <= in_data75;
				in_data75 <= in_data74;
			end
			if(in_data76 < in_data77) begin
				in_data76 <= in_data77;
				in_data77 <= in_data76;
			end
			if(in_data78 < in_data79) begin
				in_data78 <= in_data79;
				in_data79 <= in_data78;
			end
			if(in_data80 < in_data81) begin
				in_data80 <= in_data81;
				in_data81 <= in_data80;
			end
			if(in_data82 < in_data83) begin
				in_data82 <= in_data83;
				in_data83 <= in_data82;
			end
			if(in_data84 < in_data85) begin
				in_data84 <= in_data85;
				in_data85 <= in_data84;
			end
			if(in_data86 < in_data87) begin
				in_data86 <= in_data87;
				in_data87 <= in_data86;
			end
			if(in_data88 < in_data89) begin
				in_data88 <= in_data89;
				in_data89 <= in_data88;
			end
			if(in_data90 < in_data91) begin
				in_data90 <= in_data91;
				in_data91 <= in_data90;
			end
			if(in_data92 < in_data93) begin
				in_data92 <= in_data93;
				in_data93 <= in_data92;
			end
			if(in_data94 < in_data95) begin
				in_data94 <= in_data95;
				in_data95 <= in_data94;
			end
			if(in_data96 < in_data97) begin
				in_data96 <= in_data97;
				in_data97 <= in_data96;
			end
			if(in_data98 < in_data99) begin
				in_data98 <= in_data99;
				in_data99 <= in_data98;
			end
			if(in_data100 < in_data101) begin
				in_data100 <= in_data101;
				in_data101 <= in_data100;
			end
			if(in_data102 < in_data103) begin
				in_data102 <= in_data103;
				in_data103 <= in_data102;
			end
			if(in_data104 < in_data105) begin
				in_data104 <= in_data105;
				in_data105 <= in_data104;
			end
			if(in_data106 < in_data107) begin
				in_data106 <= in_data107;
				in_data107 <= in_data106;
			end
			if(in_data108 < in_data109) begin
				in_data108 <= in_data109;
				in_data109 <= in_data108;
			end
			if(in_data110 < in_data111) begin
				in_data110 <= in_data111;
				in_data111 <= in_data110;
			end
			if(in_data112 < in_data113) begin
				in_data112 <= in_data113;
				in_data113 <= in_data112;
			end
			if(in_data114 < in_data115) begin
				in_data114 <= in_data115;
				in_data115 <= in_data114;
			end
			if(in_data116 < in_data117) begin
				in_data116 <= in_data117;
				in_data117 <= in_data116;
			end
			if(in_data118 < in_data119) begin
				in_data118 <= in_data119;
				in_data119 <= in_data118;
			end
			if(in_data120 < in_data121) begin
				in_data120 <= in_data121;
				in_data121 <= in_data120;
			end
			if(in_data122 < in_data123) begin
				in_data122 <= in_data123;
				in_data123 <= in_data122;
			end
			if(in_data124 < in_data125) begin
				in_data124 <= in_data125;
				in_data125 <= in_data124;
			end
			if(in_data126 < in_data127) begin
				in_data126 <= in_data127;
				in_data127 <= in_data126;
			end
			if(in_data128 < in_data129) begin
				in_data128 <= in_data129;
				in_data129 <= in_data128;
			end
			if(in_data130 < in_data131) begin
				in_data130 <= in_data131;
				in_data131 <= in_data130;
			end
			if(in_data132 < in_data133) begin
				in_data132 <= in_data133;
				in_data133 <= in_data132;
			end
			if(in_data134 < in_data135) begin
				in_data134 <= in_data135;
				in_data135 <= in_data134;
			end
			if(in_data136 < in_data137) begin
				in_data136 <= in_data137;
				in_data137 <= in_data136;
			end
			if(in_data138 < in_data139) begin
				in_data138 <= in_data139;
				in_data139 <= in_data138;
			end
			if(in_data140 < in_data141) begin
				in_data140 <= in_data141;
				in_data141 <= in_data140;
			end
			if(in_data142 < in_data143) begin
				in_data142 <= in_data143;
				in_data143 <= in_data142;
			end
			if(in_data144 < in_data145) begin
				in_data144 <= in_data145;
				in_data145 <= in_data144;
			end
			if(in_data146 < in_data147) begin
				in_data146 <= in_data147;
				in_data147 <= in_data146;
			end
			if(in_data148 < in_data149) begin
				in_data148 <= in_data149;
				in_data149 <= in_data148;
			end
			if(in_data150 < in_data151) begin
				in_data150 <= in_data151;
				in_data151 <= in_data150;
			end
			if(in_data152 < in_data153) begin
				in_data152 <= in_data153;
				in_data153 <= in_data152;
			end
			if(in_data154 < in_data155) begin
				in_data154 <= in_data155;
				in_data155 <= in_data154;
			end
			if(in_data156 < in_data157) begin
				in_data156 <= in_data157;
				in_data157 <= in_data156;
			end
			if(in_data158 < in_data159) begin
				in_data158 <= in_data159;
				in_data159 <= in_data158;
			end
			if(in_data160 < in_data161) begin
				in_data160 <= in_data161;
				in_data161 <= in_data160;
			end
			if(in_data162 < in_data163) begin
				in_data162 <= in_data163;
				in_data163 <= in_data162;
			end
			if(in_data164 < in_data165) begin
				in_data164 <= in_data165;
				in_data165 <= in_data164;
			end
			if(in_data166 < in_data167) begin
				in_data166 <= in_data167;
				in_data167 <= in_data166;
			end
			if(in_data168 < in_data169) begin
				in_data168 <= in_data169;
				in_data169 <= in_data168;
			end
			if(in_data170 < in_data171) begin
				in_data170 <= in_data171;
				in_data171 <= in_data170;
			end
			if(in_data172 < in_data173) begin
				in_data172 <= in_data173;
				in_data173 <= in_data172;
			end
			if(in_data174 < in_data175) begin
				in_data174 <= in_data175;
				in_data175 <= in_data174;
			end
			if(in_data176 < in_data177) begin
				in_data176 <= in_data177;
				in_data177 <= in_data176;
			end
			if(in_data178 < in_data179) begin
				in_data178 <= in_data179;
				in_data179 <= in_data178;
			end
			if(in_data180 < in_data181) begin
				in_data180 <= in_data181;
				in_data181 <= in_data180;
			end
			if(in_data182 < in_data183) begin
				in_data182 <= in_data183;
				in_data183 <= in_data182;
			end
			if(in_data184 < in_data185) begin
				in_data184 <= in_data185;
				in_data185 <= in_data184;
			end
			if(in_data186 < in_data187) begin
				in_data186 <= in_data187;
				in_data187 <= in_data186;
			end
			if(in_data188 < in_data189) begin
				in_data188 <= in_data189;
				in_data189 <= in_data188;
			end
			if(in_data190 < in_data191) begin
				in_data190 <= in_data191;
				in_data191 <= in_data190;
			end
			if(in_data192 < in_data193) begin
				in_data192 <= in_data193;
				in_data193 <= in_data192;
			end
			if(in_data194 < in_data195) begin
				in_data194 <= in_data195;
				in_data195 <= in_data194;
			end
			if(in_data196 < in_data197) begin
				in_data196 <= in_data197;
				in_data197 <= in_data196;
			end
			if(in_data198 < in_data199) begin
				in_data198 <= in_data199;
				in_data199 <= in_data198;
			end
			if(in_data200 < in_data201) begin
				in_data200 <= in_data201;
				in_data201 <= in_data200;
			end
			if(in_data202 < in_data203) begin
				in_data202 <= in_data203;
				in_data203 <= in_data202;
			end
			if(in_data204 < in_data205) begin
				in_data204 <= in_data205;
				in_data205 <= in_data204;
			end
			if(in_data206 < in_data207) begin
				in_data206 <= in_data207;
				in_data207 <= in_data206;
			end
			if(in_data208 < in_data209) begin
				in_data208 <= in_data209;
				in_data209 <= in_data208;
			end
			if(in_data210 < in_data211) begin
				in_data210 <= in_data211;
				in_data211 <= in_data210;
			end
			if(in_data212 < in_data213) begin
				in_data212 <= in_data213;
				in_data213 <= in_data212;
			end
			if(in_data214 < in_data215) begin
				in_data214 <= in_data215;
				in_data215 <= in_data214;
			end
			if(in_data216 < in_data217) begin
				in_data216 <= in_data217;
				in_data217 <= in_data216;
			end
			if(in_data218 < in_data219) begin
				in_data218 <= in_data219;
				in_data219 <= in_data218;
			end
			if(in_data220 < in_data221) begin
				in_data220 <= in_data221;
				in_data221 <= in_data220;
			end
			if(in_data222 < in_data223) begin
				in_data222 <= in_data223;
				in_data223 <= in_data222;
			end
			if(in_data224 < in_data225) begin
				in_data224 <= in_data225;
				in_data225 <= in_data224;
			end
			if(in_data226 < in_data227) begin
				in_data226 <= in_data227;
				in_data227 <= in_data226;
			end
			if(in_data228 < in_data229) begin
				in_data228 <= in_data229;
				in_data229 <= in_data228;
			end
			if(in_data230 < in_data231) begin
				in_data230 <= in_data231;
				in_data231 <= in_data230;
			end
			if(in_data232 < in_data233) begin
				in_data232 <= in_data233;
				in_data233 <= in_data232;
			end
			if(in_data234 < in_data235) begin
				in_data234 <= in_data235;
				in_data235 <= in_data234;
			end
			if(in_data236 < in_data237) begin
				in_data236 <= in_data237;
				in_data237 <= in_data236;
			end
			if(in_data238 < in_data239) begin
				in_data238 <= in_data239;
				in_data239 <= in_data238;
			end
			if(in_data240 < in_data241) begin
				in_data240 <= in_data241;
				in_data241 <= in_data240;
			end
			if(in_data242 < in_data243) begin
				in_data242 <= in_data243;
				in_data243 <= in_data242;
			end
			if(in_data244 < in_data245) begin
				in_data244 <= in_data245;
				in_data245 <= in_data244;
			end
			if(in_data246 < in_data247) begin
				in_data246 <= in_data247;
				in_data247 <= in_data246;
			end
			if(in_data248 < in_data249) begin
				in_data248 <= in_data249;
				in_data249 <= in_data248;
			end
			if(in_data250 < in_data251) begin
				in_data250 <= in_data251;
				in_data251 <= in_data250;
			end
			if(in_data252 < in_data253) begin
				in_data252 <= in_data253;
				in_data253 <= in_data252;
			end
			if(in_data254 < in_data255) begin
				in_data254 <= in_data255;
				in_data255 <= in_data254;
			end
			if(in_data256 < in_data257) begin
				in_data256 <= in_data257;
				in_data257 <= in_data256;
			end
			if(in_data258 < in_data259) begin
				in_data258 <= in_data259;
				in_data259 <= in_data258;
			end
			if(in_data260 < in_data261) begin
				in_data260 <= in_data261;
				in_data261 <= in_data260;
			end
			if(in_data262 < in_data263) begin
				in_data262 <= in_data263;
				in_data263 <= in_data262;
			end
			if(in_data264 < in_data265) begin
				in_data264 <= in_data265;
				in_data265 <= in_data264;
			end
			if(in_data266 < in_data267) begin
				in_data266 <= in_data267;
				in_data267 <= in_data266;
			end
			if(in_data268 < in_data269) begin
				in_data268 <= in_data269;
				in_data269 <= in_data268;
			end
			if(in_data270 < in_data271) begin
				in_data270 <= in_data271;
				in_data271 <= in_data270;
			end
			if(in_data272 < in_data273) begin
				in_data272 <= in_data273;
				in_data273 <= in_data272;
			end
			if(in_data274 < in_data275) begin
				in_data274 <= in_data275;
				in_data275 <= in_data274;
			end
			if(in_data276 < in_data277) begin
				in_data276 <= in_data277;
				in_data277 <= in_data276;
			end
		end
	end
	
end


always @(posedge clk) begin
	if (!rst_n) begin
		current_state <= `INIT_STATE;
	end
	else begin
		current_state <= next_state;
	end
end

/*
 * State Transition
 */
always @(current_state or in_valid or outer_loop or input_index or output_index) begin
	case(current_state)
		`INIT_STATE: begin
			if(in_valid) begin
				next_state = `STORE_INPUT;
			end
			else begin
				next_state = current_state;
			end
		end
		`STORE_INPUT: begin
			if(!in_valid) begin //input queue has stop
				next_state = `BUBBLE_SORT;
			end
			else begin
				next_state = current_state;
			end
		end
		`BUBBLE_SORT: begin
			if(outer_loop < input_index) begin
				next_state = current_state;
			end
			else begin
				next_state = `DUMP_OUTPUT;
			end
		end
		`DUMP_OUTPUT: begin
			if(output_index < input_index) begin
				next_state = current_state;//dont == current_state
			end
			else begin
				next_state = `INIT_STATE;
			end
		end
	endcase
end


endmodule