module counter_testbench();
    reg clk, reset;
    wire [3:0] counter1;

    up_counter up(clk, reset, counter1);
      
    initial begin 
        clk=0;
        repeat(96) 
          #5 clk=~clk;
    end
    initial begin
        reset = 1;
        #10
        reset = 0;
    end
endmodule
