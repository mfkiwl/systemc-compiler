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
logic minst_rstn;
logic signed [31:0] minst_s;
logic signed [31:0] minst_t1;
logic signed [31:0] minst_t2;
logic signed [31:0] minst_t4;
logic ninst_rstn;
logic signed [31:0] ninst_s;
logic signed [31:0] ninst_t1;
logic signed [31:0] ninst_t2;
logic signed [31:0] ninst_t4;
logic minst_clk;
logic ninst_clk;

// Assignments generated for C++ channel arrays
assign minst_clk = clk;
assign ninst_clk = clk;

//------------------------------------------------------------------------------
// Clocked THREAD: minst_reg_var1 (test_name_conflict3.cpp:35:5) 

// Thread-local variables
logic signed [31:0] i;
logic signed [31:0] i_next;
logic signed [31:0] minst_t1_next;

// Next-state combinational logic
always_comb begin : minst_reg_var1_comb     // test_name_conflict3.cpp:35:5
    minst_reg_var1_func;
end
function void minst_reg_var1_func;
    logic signed [63:0] sum;
    i_next = i;
    minst_t1_next = minst_t1;
    sum = i_next;
    minst_t1_next = sum;
endfunction

// Synchronous register update
always_ff @(posedge minst_clk or negedge minst_rstn) 
begin : minst_reg_var1_ff
    if ( ~minst_rstn ) begin
        i <= 0;
    end
    else begin
        i <= i_next;
        minst_t1 <= minst_t1_next;
    end
end

//------------------------------------------------------------------------------
// Method process: minst_local_var1 (test_name_conflict3.cpp:49:5) 

always_comb 
begin : minst_local_var1     // test_name_conflict3.cpp:49:5
    logic [3:0] x;
    logic signed [63:0] sum;
    x = minst_s;
    sum = x + 1;
    minst_t2 = sum;
end

//------------------------------------------------------------------------------
// Clocked THREAD: minst_reg_var2 (test_name_conflict3.cpp:57:5) 

// Thread-local variables
logic [3:0] x0;
logic [3:0] x_next;
logic signed [63:0] sum0;
logic signed [63:0] sum_next;
logic a;
logic a_next;
logic signed [31:0] minst_s_next;
logic reg_var2_PROC_STATE;
logic reg_var2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : minst_reg_var2_comb     // test_name_conflict3.cpp:57:5
    minst_reg_var2_func;
end
function void minst_reg_var2_func;
    a_next = a;
    minst_s_next = minst_s;
    sum_next = sum0;
    x_next = x0;
    reg_var2_PROC_STATE_next = reg_var2_PROC_STATE;
    
    case (reg_var2_PROC_STATE)
        0: begin
            sum_next = 42 + x_next;
            reg_var2_PROC_STATE_next = 1; return;    // test_name_conflict3.cpp:66:13;
        end
        1: begin
            minst_s_next = sum_next;
            x_next = minst_s;
            sum_next = 42 + x_next;
            reg_var2_PROC_STATE_next = 1; return;    // test_name_conflict3.cpp:66:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge minst_clk or negedge minst_rstn) 
begin : minst_reg_var2_ff
    if ( ~minst_rstn ) begin
        a <= 1;
        x0 <= 0;
        reg_var2_PROC_STATE <= 0;    // test_name_conflict3.cpp:61:9;
    end
    else begin
        x0 <= x_next;
        sum0 <= sum_next;
        a <= a_next;
        minst_s <= minst_s_next;
        reg_var2_PROC_STATE <= reg_var2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: minst_local_var2 (test_name_conflict3.cpp:73:5) 

always_comb 
begin : minst_local_var2     // test_name_conflict3.cpp:73:5
    logic a_1;
    integer i_1;
    logic [3:0] x;
    logic signed [63:0] sum;
    x = 0;
    i_1 = minst_s;
    sum = a_1 ? i_1 : 0;
    minst_t4 = sum;
end

//------------------------------------------------------------------------------
// Clocked THREAD: ninst_reg_var1 (test_name_conflict3.cpp:35:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next0;
logic signed [31:0] ninst_t1_next;

// Next-state combinational logic
always_comb begin : ninst_reg_var1_comb     // test_name_conflict3.cpp:35:5
    ninst_reg_var1_func;
end
function void ninst_reg_var1_func;
    logic signed [63:0] sum;
    i_next0 = i0;
    ninst_t1_next = ninst_t1;
    sum = i_next0;
    ninst_t1_next = sum;
endfunction

// Synchronous register update
always_ff @(posedge ninst_clk or negedge ninst_rstn) 
begin : ninst_reg_var1_ff
    if ( ~ninst_rstn ) begin
        i0 <= 0;
    end
    else begin
        i0 <= i_next0;
        ninst_t1 <= ninst_t1_next;
    end
end

//------------------------------------------------------------------------------
// Method process: ninst_local_var1 (test_name_conflict3.cpp:49:5) 

always_comb 
begin : ninst_local_var1     // test_name_conflict3.cpp:49:5
    logic [3:0] x;
    logic signed [63:0] sum;
    x = ninst_s;
    sum = x + 1;
    ninst_t2 = sum;
end

//------------------------------------------------------------------------------
// Clocked THREAD: ninst_reg_var2 (test_name_conflict3.cpp:57:5) 

// Thread-local variables
logic [3:0] x1;
logic [3:0] x_next0;
logic signed [63:0] sum1;
logic signed [63:0] sum_next0;
logic a0;
logic a_next0;
logic signed [31:0] ninst_s_next;
logic reg_var2_PROC_STATE0;
logic reg_var2_PROC_STATE_next0;

// Next-state combinational logic
always_comb begin : ninst_reg_var2_comb     // test_name_conflict3.cpp:57:5
    ninst_reg_var2_func;
end
function void ninst_reg_var2_func;
    a_next0 = a0;
    ninst_s_next = ninst_s;
    sum_next0 = sum1;
    x_next0 = x1;
    reg_var2_PROC_STATE_next0 = reg_var2_PROC_STATE0;
    
    case (reg_var2_PROC_STATE0)
        0: begin
            sum_next0 = 42 + x_next0;
            reg_var2_PROC_STATE_next0 = 1; return;    // test_name_conflict3.cpp:66:13;
        end
        1: begin
            ninst_s_next = sum_next0;
            x_next0 = ninst_s;
            sum_next0 = 42 + x_next0;
            reg_var2_PROC_STATE_next0 = 1; return;    // test_name_conflict3.cpp:66:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge ninst_clk or negedge ninst_rstn) 
begin : ninst_reg_var2_ff
    if ( ~ninst_rstn ) begin
        a0 <= 1;
        x1 <= 0;
        reg_var2_PROC_STATE0 <= 0;    // test_name_conflict3.cpp:61:9;
    end
    else begin
        x1 <= x_next0;
        sum1 <= sum_next0;
        a0 <= a_next0;
        ninst_s <= ninst_s_next;
        reg_var2_PROC_STATE0 <= reg_var2_PROC_STATE_next0;
    end
end

//------------------------------------------------------------------------------
// Method process: ninst_local_var2 (test_name_conflict3.cpp:73:5) 

always_comb 
begin : ninst_local_var2     // test_name_conflict3.cpp:73:5
    logic a_1;
    integer i_1;
    logic [3:0] x;
    logic signed [63:0] sum;
    x = 0;
    i_1 = ninst_s;
    sum = a_1 ? i_1 : 0;
    ninst_t4 = sum;
end

endmodule


