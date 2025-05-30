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
module A // "a"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rst;
logic [1:0] sig;
logic signed [31:0] t0;
logic signed [31:0] t1;
logic signed [31:0] t2;
logic signed [31:0] t3;
logic signed [31:0] t4;
logic signed [31:0] t5;
logic signed [31:0] t6;
logic signed [31:0] t7;
logic ws[3][3];
logic vs[3][3];
logic ys[3][3];
logic signed [31:0] t8;
logic sa[3];
logic signed [31:0] t9;
logic signed [31:0] t10;

//------------------------------------------------------------------------------
// Method process: array_in_method1 (test_cthread_array_access.cpp:78:5) 

// Process-local variables
logic [2:0] r[3];

always_comb 
begin : array_in_method1     // test_cthread_array_access.cpp:78:5
    integer i;
    integer j;
    r[0] = 1;
    r[1] = 2;
    i = sig;
    r[i] = 3;
    j = r[i + 1] + r[2];
    t0 = j;
end

//------------------------------------------------------------------------------
// Method process: array_in_method2 (test_cthread_array_access.cpp:90:5) 

// Process-local variables
logic [3:0] rr[3][2];

always_comb 
begin : array_in_method2     // test_cthread_array_access.cpp:90:5
    integer i;
    integer j;
    for (integer k = 0; k < 3; k++)
    begin
        rr[k][0] = k;
    end
    i = sig;
    rr[1][i] = 2;
    j = rr[2][1];
    rr[i][j] = 3;
    j = rr[i + 1][j - 1] + 1;
    t1 = j;
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_in_thread1 (test_cthread_array_access.cpp:106:5) 

// Thread-local variables
logic s[3];
logic s_next[3];
logic signed [31:0] t2_next;

// Next-state combinational logic
always_comb begin : array_in_thread1_comb     // test_cthread_array_access.cpp:106:5
    array_in_thread1_func;
end
function void array_in_thread1_func;
    integer i;
    logic b;
    s_next = s;
    t2_next = t2;
    i = sig;
    s_next[i] = i == 1;
    b = s_next[i + 1] || s_next[i];
    t2_next = b;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_in_thread1_ff
    if ( rst ) begin
        s[1] <= 0;
    end
    else begin
        s <= s_next;
        t2 <= t2_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_in_thread2 (test_cthread_array_access.cpp:122:5) 

// Thread-local variables
logic signed [31:0] ss[2][3];
logic signed [31:0] ss_next[2][3];

// Next-state combinational logic
always_comb begin : array_in_thread2_comb     // test_cthread_array_access.cpp:122:5
    array_in_thread2_func;
end
function void array_in_thread2_func;
    integer i;
    integer j;
    ss_next = ss;
    i = sig;
    ss_next[i + 1][0] = 0;
    j = ss_next[i][i] * i;
    if (|ss_next[i][j])
    begin
        j = sig;
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_in_thread2_ff
    if ( rst ) begin
        integer i;
        for (integer k = 0; k < 2; k++)
        begin
            for (integer l = 0; l < 3; l++)
            begin
                ss[k][l] <= k + l;
            end
        end
        i = 0;
    end
    else begin
        ss <= ss_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def0 (test_cthread_array_access.cpp:148:5) 

// Thread-local variables
logic signed [31:0] t3_next;

// Next-state combinational logic
always_comb begin : array_use_def0_comb     // test_cthread_array_access.cpp:148:5
    array_use_def0_func;
end
function void array_use_def0_func;
    logic w[3][3];
    logic c;
    t3_next = t3;
    w[1][1] = 1;
    c = w[1][1];
    t3_next = c;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def0_ff
    if ( rst ) begin
    end
    else begin
        t3 <= t3_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def1 (test_cthread_array_access.cpp:166:5) 

// Thread-local variables
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic signed [31:0] ww[2];
logic signed [31:0] ww_next[2];
logic signed [31:0] w0[2];
logic signed [31:0] w_next[2];
logic signed [31:0] t4_next;
logic array_use_def1_PROC_STATE;
logic array_use_def1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : array_use_def1_comb     // test_cthread_array_access.cpp:166:5
    array_use_def1_func;
end
function void array_use_def1_func;
    integer z[2];
    integer i;
    integer u[2];
    integer y[2];
    integer x[2];
    j_next = j0;
    t4_next = t4;
    w_next = w0;
    ww_next = ww;
    array_use_def1_PROC_STATE_next = array_use_def1_PROC_STATE;
    
    case (array_use_def1_PROC_STATE)
        0: begin
            z[1] = 2;
            i = 1 + z[1];
            z[0] = 1;
            i = z[0] + z[1];
            u[1] = 0;
            i = u[0];
            j_next = sig;
            y[j_next] = 0;
            i = y[0];
            x[j_next] = 0;
            i = x[j_next];
            ww_next[0] = 0; ww_next[1] = 0;
            w_next[j_next] = 0;
            t4_next = i;
            array_use_def1_PROC_STATE_next = 1; return;    // test_cthread_array_access.cpp:200:13;
        end
        1: begin
            t4_next = w_next[j_next] + ww_next[j_next];
            z[1] = 2;
            i = 1 + z[1];
            z[0] = 1;
            i = z[0] + z[1];
            u[1] = 0;
            i = u[0];
            j_next = sig;
            y[j_next] = 0;
            i = y[0];
            x[j_next] = 0;
            i = x[j_next];
            ww_next[0] = 0; ww_next[1] = 0;
            w_next[j_next] = 0;
            t4_next = i;
            array_use_def1_PROC_STATE_next = 1; return;    // test_cthread_array_access.cpp:200:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def1_ff
    if ( rst ) begin
        array_use_def1_PROC_STATE <= 0;    // test_cthread_array_access.cpp:168:9;
    end
    else begin
        j0 <= j_next;
        ww <= ww_next;
        w0 <= w_next;
        t4 <= t4_next;
        array_use_def1_PROC_STATE <= array_use_def1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def2 (test_cthread_array_access.cpp:209:5) 

// Thread-local variables
logic signed [31:0] z0[2];
logic signed [31:0] z_next[2];
logic [2:0] u0[2];
logic [2:0] u_next[2];
logic signed [31:0] t5_next;
logic [1:0] array_use_def2_PROC_STATE;
logic [1:0] array_use_def2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : array_use_def2_comb     // test_cthread_array_access.cpp:209:5
    array_use_def2_func;
end
function void array_use_def2_func;
    logic signed [3:0] y[2];
    integer i;
    t5_next = t5;
    u_next = u0;
    z_next = z0;
    array_use_def2_PROC_STATE_next = array_use_def2_PROC_STATE;
    
    case (array_use_def2_PROC_STATE)
        0: begin
            u_next[0] = 0; u_next[1] = 0;
            y[0] = 0; y[1] = 0;
            array_use_def2_PROC_STATE_next = 1; return;    // test_cthread_array_access.cpp:221:13;
        end
        1: begin
            z_next[1] = 2;
            i = z_next[0];
            u_next[0] = 3;
            i = u_next[0];
            y[1] = 4;
            array_use_def2_PROC_STATE_next = 2; return;    // test_cthread_array_access.cpp:230:13;
        end
        2: begin
            i = u_next[0];
            y[1] = 5;
            i = y[1];
            t5_next = i;
            array_use_def2_PROC_STATE_next = 0; return;    // test_cthread_array_access.cpp:236:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def2_ff
    if ( rst ) begin
        array_use_def2_PROC_STATE <= 0;    // test_cthread_array_access.cpp:211:9;
    end
    else begin
        z0 <= z_next;
        u0 <= u_next;
        t5 <= t5_next;
        array_use_def2_PROC_STATE <= array_use_def2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def_ptr1 (test_cthread_array_access.cpp:249:5) 

// Thread-local variables
logic signed [31:0] zp[2];
logic signed [31:0] zp_next[2];
logic signed [31:0] j1;
logic signed [31:0] j_next0;
logic signed [31:0] yp[2];
logic signed [31:0] yp_next[2];
logic signed [31:0] xp[2];
logic signed [31:0] xp_next[2];
logic signed [31:0] t6_next;
logic signed [31:0] qp[2];

// Next-state combinational logic
always_comb begin : array_use_def_ptr1_comb     // test_cthread_array_access.cpp:249:5
    array_use_def_ptr1_func;
end
function void array_use_def_ptr1_func;
    integer i;
    j_next0 = j1;
    t6_next = t6;
    xp_next = xp;
    yp_next = yp;
    zp_next = zp;
    zp_next[1] = 3;
    i = zp_next[0];
    yp_next[j_next0] = 4;
    i = yp_next[1];
    xp_next[0] = 5;
    xp_next[1] = 6;
    i = xp_next[j_next0];
    qp[1] = 7;
    i = qp[1];
    t6_next = i;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def_ptr1_ff
    if ( rst ) begin
        j1 <= sig;
    end
    else begin
        zp <= zp_next;
        j1 <= j_next0;
        yp <= yp_next;
        xp <= xp_next;
        t6 <= t6_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def_ptr2 (test_cthread_array_access.cpp:278:5) 

// Thread-local variables
logic signed [31:0] zpp[2][2];
logic signed [31:0] zpp_next[2][2];
logic signed [31:0] j2;
logic signed [31:0] j_next1;
logic signed [31:0] ypp[2][2];
logic signed [31:0] ypp_next[2][2];
logic signed [31:0] xpp[2][2];
logic signed [31:0] xpp_next[2][2];
logic signed [31:0] t7_next;
logic signed [31:0] qpp[2][2];

// Next-state combinational logic
always_comb begin : array_use_def_ptr2_comb     // test_cthread_array_access.cpp:278:5
    array_use_def_ptr2_func;
end
function void array_use_def_ptr2_func;
    integer i;
    j_next1 = j2;
    t7_next = t7;
    xpp_next = xpp;
    ypp_next = ypp;
    zpp_next = zpp;
    zpp_next[1][0] = 3;
    i = zpp_next[1][1];
    ypp_next[j_next1][1] = 4;
    i = ypp_next[0][1];
    xpp_next[0][0] = 5;
    xpp_next[1][0] = 6;
    xpp_next[0][1] = 6;
    xpp_next[1][1] = 6;
    i = xpp_next[j_next1][0];
    qpp[1][1] = 7;
    i = qpp[1][1];
    t7_next = i;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def_ptr2_ff
    if ( rst ) begin
        j2 <= sig;
    end
    else begin
        zpp <= zpp_next;
        j2 <= j_next1;
        ypp <= ypp_next;
        xpp <= xpp_next;
        t7 <= t7_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_use_def_sig (test_cthread_array_access.cpp:309:5) 

// Thread-local variables
logic signed [31:0] j3;
logic signed [31:0] j_next2;
logic ws_next[3][3];
logic vs_next[3][3];
logic ys_next[3][3];
logic signed [31:0] t8_next;

// Next-state combinational logic
always_comb begin : array_use_def_sig_comb     // test_cthread_array_access.cpp:309:5
    array_use_def_sig_func;
end
function void array_use_def_sig_func;
    logic c;
    j_next2 = j3;
    t8_next = t8;
    vs_next = vs;
    ws_next = ws;
    ys_next = ys;
    ws_next[1][j_next2] = 1;
    vs_next[j_next2][1] = 1;
    ys_next[0][1] = 1;
    c = ws[1][1];
    c = vs[1][0];
    c = ys[0][1];
    t8_next = c;
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_use_def_sig_ff
    if ( rst ) begin
        j3 <= sig;
    end
    else begin
        j3 <= j_next2;
        ws <= ws_next;
        vs <= vs_next;
        ys <= ys_next;
        t8 <= t8_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_elem_trhead1 (test_cthread_array_access.cpp:335:5) 

// Thread-local variables
logic sa_next[3];
logic signed [31:0] t9_next;

// Next-state combinational logic
always_comb begin : array_elem_trhead1_comb     // test_cthread_array_access.cpp:335:5
    array_elem_trhead1_func;
end
function void array_elem_trhead1_func;
    sa_next = sa;
    t9_next = t9;
    sa_next[1] = 0;
    t9_next = sa[1];
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_elem_trhead1_ff
    if ( rst ) begin
    end
    else begin
        sa <= sa_next;
        t9 <= t9_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_elem_trhead2 (test_cthread_array_access.cpp:349:5) 

// Thread-local variables
logic signed [31:0] t10_next;
logic sb[3];

// Next-state combinational logic
always_comb begin : array_elem_trhead2_comb     // test_cthread_array_access.cpp:349:5
    array_elem_trhead2_func;
end
function void array_elem_trhead2_func;
    t10_next = t10;
    sb[2] = 0;
    t10_next = sb[2];
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : array_elem_trhead2_ff
    if ( rst ) begin
    end
    else begin
        t10 <= t10_next;
    end
end

endmodule


