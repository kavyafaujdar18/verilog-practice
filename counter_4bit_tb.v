module tb_counter_4bit;

reg clk;
reg rst;
wire [3:0] count;

counter_up_4bit dut (
    .clk(clk),
    .rst(rst),
    .count(count)
);
   initial begins
// clock generation
    clk = 0;
    forever #5 clk = ~clk;
end

// test cases
    rst = 1;
    @(posedge clk)
    rst = 0;
   @(posedge clk)
    rst = 1;
    @(posedge clk)
    rst = 0;
   @(posedge clk)

    $finish;
end
endmodule

endmodule
