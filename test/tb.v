module tb;
    localparam WIDTH = 16;

    reg [WIDTH-1:0] t_in_1, t_in_2;
    reg t_sel;
    wire [WIDTH-1:0] t_out;

    mux2 #(
        .WIDTH(WIDTH)
    ) dut (
        .in_1(t_in_1),
        .in_2(t_in_2),
        .sel(t_sel),
        .out(t_out)
    );

    initial begin
        $dumpfile("mux2_dbg.vcd");
        $dumpvars();
    end

    initial begin
        t_in_1 = 16'h00;
        t_in_2 = 16'h00;
        t_sel = 1'b0;
        #1;

        t_in_1 = 16'had;
        #1;

        t_in_2 = 16'had;
        #1;

        t_sel = 1'b1;
        #1 $finish;
    end
endmodule