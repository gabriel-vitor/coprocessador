module coprocessador #(parameter N=3, WIDTH=8)(
    input [2:0] operacao, 
    input signed [WIDTH-1:0] escalar,
    input signed [(N*N*WIDTH)-1:0] A,
    input signed [(N*N*WIDTH)-1:0] B,
    output reg signed [(N*N*(2*WIDTH+3))-1:0] resultado,
    output reg signed [(3*WIDTH):0] det
);

// Declarações intermediárias (internas)
wire signed [(N*N*(WIDTH+1))-1:0] adicao, subtracao, oposta;
wire signed [(N*N*(2*WIDTH+3))-1:0] multiplicacao;
wire signed [(N*N*(2*WIDTH))-1:0] mult_escalar;
wire signed [(N*N*WIDTH)-1:0] transposta;
wire signed [(3*WIDTH):0] determinante;

integer i;

// Instâncias corrigidas dos módulos (matriz unidimensional)
matriz_adicao #(N, WIDTH) ADD (.A(A), .B(B), .Resultado(adicao));
matriz_subtracao #(N, WIDTH) SUB (.A(A), .B(B), .Resultado(subtracao));
matriz_multiplicacao #(N, WIDTH) MULT (.A(A), .B(B), .Resultado(multiplicacao));
matriz_mult_escalar #(N, WIDTH) MULT_ESC (.A(A), .escalar(escalar), .Resultado(mult_escalar));
matriz_transposta #(N, WIDTH) TRANS (.A(A), .Resultado(transposta));
matriz_oposta #(N, WIDTH) OPOSTA (.A(A), .Resultado(oposta));
matriz_determinante #(WIDTH) DET (.A(A), .det(determinante));

// Lógica combinacional corrigida (Verilog puro)
always @(*) begin
    resultado = 0;
    det = 0;

    case(operacao)
        3'd0: resultado = adicao;
        3'd1: resultado = subtracao;
        3'd2: resultado = multiplicacao;
        3'd3: resultado = mult_escalar;
        3'd4: resultado = transposta;
        3'd5: resultado = oposta;
        3'd6: det = determinante;
        default: resultado = 0;
    endcase
end

endmodule


//tabela de seleção da operacao
// 0	Adição
// 1	Subtração
// 2	Multiplicação
// 3	Multiplicação Escalar
// 4	Transposição
// 5	Matriz Oposta
// 6	Determinante
