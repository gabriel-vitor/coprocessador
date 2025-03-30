`timescale 1ns / 1ps
module testbench_matriz;

parameter N = 3;
parameter WIDTH = 8;

reg [2:0] operacao;
reg signed [(N*N*WIDTH)-1:0] matrizA, matrizB;
reg signed [WIDTH-1:0] escalar;

wire signed [(N*N*(2*WIDTH+3))-1:0] resultado;
wire signed [(3*WIDTH):0] det;

// Instância do coprocessador
coprocessador #(.N(N), .WIDTH(WIDTH)) dut (
    .operacao(operacao),
    .escalar(escalar),
    .A(matrizA),
    .B(matrizB),
    .resultado(resultado),
    .det(det)
);

initial begin
    // Matrizes A e B (para testes)
    matrizA = {8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd8,8'd9};
    matrizB = {8'd9,8'd8,8'd7,8'd6,8'd5,8'd4,8'd3,8'd2,8'd1};
    escalar = 8'd2;

    // Operação: Multiplicação (SW=2)
    operacao = 3'd2;
    #10; // Espera 10 ns

    // Resultados da multiplicação
    $display("Resultado multiplicação:");
    $display("Elemento [0][0]: %d", resultado[215:200]);
    $display("Elemento [0][1]: %d", resultado[199:184]);
    $display("Elemento [0][2]: %d", resultado[183:168]);
    $display("Elemento [1][0]: %d", resultado[167:152]);
    $display("Elemento [1][1]: %d", resultado[151:136]);
    $display("Elemento [1][2]: %d", resultado[135:120]);
    $display("Elemento [2][0]: %d", resultado[119:104]);
    $display("Elemento [2][1]: %d", resultado[103:88]);
    $display("Elemento [2][2]: %d", resultado[87:72]);

    // Determinante (SW=6)
    operacao = 3'd6;
    #10;
    $display("Determinante: %d", det);

    $stop;
end

endmodule
