module matriz_transposta #(parameter N=3, WIDTH=8)(
    input signed [(N*N*WIDTH)-1:0] A,
    output reg signed [(N*N*WIDTH)-1:0] Resultado
);

integer i, j;
always @(*) begin
    for(i=0; i<N; i=i+1) begin
        for(j=0; j<N; j=j+1) begin
            Resultado[((j*N+i)*WIDTH) +: WIDTH] = A[((i*N+j)*WIDTH) +: WIDTH];
        end
    end
end

endmodule
