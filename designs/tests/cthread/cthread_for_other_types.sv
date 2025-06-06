//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.14
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "top_inst"
(
    input logic clk
);

// Variables generated for SystemC signals
logic arstn;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_other_types_fns (test_cthread_for_other_types.cpp:44:5) 

// Thread-local variables
logic signed [31:0] t0_next;
logic signed [31:0] t1_next;
logic signed [31:0] t2_next;
logic signed [31:0] t3_next;

// Next-state combinational logic
always_comb begin : for_stmt_other_types_fns_comb     // test_cthread_for_other_types.cpp:44:5
    for_stmt_other_types_fns_func;
end
function void for_stmt_other_types_fns_func;
    logic [9:0] par1;
    logic [9:0] i;
    integer k;
    logic signed [19:0] par1_1;
    logic signed [19:0] i_1;
    integer k_1;
    logic signed [39:0] par1_2;
    logic signed [39:0] i_2;
    integer k_2;
    logic [54:0] par1_3;
    logic [54:0] i_3;
    integer k_3;
    logic [14:0] par1_4;
    logic [14:0] i_4;
    integer k_4;
    logic signed [24:0] par1_5;
    logic signed [24:0] i_5;
    integer k_5;
    logic signed [34:0] par1_6;
    logic signed [34:0] i_6;
    integer k_6;
    logic [44:0] par1_7;
    logic [44:0] i_7;
    integer k_7;
    logic [4:0] par1_8;
    logic [4:0] i_8;
    integer k_8;
    logic signed [14:0] par1_9;
    logic signed [14:0] i_9;
    integer k_9;
    logic signed [24:0] par1_10;
    logic signed [24:0] i_10;
    integer k_10;
    logic [55:0] par1_11;
    logic [55:0] i_11;
    integer k_11;
    logic [13:0] par1_12;
    logic [13:0] i_12;
    integer k_12;
    logic signed [22:0] par1_13;
    logic signed [22:0] i_13;
    integer k_13;
    logic signed [32:0] par1_14;
    logic signed [32:0] i_14;
    integer k_14;
    logic [59:0] par1_15;
    logic [59:0] i_15;
    integer k_15;
    logic [7:0] par1_16;
    logic [7:0] i_16;
    logic signed [30:0] par1_17;
    logic signed [30:0] i_17;
    logic signed [32:0] par1_18;
    logic signed [32:0] i_18;
    logic [63:0] par1_19;
    logic [63:0] i_19;
    t0_next = t0;
    t1_next = t1;
    t2_next = t2;
    t3_next = t3;
    par1 = 10'd0;
    // Call for_stmt_no_wait() begin
    i = par1;
    k = 0;
    for (i = 0; i < 2; i++)
    begin
        k = 32'(i);
    end
    t0_next = k;
    // Call for_stmt_no_wait() end
    par1_1 = 20'd0;
    // Call for_stmt_no_wait() begin
    i_1 = par1_1;
    k_1 = 0;
    for (i_1 = 0; i_1 < 2; i_1++)
    begin
        k_1 = 32'(i_1);
    end
    t0_next = k_1;
    // Call for_stmt_no_wait() end
    par1_2 = 40'd0;
    // Call for_stmt_no_wait() begin
    i_2 = par1_2;
    k_2 = 0;
    for (i_2 = 0; i_2 < 2; i_2++)
    begin
        k_2 = 32'(i_2);
    end
    t0_next = k_2;
    // Call for_stmt_no_wait() end
    par1_3 = 55'd0;
    // Call for_stmt_no_wait() begin
    i_3 = par1_3;
    k_3 = 0;
    for (i_3 = 0; i_3 < 2; i_3++)
    begin
        k_3 = 32'(i_3);
    end
    t0_next = k_3;
    // Call for_stmt_no_wait() end
    par1_4 = 15'd0;
    // Call for_stmt_wait0() begin
    i_4 = par1_4;
    k_4 = 0;
    k_4 = 1;
    for (i_4 = 0; i_4 < 2; i_4++)
    begin
        k_4 = signed'({1'b0, 32'(i_4)}) + 2;
    end
    k_4 = 3;
    t1_next = k_4;
    // Call for_stmt_wait0() end
    par1_5 = 25'd0;
    // Call for_stmt_wait0() begin
    i_5 = par1_5;
    k_5 = 0;
    k_5 = 1;
    for (i_5 = 0; i_5 < 2; i_5++)
    begin
        k_5 = 32'(i_5) + 2;
    end
    k_5 = 3;
    t1_next = k_5;
    // Call for_stmt_wait0() end
    par1_6 = 35'd0;
    // Call for_stmt_wait0() begin
    i_6 = par1_6;
    k_6 = 0;
    k_6 = 1;
    for (i_6 = 0; i_6 < 2; i_6++)
    begin
        k_6 = 32'(i_6) + 2;
    end
    k_6 = 3;
    t1_next = k_6;
    // Call for_stmt_wait0() end
    par1_7 = 45'd0;
    // Call for_stmt_wait0() begin
    i_7 = par1_7;
    k_7 = 0;
    k_7 = 1;
    for (i_7 = 0; i_7 < 2; i_7++)
    begin
        k_7 = signed'({1'b0, 32'(i_7)}) + 2;
    end
    k_7 = 3;
    t1_next = k_7;
    // Call for_stmt_wait0() end
    par1_8 = 5'd0;
    // Call for_stmt_wait1() begin
    i_8 = par1_8;
    k_8 = 0;
    for (i_8 = 0; i_8 < 2; i_8++)
    begin
        k_8 = 1;
    end
    k_8 = 2;
    t2_next = k_8;
    // Call for_stmt_wait1() end
    par1_9 = 15'd0;
    // Call for_stmt_wait1() begin
    i_9 = par1_9;
    k_9 = 0;
    for (i_9 = 0; i_9 < 2; i_9++)
    begin
        k_9 = 1;
    end
    k_9 = 2;
    t2_next = k_9;
    // Call for_stmt_wait1() end
    par1_10 = 25'd0;
    // Call for_stmt_wait1() begin
    i_10 = par1_10;
    k_10 = 0;
    for (i_10 = 0; i_10 < 2; i_10++)
    begin
        k_10 = 1;
    end
    k_10 = 2;
    t2_next = k_10;
    // Call for_stmt_wait1() end
    par1_11 = 56'd0;
    // Call for_stmt_wait1() begin
    i_11 = par1_11;
    k_11 = 0;
    for (i_11 = 0; i_11 < 2; i_11++)
    begin
        k_11 = 1;
    end
    k_11 = 2;
    t2_next = k_11;
    // Call for_stmt_wait1() end
    par1_12 = 14'd0;
    // Call for_stmt_wait2() begin
    i_12 = par1_12;
    k_12 = 0;
    for (i_12 = 0; i_12 < 2; i_12++)
    begin
        k_12 = 1;
    end
    k_12 = 2;
    k_12 = 3;
    t3_next = k_12;
    // Call for_stmt_wait2() end
    par1_13 = 23'd0;
    // Call for_stmt_wait2() begin
    i_13 = par1_13;
    k_13 = 0;
    for (i_13 = 0; i_13 < 2; i_13++)
    begin
        k_13 = 1;
    end
    k_13 = 2;
    k_13 = 3;
    t3_next = k_13;
    // Call for_stmt_wait2() end
    par1_14 = 33'd0;
    // Call for_stmt_wait2() begin
    i_14 = par1_14;
    k_14 = 0;
    for (i_14 = 0; i_14 < 2; i_14++)
    begin
        k_14 = 1;
    end
    k_14 = 2;
    k_14 = 3;
    t3_next = k_14;
    // Call for_stmt_wait2() end
    par1_15 = 60'd0;
    // Call for_stmt_wait2() begin
    i_15 = par1_15;
    k_15 = 0;
    for (i_15 = 0; i_15 < 2; i_15++)
    begin
        k_15 = 1;
    end
    k_15 = 2;
    k_15 = 3;
    t3_next = k_15;
    // Call for_stmt_wait2() end
    par1_16 = 8'd0;
    // Call for_stmt_wait_noiter() begin
    i_16 = par1_16;
    i_16 = 0;
    // Call for_stmt_wait_noiter() end
    par1_17 = 31'd0;
    // Call for_stmt_wait_noiter() begin
    i_17 = par1_17;
    i_17 = 0;
    // Call for_stmt_wait_noiter() end
    par1_18 = 33'd0;
    // Call for_stmt_wait_noiter() begin
    i_18 = par1_18;
    i_18 = 0;
    // Call for_stmt_wait_noiter() end
    par1_19 = 64'd0;
    // Call for_stmt_wait_noiter() begin
    i_19 = par1_19;
    i_19 = 0;
    // Call for_stmt_wait_noiter() end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_other_types_fns_ff
    if ( ~arstn ) begin
    end
    else begin
        t0 <= t0_next;
        t1 <= t1_next;
        t2 <= t2_next;
        t3 <= t3_next;
    end
end

endmodule


