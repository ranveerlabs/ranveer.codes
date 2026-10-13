module tb;
    logic [2:0] col;
    logic [2:0] row;
    wire pixel;
    ltrlogic dut (
        .row(row),
        .col(col),
        .pixel(pixel)
);
    initial begin
        for (int r = 0; r < 6; r++) begin
            for (int c = 0; c<5;c++) begin
                row = r;
                col = c;
                #1;
                if (pixel == 1'b1) begin
                    $write("#");
                end else begin
                    $write(".");
                end
            
            end
            $display("");
        end
        $finish;
     end
endmodule
