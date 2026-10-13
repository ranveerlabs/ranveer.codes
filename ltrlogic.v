module ltrlogic (
    output pixel,
    input [2:0] col,
    input [2:0] row
);
    assign pixel = (row == 3'd0 && col <=3 && col >=1)
        || (row == 3'd1 && (col == 3'd0 || col == 3'd4))
        || (row == 3'd2 && (col == 3'd0 || col == 3'd4))
        || (row == 3'd3)
        || (row == 3'd4 && (col == 3'd0 || col == 3'd4))
        || (row == 3'd5 && (col == 3'd0 || col == 3'd4));
endmodule
