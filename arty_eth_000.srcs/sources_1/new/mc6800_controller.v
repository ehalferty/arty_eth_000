`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2018 12:35:00 AM
// Design Name: 
// Module Name: mc6800_controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module cpu_clock_gen(input CLK100MHZ, output [1:0] out);
    reg [8:0] counter;
    reg [1:0] state;
    assign out = state;
    always @ (posedge CLK100MHZ) begin
        counter <= counter + 1;
        state[0] <= counter[8];
        state[1] <= !counter[8];
    end
endmodule

module program_rom(input CLK100MHZ, input [3:0] sw, input [15:0] address, output [7:0] data);
    reg [7:0] out;
    assign data = out;
    always @ (posedge CLK100MHZ) begin
        case (address)
            ((sw << 12) | 4'h0): begin
                out <= 8'h6E;
            end
            ((sw << 12) | 4'h1): begin
                out <= 8'h00;
            end
            ((sw << 12) | 4'h2): begin
                out <= 8'h00;
            end
            16'hFFFE: begin
                out <= 8'h00;
            end
            16'hFFFF: begin
                out <= 8'h00;
            end
            default: begin
                out <= 8'h01;
            end
        endcase
    end
endmodule

module mc6800_controller(
    input CLK100MHZ,
    output [15:0] led,
    input [15:0] address,
    output [7:0] data_from_fpga,
    input [7:0] data_to_fpga,
    output data_from_fpga_enable_n,
    output [1:0] cpu_clock,
    output reset_n,
    output irq_n,
    output nmi_n,
    input write_n,
    input btn,
    input [3:0] sw
    );

    cpu_clock_gen cpu_clock_gen_inst(CLK100MHZ, cpu_clock);

    program_rom program_rom_inst(CLK100MHZ, sw, address, data_from_fpga);
    
    assign reset_n = !btn;
    assign irq_n = 1;
    assign nmi_n = 1;
    assign led = 1 << address[15:12];
    // If write is low, data_from_fpga_enable enable should be high.
    assign data_from_fpga_enable_n = !write_n;    
endmodule
