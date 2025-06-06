//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.14
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk
);

// Variables generated for SystemC signals
logic signed [31:0] t;
logic [3:0] minst_s[2];
logic signed [31:0] minst_t0[2];
logic signed [31:0] t1;

//------------------------------------------------------------------------------
// Method process: minst_metProc (test_mif_array4.cpp:29:5) 

// Process-local variables
logic [3:0] minst_v[2];

// Modular interfaces array generate block
generate 
for (genvar sct_i = 0; sct_i != 2; sct_i = sct_i + 1) 
begin : minst_metProc_sct_i 

    always_comb 
    begin : minst_metProc     // test_mif_array4.cpp:29:5
        minst_v[sct_i] = minst_s[sct_i];
        minst_t0[sct_i] = minst_v[sct_i];
    end

end
endgenerate

//------------------------------------------------------------------------------
// Method process: top_method (test_mif_array4.cpp:60:5) 

// Process-local variables
logic [3:0] minst_vvv[2];

always_comb 
begin : top_method     // test_mif_array4.cpp:60:5
    logic [3:0] a;
    // Call f() begin
    minst_vvv[0] = minst_s[0];
    minst_t0[0] = minst_vvv[0];
    // Call f() end
    a = minst_s[1];
    minst_s[0] = a + minst_vvv[0];
end

//------------------------------------------------------------------------------
// Method process: top_method2 (test_mif_array4.cpp:68:5) 

// Process-local variables
logic [3:0] minst_vv[2];

always_comb 
begin : top_method2     // test_mif_array4.cpp:68:5
    minst_vv[1] = t;
    t1 = minst_vv[1];
end

endmodule


