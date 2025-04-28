module D2D_SHA_Wrapper (
    input          clock,
    input          reset,
    input  [511:0] d2d_data_in,
    output [511:0] d2d_data_out,
    input          d2d_valid,
    output         d2d_ready
);

    
    reg [31:0] sha_input;
    wire [31:0] sha_output;
    wire sha_src_read, sha_dst_write;

   
    D2DAdapter d2d (
        .clock(clock),
        .reset(reset),
        .io_fdi_lpData_bits(d2d_data_in),
        .io_fdi_plData_bits(d2d_data_out),
        .io_fdi_lpData_valid(d2d_valid),
        .io_fdi_lpData_ready(d2d_ready)
    );

 
    sha2_top sha (
        .clk(clock),
        .rst(reset),
        .din(sha_input),
        .dout(sha_output),
        .src_read(sha_src_read),
        .src_ready(d2d_valid),
        .dst_ready(d2d_ready),
        .dst_write(sha_dst_write)
    );

   
    always @(posedge clock or posedge reset) begin
        if (reset) begin
            sha_input <= 0;
        end else if (d2d_valid && sha_src_read) begin
            sha_input <= d2d_data_in[31:0]; 
        end
    end
    
    assign d2d_data_in[31:0] = sha_output; 

endmodule

