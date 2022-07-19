module up_counter(input clk, reset, output[3:0] counter);
    reg [3:0] count;                           // Initialise register counter_up to find up counter states
    always @(posedge clk or posedge reset)          // Postive edge triggered circuit
    begin
        if(reset)
            begin
                count = 4'd0;                  // If reset==1, set counter to 0000
            end
        else
            begin
                count = count + 4'd1;           // Else, add 0001 to counter
            end       
    end 
    assign counter = countp;                    // Return new value of counter
endmodule
