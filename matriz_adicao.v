module matriz_adicao #(parameter N=3, WIDTH=8)(
    input signed [(N*N*WIDTH)-1:0] A,
    input signed [(N*N*WIDTH)-1:0] B,
    output reg signed [(N*N*(WIDTH+1))-1:0] Resultado
);

integer i;
always @(*) begin
    for(i=0; i<N*N; i=i+1) begin
        Resultado[(i*(WIDTH+1)) +: (WIDTH+1)] = 
            A[(i*WIDTH) +: WIDTH] + B[(i*WIDTH) +: WIDTH];
    end
end

endmodule
