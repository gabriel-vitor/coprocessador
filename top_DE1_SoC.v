module top_DE1_SoC(
    input CLOCK_50,
    input [2:0] SW, // Seleciona operação (3 switches)
    output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

// Parâmetros globais
parameter N = 3;
parameter WIDTH = 8;

// Matrizes declaradas (3x3 exemplo)
wire signed [(N*N*WIDTH)-1:0] matrizA = {
    8'd1, 8'd2, 8'd3,   // Linha 0
    8'd4, 8'd5, 8'd6,   // Linha 1
    8'd7, 8'd8, 8'd9    // Linha 2
};

wire signed [(N*N*WIDTH)-1:0] matrizB = {
    8'd9, 8'd8, 8'd7,   // Linha 0
    8'd6, 8'd5, 8'd4,   // Linha 1
    8'd3, 8'd2, 8'd1    // Linha 2
};

wire signed [WIDTH-1:0] escalar = 8'd2;

// Saídas do coprocessador
wire signed [(N*N*(2*WIDTH+3))-1:0] resultado;
wire signed [(3*WIDTH):0] det;

// Instância do coprocessador
coprocessador #(.N(N), .WIDTH(WIDTH)) COPROC (
    .operacao(SW),
    .escalar(escalar),
    .A(matrizA),
    .B(matrizB),
    .resultado(resultado),
    .det(det)
);

// Seleção do valor a ser exibido no display HEX
wire [23:0] valor_display;

// Exibe determinante ou primeiro elemento da matriz resultado
assign valor_display = (SW == 3'd6) ? det[23:0] : resultado[(N*N*(2*WIDTH+3))-1 -: 24];

// Exibição nos displays HEX
display_7seg DISP0(valor_display[3:0], HEX0);
display_7seg DISP1(valor_display[7:4], HEX1);
display_7seg DISP2(valor_display[11:8], HEX2);
display_7seg DISP3(valor_display[15:12], HEX3);
display_7seg DISP4(valor_display[19:16], HEX4);
display_7seg DISP5(valor_display[23:20], HEX5);

endmodule

// Módulo auxiliar para display de 7 segmentos
module display_7seg(input [3:0] valor, output reg [6:0] hex);
always @(*)
    case(valor)
        4'h0: hex = 7'b1000000;
        4'h1: hex = 7'b1111001;
        4'h2: hex = 7'b0100100;
        4'h3: hex = 7'b0110000;
        4'h4: hex = 7'b0011001;
        4'h5: hex = 7'b0010010;
        4'h6: hex = 7'b0000010;
        4'h7: hex = 7'b1111000;
        4'h8: hex = 7'b0000000;
        4'h9: hex = 7'b0010000;
        4'hA: hex = 7'b0001000;
        4'hB: hex = 7'b0000011;
        4'hC: hex = 7'b1000110;
        4'hD: hex = 7'b0100001;
        4'hE: hex = 7'b0000110;
        4'hF: hex = 7'b0001110;
        default: hex = 7'b1111111;
    endcase
endmodule


// display hex - Para determinante (SW=6): exibe o valor escalar do determinante (24 bits).
// Para outras operações: exibe somente o primeiro elemento [0][0] da matriz resultante (24 bits).
// SW (2:0) |	Operação
// 000	   	Adição
// 001	   	Subtração
// 010	   	Multiplicação
// 011	   	Multiplicação Escalar
// 100	   	Transposição
// 101	   	Matriz Oposta
// 110	   	Determinante