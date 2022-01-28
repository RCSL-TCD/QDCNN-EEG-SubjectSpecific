// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module StreamingFCLayer_Batch_2_Matrix_Vector_Activa_threshs_m_thresholds_90_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 20;
parameter AWIDTH = 8;
parameter MEM_SIZE = 200;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("/tmp/finn_dev_floodd1@ad.mee.tcd.ie/code_gen_ipgen_StreamingFCLayer_Batch_2_8uay9h4c/project_StreamingFCLayer_Batch_2/sol1/impl/ip/hdl/verilog/StreamingFCLayer_Batch_2_Matrix_Vector_Activa_threshs_m_thresholds_90_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



endmodule

`timescale 1 ns / 1 ps
module StreamingFCLayer_Batch_2_Matrix_Vector_Activa_threshs_m_thresholds_90(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd20;
parameter AddressRange = 32'd200;
parameter AddressWidth = 32'd8;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



StreamingFCLayer_Batch_2_Matrix_Vector_Activa_threshs_m_thresholds_90_rom StreamingFCLayer_Batch_2_Matrix_Vector_Activa_threshs_m_thresholds_90_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule
