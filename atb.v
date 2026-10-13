module atb;
    wire[4:0] row,row1,row2,row3,row4,row5;
    a uut (
        .row(row),
        .row1(row1),
        .row2(row2),
        .row3(row3),
        .row4(row4),
        .row5(row5)
    );
    initial begin
        $display("%b",row);
        $display("%b",row1);
        $display("%b",row2);
        $display("%b",row3);
        $display("%b",row4);
        $display("%b",row5);
    end
endmodule
