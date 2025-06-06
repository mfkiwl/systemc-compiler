//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.14
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rst;
logic signed [31:0] s;
logic signed [31:0] r1;
logic signed [31:0] r2;
logic signed [31:0] r4;
logic signed [31:0] r5;
logic signed [31:0] r6;
logic signed [31:0] r7;
logic signed [31:0] r8;
logic signed [31:0] r9;
logic signed [31:0] r10;
logic signed [31:0] t0;

//------------------------------------------------------------------------------
// Method process: method1 (test_init_local_var2.cpp:47:5) 

always_comb 
begin : method1     // test_init_local_var2.cpp:47:5
    integer i;
    logic [3:0] x;
    integer k;
    logic [3:0] y;
    integer j;
    i = 0;
    y = 0;
    j = 0;
    x = 0;
    k = 42;
    r1 = 0;
    if (|s)
    begin
        i = 42;
        y = 0;
        j = i + k + y + x + 1;
        r1 = j;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread1 (test_init_local_var2.cpp:62:5) 

// Thread-local variables
logic signed [31:0] r2_next;
logic signed [31:0] n;
logic signed [31:0] n_next;

// Next-state combinational logic
always_comb begin : thread1_comb     // test_init_local_var2.cpp:62:5
    thread1_func;
end
function void thread1_func;
    integer rl;
    integer i;
    integer k;
    integer j;
    rl = 0;
    i = 0;
    j = 0;
    n_next = n;
    r2_next = r2;
    k = 42;
    if (|s)
    begin
        i = 42;
        j = i + k + n_next + 1;
        r2_next = j;
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : thread1_ff
    if ( ~rst ) begin
        integer rl;
        rl = 0;
        rl = 41;
        r2 <= rl;
    end
    else begin
        r2 <= r2_next;
        n <= n_next;
    end
end

//------------------------------------------------------------------------------
// Method process: method_array1 (test_init_local_var2.cpp:82:5) 

always_comb 
begin : method_array1     // test_init_local_var2.cpp:82:5
    logic an[3];
    integer ar[3];
    integer a[3];
    logic signed [7:0] ax[3];
    logic signed [64:0] ay[3];
    integer b[4];
    a[0] = 0; a[1] = 0; a[2] = 0;
    ay[0] = 0; ay[1] = 0; ay[2] = 0;
    b[0] = 0; b[1] = 0; b[2] = 0; b[3] = 0;
    an[0] = 0; an[1] = 0; an[2] = 0;
    ar[0] = 1; ar[1] = 2; ar[2] = 3;
    ax[0] = 0; ax[1] = 0; ax[2] = 0;
    if (|s)
    begin
        ay[0] = 0; ay[1] = 0; ay[2] = 0;
        b[0] = an[0]; b[1] = ar[1]; b[2] = 0; b[3] = 0;
        r4 = a[0] + b[1] + ax[2] + 32'(ay[2]);
    end else begin
        r4 = 0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_array1 (test_init_local_var2.cpp:100:5) 

// Thread-local variables
logic signed [31:0] r5_next;
logic signed [31:0] am[3];
logic signed [31:0] am_next[3];

// Next-state combinational logic
always_comb begin : thread_array1_comb     // test_init_local_var2.cpp:100:5
    thread_array1_func;
end
function void thread_array1_func;
    integer at[2];
    integer aa[3];
    integer ab[3];
    integer ac[3];
    integer j;
    aa[0] = 0; aa[1] = 0; aa[2] = 0;
    ac[0] = 0; ac[1] = 0; ac[2] = 0;
    j = 0;
    am_next = am;
    r5_next = r5;
    ab[0] = 4; ab[1] = 5; ab[2] = 6;
    if (|s)
    begin
        ac[0] = 7; ac[1] = 8; ac[2] = 9;
        j = aa[1] + ab[1] + ac[1] + am_next[1];
        r5_next = j;
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : thread_array1_ff
    if ( ~rst ) begin
        integer at[2];
        at[0] = 42; at[1] = 43;
        r5 <= at[1];
    end
    else begin
        r5 <= r5_next;
        am <= am_next;
    end
end

//------------------------------------------------------------------------------
// Method process: method_record1 (test_init_local_var2.cpp:128:5) 

always_comb 
begin : method_record1     // test_init_local_var2.cpp:128:5
    integer reca_a;
    logic reca_b;
    logic [3:0] reca_x;
    integer par;
    integer recb_a;
    logic recb_b;
    logic [3:0] recb_x;
    integer recc_a[3];
    logic recc_b[3];
    logic [3:0] recc_x[3];
    reca_a = 0;
    reca_b = 0;
    par = 0;
    recb_a = 0;
    recb_b = 0;
    recb_x = 0;
    recc_a[0] = 0; recc_a[1] = 0; recc_a[2] = 0;
    recc_b[0] = 0; recc_b[1] = 0; recc_b[2] = 0;
    recc_x[0] = 0; recc_x[1] = 0; recc_x[2] = 0;
    reca_x = 0;
    if (|s)
    begin
        par = 1;
        recb_a = par;
        recb_b = par == 42;
        recb_x = par + 1;
        r6 = reca_x + recb_a;
    end else begin
        r6 = recc_a[1];
    end
end

//------------------------------------------------------------------------------
// Method process: method_record_array1 (test_init_local_var2.cpp:142:5) 

always_comb 
begin : method_record_array1     // test_init_local_var2.cpp:142:5
    integer recarr1_a[2];
    logic recarr1_b[2];
    logic [3:0] recarr1_x[2];
    integer recarr2_a[3];
    logic recarr2_b[3];
    logic [3:0] recarr2_x[3];
    recarr1_a[0] = 0; recarr1_a[1] = 0;
    recarr1_b[0] = 0; recarr1_b[1] = 0;
    recarr1_x[0] = 0; recarr1_x[1] = 0;
    recarr2_a[0] = 0; recarr2_a[1] = 0; recarr2_a[2] = 0;
    recarr2_b[0] = 0; recarr2_b[1] = 0; recarr2_b[2] = 0;
    recarr2_x[0] = 0; recarr2_x[1] = 0; recarr2_x[2] = 0;
    if (|s)
    begin
        r7 = recarr1_x[1];
    end else begin
        r7 = 0;
    end
end

//------------------------------------------------------------------------------
// Method process: fcall_param1 (test_init_local_var2.cpp:157:5) 

always_comb 
begin : fcall_param1     // test_init_local_var2.cpp:157:5
    integer par;
    integer i;
    par = 1;
    // Call f() begin
    r8 = par;
    // Call f() end
    i = 42;
    par = i;
    // Call f() begin
    r8 = par;
    // Call f() end
    r8 = i;
end

//------------------------------------------------------------------------------
// Method process: fcall_return1 (test_init_local_var2.cpp:180:5) 

always_comb 
begin : fcall_return1     // test_init_local_var2.cpp:180:5
    integer i;
    i = 0;
    if (|s)
    begin
        i = 2;    // Call of g()
        i = 3;    // Call of g()
        i = 45;    // Call of g()
        i = 42;    // Call of h()
        r9 = i;
    end
    r9 = 0;
end

//------------------------------------------------------------------------------
// Method process: fcall_return2 (test_init_local_var2.cpp:193:5) 

always_comb 
begin : fcall_return2     // test_init_local_var2.cpp:193:5
    integer i;
    integer j;
    i = 2;    // Call of g()
    i = 3;    // Call of g()
    i = 45;    // Call of g()
    i = 42;    // Call of h()
    j = 42;    // Call of h()
    r10 = j;
end

//------------------------------------------------------------------------------
// Method process: ptr_and_ref (test_init_local_var2.cpp:206:5) 

// Process-local variables
logic signed [31:0] m;

always_comb 
begin : ptr_and_ref     // test_init_local_var2.cpp:206:5
    integer i;
    i = 42;
    m = 43 + i + m;
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_for1 (test_init_local_var2.cpp:220:5) 

// Thread-local variables
logic signed [31:0] t0_next;
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic signed [31:0] a0[4];
logic signed [31:0] a_next[4];
logic [1:0] thread_for1_PROC_STATE;
logic [1:0] thread_for1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread_for1_comb     // test_init_local_var2.cpp:220:5
    thread_for1_func;
end
function void thread_for1_func;
    a_next = a0;
    i_next = i0;
    t0_next = t0;
    thread_for1_PROC_STATE_next = thread_for1_PROC_STATE;
    
    case (thread_for1_PROC_STATE)
        0: begin
            if (|s)
            begin
                for (integer i_1 = 0; i_1 < 4; ++i_1)
                begin
                    a_next[i_1] = 1;
                end
                i_next = 0;
                a_next[i_next] = 2;
                thread_for1_PROC_STATE_next = 1; return;    // test_init_local_var2.cpp:235:21;
            end
            t0_next = a_next[0];
            thread_for1_PROC_STATE_next = 0; return;    // test_init_local_var2.cpp:239:13;
        end
        1: begin
            ++i_next;
            if (i_next < 4)
            begin
                a_next[i_next] = 2;
                thread_for1_PROC_STATE_next = 1; return;    // test_init_local_var2.cpp:235:21;
            end
            t0_next = a_next[0];
            thread_for1_PROC_STATE_next = 0; return;    // test_init_local_var2.cpp:239:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : thread_for1_ff
    if ( ~rst ) begin
        for (integer i = 0; i < 4; ++i)
        begin
            a0[i] <= 0;
        end
        t0 <= a0[0];
        thread_for1_PROC_STATE <= 0;    // test_init_local_var2.cpp:226:9;
    end
    else begin
        t0 <= t0_next;
        i0 <= i_next;
        a0 <= a_next;
        thread_for1_PROC_STATE <= thread_for1_PROC_STATE_next;
    end
end

endmodule


