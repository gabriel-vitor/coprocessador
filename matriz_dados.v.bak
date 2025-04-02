// matriz_dados.v
module matriz_dados;

parameter N = 3; // exemplo com N=3 (para matriz 4x4, escolher 4. Para matriz 5x5 escolher 5. N<=5)
parameter WIDTH = 8;

// Matriz A
reg signed [WIDTH-1:0] matriz_A [0:N-1][0:N-1];
// Matriz B
reg signed [WIDTH-1:0] matriz_B [0:N-1][0:N-1];
// Escalar
reg signed [WIDTH-1:0] escalar = 2;

initial begin
    matriz_A[0][0]=1; matriz_A[0][1]=2; matriz_A[0][2]=3;
    matriz_A[1][0]=4; matriz_A[1][1]=5; matriz_A[1][2]=6;
    matriz_A[2][0]=7; matriz_A[2][1]=8; matriz_A[2][2]=9;

    matriz_B[0][0]=9; matriz_B[0][1]=8; matriz_B[0][2]=7;
    matriz_B[1][0]=6; matriz_B[1][1]=5; matriz_B[1][2]=4;
    matriz_B[2][0]=3; matriz_B[2][1]=2; matriz_B[2][2]=1;
end

endmodule
