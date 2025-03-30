module matriz_determinante #(parameter WIDTH=8)(
    input signed [(9*WIDTH)-1:0] A,
    output reg signed [(3*WIDTH):0] det
);

always @(*) begin
    det = (A[71:64] * (A[39:32]*A[7:0] - A[31:24]*A[15:8]))
        - (A[63:56] * (A[47:40]*A[7:0] - A[31:24]*A[23:16]))
        + (A[55:48] * (A[47:40]*A[15:8] - A[39:32]*A[23:16]));
end

endmodule
