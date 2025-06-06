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
logic signed [31:0] minsts2_t0[2];
logic signed [31:0] t1;
logic signed [31:0] t3;
logic signed [31:0] t4;
logic signed [31:0] t5;

// Local parameters generated for C++ constants
localparam logic [3:0] minsts_v[2] = '{ 0, 1 };
localparam logic [31:0] minsts_c[2] = '{ 0, 1 };
localparam logic [31:0] minsts_d[2] = '{ 1, 1 };
localparam logic [3:0] minsts2_v[2] = '{ 1, 2 };
localparam logic [3:0] minst_v = 1;
localparam logic [3:0] pinst_v = 1;

//------------------------------------------------------------------------------
// Method process: minsts2_mod_meth (test_mif_array_const_unkwn.cpp:50:5) 

// Modular interfaces array generate block
generate 
for (genvar sct_i = 0; sct_i != 2; sct_i = sct_i + 1) 
begin : minsts2_mod_meth_sct_i 

    always_comb 
    begin : minsts2_mod_meth     // test_mif_array_const_unkwn.cpp:50:5
        logic [3:0] ll;
        ll = minsts2_v[sct_i];
        minsts2_t0[sct_i] = ll;
    end

end
endgenerate

//------------------------------------------------------------------------------
// Method process: usedef_method (test_mif_array_const_unkwn.cpp:85:5) 

// Process-local variables
logic [31:0] minst_w;
logic [31:0] pinst_w;

always_comb 
begin : usedef_method     // test_mif_array_const_unkwn.cpp:85:5
    integer j;
    integer l;
    j = t;
    l = minst_v + minst_w;
    if (|j)
    begin
        minst_w = 1;
    end
    l = pinst_v + pinst_w;
    if (|j)
    begin
        pinst_w = 1;
    end
    l = minsts_v[1] + minsts_v[1];
    l = minsts2_v[j];
    t1 = l;
end

//------------------------------------------------------------------------------
// Method process: const_meth (test_mif_array_const_unkwn.cpp:119:5) 

always_comb 
begin : const_meth     // test_mif_array_const_unkwn.cpp:119:5
    integer j;
    j = t;
    if (|minsts_c[j])
    begin
        j++;
    end
    j--;
    t3 = j;
end

//------------------------------------------------------------------------------
// Method process: record (test_mif_array_const_unkwn.cpp:136:5) 

// Process-local variables
logic signed [31:0] rec_b;

always_comb 
begin : record     // test_mif_array_const_unkwn.cpp:136:5
    integer i;
    i = rec_b;
    if (|i)
    begin
        ++i;
    end
    if (|t)
    begin
        rec_b = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: record_array (test_mif_array_const_unkwn.cpp:147:5) 

// Process-local variables
logic signed [31:0] arr_b[3];

always_comb 
begin : record_array     // test_mif_array_const_unkwn.cpp:147:5
    integer k;
    integer j;
    integer i1;
    integer i2;
    j = t;
    i1 = arr_b[1];
    i2 = arr_b[j];
    k = 1;
    if (|arr_b[j])
    begin
        k = 2;
    end
    k = 3;
    k = |i2 ? 5 : 6;
    t4 = k;
end

//------------------------------------------------------------------------------
// Method process: record_array_def (test_mif_array_const_unkwn.cpp:166:5) 

// Process-local variables
logic signed [31:0] marr_b[3];
logic signed [31:0] narr_b[3];

always_comb 
begin : record_array_def     // test_mif_array_const_unkwn.cpp:166:5
    integer k;
    integer j;
    j = t;
    if (|marr_b[1])
    begin
        k = 1;
    end
    if (|narr_b[1])
    begin
        k = 2;
    end
    if (|marr_b[j])
    begin
        k = 3;
    end
    if (|narr_b[j])
    begin
        k = 4;
    end
    marr_b[0] = 0;
    narr_b[j] = 0;
    t5 = k;
end

endmodule


