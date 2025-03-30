module matriz_mult_escalar #(parameter N=3, WIDTH=8)(
    input signed [(N*N*WIDTH)-1:0] A,
    input signed [WIDTH-1:0] escalar,
    output reg signed [(N*N*(2*WIDTH))-1:0] Resultado
);

integer i;
always @(*) begin
    for(i=0; i<N*N; i=i+1) begin
        Resultado[(i*(2*WIDTH)) +: (2*WIDTH)] = 
            A[(i*WIDTH) +: WIDTH] * escalar;
    end
end

endmodule
