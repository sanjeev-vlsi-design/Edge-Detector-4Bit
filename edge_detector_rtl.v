module edge_detector_rtl (
    input clk,      
    input rst,       
    input signal_inp,
    output p_edge,   
    output n_edge   
);
    reg signal_data;

    always @(posedge clk or posedge rst) begin
        if (rst)
            signal_data <= 0; 
        else
            signal_data <= signal_inp; 
    end

    assign p_edge = (~signal_data & signal_inp);
    assign n_edge = (signal_data & ~signal_inp); 
endmodule

