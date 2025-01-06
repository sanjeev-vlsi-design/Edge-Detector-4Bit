module edge_detector_tb;
    reg clk;         
    reg rst;         
    reg signal_inp;  
    wire p_edge;     
    wire n_edge;     

    edge_detector_rtl Dut (
        .clk(clk),
        .rst(rst),
        .signal_inp(signal_inp),
        .p_edge(p_edge),
        .n_edge(n_edge)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end


    initial begin
        rst = 1;
        signal_inp = 0;

        #15 rst = 0;      
        #10 signal_inp = 1; 
        #20 signal_inp = 0;   
        #30 signal_inp = 1;   
        #40 signal_inp = 0;   
        #20 $stop;            
    end
endmodule

