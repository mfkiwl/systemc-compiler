//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.17
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic s1;
logic s2;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk),
  .out(s2),
  .p(s1)
);

endmodule



//==============================================================================
//
// Module: A (test_fcall_ref.cpp:409:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    output logic out,
    output logic p
);

// Variables generated for SystemC signals
logic [3:0] sig;
logic [3:0] si;
logic [7:0] sig2;
logic [3:0] sig3;
logic [3:0] sig_arr[3];
logic [7:0] sig_arr2[3];

//------------------------------------------------------------------------------
// Method process: const_reference (test_fcall_ref.cpp:130:5) 

always_comb 
begin : const_reference     // test_fcall_ref.cpp:130:5
end

//------------------------------------------------------------------------------
// Method process: const_reference_sc (test_fcall_ref.cpp:136:5) 

always_comb 
begin : const_reference_sc     // test_fcall_ref.cpp:136:5
    logic [1:0] i;
    logic [3:0] j;
    i = 1;
    i = 1;
    i = 3;
    i = 2;
    i = 3;
    j = 5;
    i = 2;
    i = 3;
end

//------------------------------------------------------------------------------
// Method process: const_reference_noninit (test_fcall_ref.cpp:152:5) 

always_comb 
begin : const_reference_noninit     // test_fcall_ref.cpp:152:5
    integer k_1;
    integer TMP_0;
    integer j;
    integer m_1;
    // Call const_ref() begin
    j = k_1;
    TMP_0 = j;
    // Call const_ref() end
    m_1 = 1;
end

//------------------------------------------------------------------------------
// Method process: const_reference_expr (test_fcall_ref.cpp:162:5) 

always_comb 
begin : const_reference_expr     // test_fcall_ref.cpp:162:5
    logic [3:0] TMP_0;
    logic [3:0] j;
    logic [1:0] TMP_1;
    logic [1:0] val;
    logic [1:0] j_1;
    // Call const_ref() begin
    j = si;
    TMP_0 = j;
    // Call const_ref() end
    val = 2'(si[1 : 0]);
    // Call const_ref() begin
    j_1 = val;
    TMP_1 = j_1;
    // Call const_ref() end
end

//------------------------------------------------------------------------------
// Method process: const_reference_sig (test_fcall_ref.cpp:176:5) 

always_comb 
begin : const_reference_sig     // test_fcall_ref.cpp:176:5
    logic [1:0] TMP_0;
    logic [1:0] j;
    logic [1:0] TMP_1;
    logic [1:0] TMP_2;
    logic [3:0] val;
    logic [1:0] TMP_3;
    logic [1:0] TMP_4;
    logic [3:0] l;
    // Call const_ref2() begin
    j = sig[1 : 0];
    TMP_0 = j + 1;
    // Call const_ref2() end
    // Call const_ref2() begin
    j = sig[1 : 0];
    TMP_1 = j + 1;
    // Call const_ref2() end
    val = sig + 1;
    // Call const_ref2() begin
    j = val[1 : 0];
    TMP_2 = j + 1;
    // Call const_ref2() end
    val = sig2;
    // Call const_ref2() begin
    j = val[1 : 0];
    TMP_3 = j + 1;
    // Call const_ref2() end
    val = sig3;
    // Call const_ref2() begin
    j = val[1 : 0];
    TMP_4 = j + 1;
    // Call const_ref2() end
    // Call const_ref_sig() begin
    l = sig;
    // Call const_ref_sig() end
end

//------------------------------------------------------------------------------
// Method process: const_reference_sig_arr (test_fcall_ref.cpp:192:5) 

always_comb 
begin : const_reference_sig_arr     // test_fcall_ref.cpp:192:5
    logic [1:0] TMP_0;
    logic [1:0] j;
    logic [1:0] TMP_1;
    logic [1:0] TMP_2;
    logic [3:0] val;
    logic [1:0] TMP_3;
    // Call const_ref2() begin
    j = sig_arr[1][1 : 0];
    TMP_0 = j + 1;
    // Call const_ref2() end
    // Call const_ref2() begin
    j = sig_arr[sig][1 : 0];
    TMP_1 = j + 1;
    // Call const_ref2() end
    val = sig_arr2[1];
    // Call const_ref2() begin
    j = val[1 : 0];
    TMP_2 = j + 1;
    // Call const_ref2() end
    val = sig_arr2[sig];
    // Call const_ref2() begin
    j = val[1 : 0];
    TMP_3 = j + 1;
    // Call const_ref2() end
end

//------------------------------------------------------------------------------
// Method process: scint_reference (test_fcall_ref.cpp:205:5) 

always_comb 
begin : scint_reference     // test_fcall_ref.cpp:205:5
    logic [2:0] x;
    logic [1:0] k_1;
    integer j;
    logic [1:0] a;
    x = 1;
    // Call ref() begin
    k_1 = x[2 : 1];
    x = k_1 + 1;
    // Call ref() end
    x[2 : 1] = 1;
    j = x[0];
    // Call ref_par() begin
    a = x[1 : 0];
    // Call ref_par() end
end

//------------------------------------------------------------------------------
// Method process: reference_inner_call (test_fcall_ref.cpp:234:5) 

always_comb 
begin : reference_inner_call     // test_fcall_ref.cpp:234:5
    logic [2:0] x;
    logic [1:0] k_1;
    logic [1:0] TMP_0;
    logic [3:0] par;
    logic [1:0] a;
    x = 2;
    // Call ref_with_call() begin
    // Call ref() begin
    k_1 = x[2 : 1];
    x = k_1 + 1;
    // Call ref() end
    // Call ref_with_call() end
    par = 3;
    // Call const_ref_with_call() begin
    a = 0 + 1;
    TMP_0 = a;
    // Call const_ref_with_call() end
end

//------------------------------------------------------------------------------
// Method process: pointer_param (test_fcall_ref.cpp:284:5) 

// Process-local variables
logic signed [31:0] q;
logic [2:0] s1;
logic r;

always_comb 
begin : pointer_param     // test_fcall_ref.cpp:284:5
    integer i;
    integer TMP_2;
    integer i_1;
    q = 1;
    i = 2;    // Call of ptr1()
    q = i;
    i = 0;    // Call of ptr2()
    // Call ptr3() begin
    i_1 = s1[2 : 1];
    s1 = 1;
    TMP_2 = i_1;
    // Call ptr3() end
    i = TMP_2;
end

//------------------------------------------------------------------------------
// Method process: pointer_param_modfied (test_fcall_ref.cpp:299:5) 

// Process-local variables
logic signed [31:0] m;
logic signed [31:0] q1;

always_comb 
begin : pointer_param_modfied     // test_fcall_ref.cpp:299:5
    integer i;
    m = 1;
    // Call ptr4() begin
    i = m + 1;
    m = i;
    // Call ptr4() end
    q1 = 1;
    // Call ptr4() begin
    i = q1 + 1;
    q1 = i;
    // Call ptr4() end
end

//------------------------------------------------------------------------------
// Method process: pointer_inner_call (test_fcall_ref.cpp:316:5) 

// Process-local variables
logic [2:0] s;
logic [2:0] n;

always_comb 
begin : pointer_inner_call     // test_fcall_ref.cpp:316:5
    integer i;
    integer TMP_0;
    integer i_1;
    s = 2;
    // Call ptr_with_call() begin
    i = s;
    // Call ptr3() begin
    i_1 = s[2 : 1];
    s = 1;
    TMP_0 = i_1;
    // Call ptr3() end
    // Call ptr_with_call() end
    n = 2;
    // Call ptr_with_call() begin
    i = n;
    // Call ptr3() begin
    i_1 = n[2 : 1];
    n = 1;
    TMP_0 = i_1;
    // Call ptr3() end
    // Call ptr_with_call() end
end

//------------------------------------------------------------------------------
// Method process: recursive_ref (test_fcall_ref.cpp:339:5) 

always_comb 
begin : recursive_ref     // test_fcall_ref.cpp:339:5
    logic [3:0] x;
    logic [3:0] TMP_0;
    integer res;
    x = sig;
    // Call rec_ref() begin
    // Call rec_ref_() begin
    x++;
    // Call rec_ref_() end
    TMP_0 = x + 1;
    // Call rec_ref() end
    res = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: recursive_ref_const (test_fcall_ref.cpp:358:5) 

always_comb 
begin : recursive_ref_const     // test_fcall_ref.cpp:358:5
    logic [3:0] TMP_0;
    integer TMP_1;
    integer res;
    // Call rec_ref_const() begin
    // Call rec_ref_const_() begin
    TMP_1 = sig + 1;
    // Call rec_ref_const_() end
    TMP_0 = TMP_1 + 1;
    // Call rec_ref_const() end
    res = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: reference_init_func (test_fcall_ref.cpp:389:5) 

always_comb 
begin : reference_init_func     // test_fcall_ref.cpp:389:5
    integer m_1;
    integer x;
    m_1 = 1;
    x = 3;    // Call of ref_const_call()
end

endmodule


