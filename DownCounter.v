module down_counter(input clk, reset, output [3:0] counter);
    reg [3:0] counter_down;                         // Initialise register counter_down to find down counter states
    always @(posedge clk or posedge reset)          // Postive edge triggered circuit
    begin
        if(reset)
            begin
                counter_down = 4'hf;                // If reset==1, set counter to 1111
            end
        else
            begin
                counter_down = counter_down - 4'd1; // Else, subtract 0001 from counter
            end                                     
    end 
    assign counter = counter_down;                  // Return new value of counter
endmodule
