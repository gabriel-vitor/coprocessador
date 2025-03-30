module matriz_multiplicacao #(parameter N=3, WIDTH=8)(
    input signed [(N*N*WIDTH)-1:0] A,
    input signed [(N*N*WIDTH)-1:0] B,
    output reg signed [(N*N*(2*WIDTH+3))-1:0] Resultado
);

integer i, j, k;
reg signed [(2*WIDTH+3)-1:0] temp;

always @(*) begin
    for(i=0; i<N; i=i+1) begin
        for(j=0; j<N; j=j+1) begin
            temp = 0;
            for(k=0; k<N; k=k+1) begin
                temp = temp + (A[((i*N+k)*WIDTH) +: WIDTH] * B[((k*N+j)*WIDTH) +: WIDTH]);
            end
            Resultado[((i*N+j)*(2*WIDTH+3)) +: (2*WIDTH+3)] = temp;
        end
    end
end

endmodule
