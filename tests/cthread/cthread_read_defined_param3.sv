//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// SystemC signals
logic clk;
logic nrst;


//------------------------------------------------------------------------------

A a_mod
(
  .clk(clk),
  .nrst(nrst)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_read_defined_param3.cpp:404:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic nrst
);

// SystemC signals
logic signed [31:0] s;
logic pc;
logic signed [31:0] parr[3];
logic signed [31:0] parr_[3];

// C++ data variables
localparam logic signed [31:0] ARR[3] = '{ 'd1, 'd2, 'd3 };
localparam logic signed [31:0] ARRI[3] = '{ 'd2, 'd3, 'd4 };

//------------------------------------------------------------------------------
// Clocked THREAD: const_ref_call0 (test_cthread_read_defined_param3.cpp:94:5) 

// Next-state combinational logic
always_comb begin : const_ref_call0_comb     // test_cthread_read_defined_param3.cpp:94:5
    const_ref_call0_func;
end
function void const_ref_call0_func;
    logic val;
    logic l;
    val = 0;
    // Call cref0() begin
    l = 0;
    // Call cref0() end
    val = 2 < 3;
    // Call cref0() begin
    l = val;
    // Call cref0() end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : const_ref_call0_ff
    if ( ~nrst ) begin
        integer unsigned j;
        j = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: const_ref_call1 (test_cthread_read_defined_param3.cpp:111:5) 

// Thread-local variables
logic [31:0] l;
logic [31:0] l_next;
logic [1:0] const_ref_call1_PROC_STATE;
logic [1:0] const_ref_call1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : const_ref_call1_comb     // test_cthread_read_defined_param3.cpp:111:5
    const_ref_call1_func;
end
function void const_ref_call1_func;
    integer unsigned j;
    integer unsigned TMP_0;
    integer unsigned val;
    integer unsigned TMP_1;
    integer unsigned TMP_2;
    l_next = l;
    const_ref_call1_PROC_STATE_next = const_ref_call1_PROC_STATE;
    
    case (const_ref_call1_PROC_STATE)
        0: begin
            val = 2;
            // Call cref() begin
            l_next = val;
            const_ref_call1_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:107:9;
            // Call cref() end
        end
        1: begin
            // Call cref() begin
            TMP_0 = l_next;
            // Call cref() end
            j = TMP_0;
            // Call cref() begin
            l_next = ARR[s];
            const_ref_call1_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:107:9;
            // Call cref() end
        end
        2: begin
            // Call cref() begin
            TMP_1 = l_next;
            // Call cref() end
            j = TMP_1;
            const_ref_call1_PROC_STATE_next = 3; return;    // test_cthread_read_defined_param3.cpp:118:13;
        end
        3: begin
            val = 2;
            // Call cref() begin
            l_next = val;
            const_ref_call1_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:107:9;
            // Call cref() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : const_ref_call1_ff
    if ( ~nrst ) begin
        integer unsigned j;
        j = 0;
        const_ref_call1_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:113:9;
    end
    else begin
        l <= l_next;
        const_ref_call1_PROC_STATE <= const_ref_call1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: const_ref_call2 (test_cthread_read_defined_param3.cpp:122:5) 

// Thread-local variables
logic [31:0] l0;
logic [31:0] l_next0;
logic [1:0] const_ref_call2_PROC_STATE;
logic [1:0] const_ref_call2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : const_ref_call2_comb     // test_cthread_read_defined_param3.cpp:122:5
    const_ref_call2_func;
end
function void const_ref_call2_func;
    integer unsigned j;
    integer unsigned arrc[3];
    integer unsigned TMP_0;
    integer unsigned TMP_1;
    l_next0 = l0;
    const_ref_call2_PROC_STATE_next = const_ref_call2_PROC_STATE;
    
    case (const_ref_call2_PROC_STATE)
        0: begin
            for (integer i = 0; i < 3; i++)
            begin
                arrc[i] = i;
            end
            // Call cref() begin
            l_next0 = arrc[2];
            const_ref_call2_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:107:9;
            // Call cref() end
        end
        1: begin
            // Call cref() begin
            TMP_0 = l_next0;
            // Call cref() end
            j = TMP_0;
            const_ref_call2_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:131:13;
        end
        2: begin
            for (integer i = 0; i < 3; i++)
            begin
                arrc[i] = i;
            end
            // Call cref() begin
            l_next0 = arrc[2];
            const_ref_call2_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:107:9;
            // Call cref() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : const_ref_call2_ff
    if ( ~nrst ) begin
        integer unsigned j;
        j = 0;
        const_ref_call2_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:124:9;
    end
    else begin
        l0 <= l_next0;
        const_ref_call2_PROC_STATE <= const_ref_call2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: const_ref_call3 (test_cthread_read_defined_param3.cpp:136:5) 

// Thread-local variables
logic [31:0] l1;
logic [31:0] l_next1;
logic [31:0] arrcm[3];
logic [1:0] const_ref_call3_PROC_STATE;
logic [1:0] const_ref_call3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : const_ref_call3_comb     // test_cthread_read_defined_param3.cpp:136:5
    const_ref_call3_func;
end
function void const_ref_call3_func;
    integer unsigned j;
    integer unsigned TMP_0;
    integer unsigned TMP_1;
    l_next1 = l1;
    const_ref_call3_PROC_STATE_next = const_ref_call3_PROC_STATE;
    
    case (const_ref_call3_PROC_STATE)
        0: begin
            for (integer i = 0; i < 3; i++)
            begin
                arrcm[i] = i;
            end
            // Call cref() begin
            l_next1 = arrcm[2];
            const_ref_call3_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:107:9;
            // Call cref() end
        end
        1: begin
            // Call cref() begin
            TMP_0 = l_next1;
            // Call cref() end
            j = TMP_0;
            const_ref_call3_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:144:13;
        end
        2: begin
            for (integer i = 0; i < 3; i++)
            begin
                arrcm[i] = i;
            end
            // Call cref() begin
            l_next1 = arrcm[2];
            const_ref_call3_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:107:9;
            // Call cref() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : const_ref_call3_ff
    if ( ~nrst ) begin
        integer unsigned j;
        j = 0;
        const_ref_call3_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:138:9;
    end
    else begin
        l1 <= l_next1;
        const_ref_call3_PROC_STATE <= const_ref_call3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: array_in_func (test_cthread_read_defined_param3.cpp:163:5) 

always_comb 
begin : array_in_func     // test_cthread_read_defined_param3.cpp:163:5
    integer arr[3];
    integer arr_[3];
    integer i;
    integer arr__[3];
    integer i_1;
    // Call arr_func1() begin
    arr[0] = 2;
    // Call arr_func1() end
    // Call arr_func2() begin
    i = arr_[1];
    // Call arr_func2() end
    // Call arr_func3() begin
    arr__[2] = 2;
    i_1 = arr__[s];
    // Call arr_func3() end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_thread1 (test_cthread_read_defined_param3.cpp:190:5) 

// Thread-local variables
logic signed [31:0] larr[3];
logic signed [31:0] larr_next[3];
logic signed [31:0] l2;
logic signed [31:0] l_next2;
logic [1:0] array_thread1_PROC_STATE;
logic [1:0] array_thread1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : array_thread1_comb     // test_cthread_read_defined_param3.cpp:190:5
    array_thread1_func;
end
function void array_thread1_func;
    integer j;
    integer TMP_0;
    integer TMP_1;
    l_next2 = l2;
    larr_next = larr;
    array_thread1_PROC_STATE_next = array_thread1_PROC_STATE;
    
    case (array_thread1_PROC_STATE)
        0: begin
            // Call arr_wait1() begin
            larr_next[s] = 2;
            l_next2 = larr_next[s];
            array_thread1_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:186:9;
            // Call arr_wait1() end
        end
        1: begin
            // Call arr_wait1() begin
            TMP_0 = l_next2;
            // Call arr_wait1() end
            j = TMP_0;
            array_thread1_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:197:13;
        end
        2: begin
            // Call arr_wait1() begin
            larr_next[s] = 2;
            l_next2 = larr_next[s];
            array_thread1_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:186:9;
            // Call arr_wait1() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : array_thread1_ff
    if ( ~nrst ) begin
        larr[0] <= 1; larr[1] <= 2; larr[2] <= 3;
        array_thread1_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:193:9;
    end
    else begin
        larr <= larr_next;
        l2 <= l_next2;
        array_thread1_PROC_STATE <= array_thread1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_thread2 (test_cthread_read_defined_param3.cpp:207:5) 

// Thread-local variables
logic signed [31:0] marr[3];
logic signed [31:0] marr_next[3];

// Next-state combinational logic
always_comb begin : array_thread2_comb     // test_cthread_read_defined_param3.cpp:207:5
    array_thread2_func;
end
function void array_thread2_func;
    integer l;
    marr_next = marr;
    // Call arr_call2() begin
    marr_next[1] = 2;
    l = marr_next[2];
    // Call arr_call2() end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : array_thread2_ff
    if ( ~nrst ) begin
    end
    else begin
        marr <= marr_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_thread3 (test_cthread_read_defined_param3.cpp:225:5) 

// Thread-local variables
logic signed [31:0] l3;
logic signed [31:0] l_next3;
logic [1:0] array_thread3_PROC_STATE;
logic [1:0] array_thread3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : array_thread3_comb     // test_cthread_read_defined_param3.cpp:225:5
    array_thread3_func;
end
function void array_thread3_func;
    integer j;
    integer TMP_0;
    integer TMP_1;
    l_next3 = l3;
    array_thread3_PROC_STATE_next = array_thread3_PROC_STATE;
    
    case (array_thread3_PROC_STATE)
        0: begin
            // Call arr_wait3() begin
            l_next3 = ARRI[s] + 3;
            array_thread3_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:221:9;
            // Call arr_wait3() end
        end
        1: begin
            // Call arr_wait3() begin
            TMP_0 = l_next3;
            // Call arr_wait3() end
            j = TMP_0;
            array_thread3_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:231:13;
        end
        2: begin
            // Call arr_wait3() begin
            l_next3 = ARRI[s] + 3;
            array_thread3_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:221:9;
            // Call arr_wait3() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : array_thread3_ff
    if ( ~nrst ) begin
        array_thread3_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:227:9;
    end
    else begin
        l3 <= l_next3;
        array_thread3_PROC_STATE <= array_thread3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_thread4 (test_cthread_read_defined_param3.cpp:235:5) 

// Thread-local variables
logic signed [31:0] llarr[3];
logic signed [31:0] llarr_next[3];
logic signed [31:0] l4;
logic signed [31:0] l_next4;
logic [1:0] array_thread4_PROC_STATE;
logic [1:0] array_thread4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : array_thread4_comb     // test_cthread_read_defined_param3.cpp:235:5
    array_thread4_func;
end
function void array_thread4_func;
    integer j;
    integer TMP_0;
    integer TMP_1;
    l_next4 = l4;
    llarr_next = llarr;
    array_thread4_PROC_STATE_next = array_thread4_PROC_STATE;
    
    case (array_thread4_PROC_STATE)
        0: begin
            // Call arr_wait3() begin
            l_next4 = llarr_next[s] + llarr_next[1];
            array_thread4_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:221:9;
            // Call arr_wait3() end
        end
        1: begin
            // Call arr_wait3() begin
            TMP_0 = l_next4;
            // Call arr_wait3() end
            j = TMP_0;
            array_thread4_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:242:13;
        end
        2: begin
            // Call arr_wait3() begin
            l_next4 = llarr_next[s] + llarr_next[1];
            array_thread4_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:221:9;
            // Call arr_wait3() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : array_thread4_ff
    if ( ~nrst ) begin
        llarr[0] <= 1; llarr[1] <= 2; llarr[2] <= 3;
        array_thread4_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:238:9;
    end
    else begin
        llarr <= llarr_next;
        l4 <= l_next4;
        array_thread4_PROC_STATE <= array_thread4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_thread5 (test_cthread_read_defined_param3.cpp:247:5) 

// Thread-local variables
logic signed [31:0] mmarr[3];
logic signed [31:0] mmarr_next[3];
logic signed [31:0] l5;
logic signed [31:0] l_next5;
logic [1:0] array_thread5_PROC_STATE;
logic [1:0] array_thread5_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : array_thread5_comb     // test_cthread_read_defined_param3.cpp:247:5
    array_thread5_func;
end
function void array_thread5_func;
    integer j;
    integer TMP_0;
    integer TMP_1;
    l_next5 = l5;
    mmarr_next = mmarr;
    array_thread5_PROC_STATE_next = array_thread5_PROC_STATE;
    
    case (array_thread5_PROC_STATE)
        0: begin
            // Call arr_wait3() begin
            l_next5 = mmarr_next[s] + mmarr_next[1];
            array_thread5_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:221:9;
            // Call arr_wait3() end
        end
        1: begin
            // Call arr_wait3() begin
            TMP_0 = l_next5;
            // Call arr_wait3() end
            j = TMP_0;
            array_thread5_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:254:13;
        end
        2: begin
            for (integer i = 0; i < 3; i++)
            begin
                mmarr_next[i] = i;
            end
            // Call arr_wait3() begin
            l_next5 = mmarr_next[s] + mmarr_next[1];
            array_thread5_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:221:9;
            // Call arr_wait3() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : array_thread5_ff
    if ( ~nrst ) begin
        for (integer i = 0; i < 3; i++)
        begin
            mmarr[i] <= 0;
        end
        array_thread5_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:250:9;
    end
    else begin
        mmarr <= mmarr_next;
        l5 <= l_next5;
        array_thread5_PROC_STATE <= array_thread5_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: chan_array_thread1 (test_cthread_read_defined_param3.cpp:271:5) 

// Thread-local variables
logic signed [31:0] parr_next[3];
logic signed [31:0] l6;
logic signed [31:0] l_next6;
logic [1:0] chan_array_thread1_PROC_STATE;
logic [1:0] chan_array_thread1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : chan_array_thread1_comb     // test_cthread_read_defined_param3.cpp:271:5
    chan_array_thread1_func;
end
function void chan_array_thread1_func;
    integer i;
    integer TMP_0;
    integer TMP_1;
    l_next6 = l6;
    parr_next = parr;
    chan_array_thread1_PROC_STATE_next = chan_array_thread1_PROC_STATE;
    
    case (chan_array_thread1_PROC_STATE)
        0: begin
            // Call chan_arr_wait1() begin
            parr_next[1] = 42;
            l_next6 = parr[s] + parr[2];
            chan_array_thread1_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:267:9;
            // Call chan_arr_wait1() end
        end
        1: begin
            // Call chan_arr_wait1() begin
            TMP_0 = l_next6;
            // Call chan_arr_wait1() end
            i = TMP_0;
            chan_array_thread1_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:277:13;
        end
        2: begin
            // Call chan_arr_wait1() begin
            parr_next[1] = 42;
            l_next6 = parr[s] + parr[2];
            chan_array_thread1_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:267:9;
            // Call chan_arr_wait1() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : chan_array_thread1_ff
    if ( ~nrst ) begin
        chan_array_thread1_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:273:9;
    end
    else begin
        parr <= parr_next;
        l6 <= l_next6;
        chan_array_thread1_PROC_STATE <= chan_array_thread1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: chan_array_thread2 (test_cthread_read_defined_param3.cpp:288:5) 

// Thread-local variables
logic signed [31:0] parr__next[3];
logic signed [31:0] l7;
logic signed [31:0] l_next7;
logic [1:0] chan_array_thread2_PROC_STATE;
logic [1:0] chan_array_thread2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : chan_array_thread2_comb     // test_cthread_read_defined_param3.cpp:288:5
    chan_array_thread2_func;
end
function void chan_array_thread2_func;
    integer i;
    integer TMP_0;
    integer TMP_1;
    l_next7 = l7;
    parr__next = parr_;
    chan_array_thread2_PROC_STATE_next = chan_array_thread2_PROC_STATE;
    
    case (chan_array_thread2_PROC_STATE)
        0: begin
            // Call chan_arr_wait2() begin
            parr__next[1] = 42;
            l_next7 = parr_[s] + parr_[1];
            chan_array_thread2_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:284:9;
            // Call chan_arr_wait2() end
        end
        1: begin
            // Call chan_arr_wait2() begin
            TMP_0 = l_next7;
            // Call chan_arr_wait2() end
            i = TMP_0;
            chan_array_thread2_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:294:13;
        end
        2: begin
            // Call chan_arr_wait2() begin
            parr__next[1] = 42;
            l_next7 = parr_[s] + parr_[1];
            chan_array_thread2_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:284:9;
            // Call chan_arr_wait2() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : chan_array_thread2_ff
    if ( ~nrst ) begin
        chan_array_thread2_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:290:9;
    end
    else begin
        parr_ <= parr__next;
        l7 <= l_next7;
        chan_array_thread2_PROC_STATE <= chan_array_thread2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: array_2d_in_func (test_cthread_read_defined_param3.cpp:310:5) 

always_comb 
begin : array_2d_in_func     // test_cthread_read_defined_param3.cpp:310:5
    integer arr[3][2];
    integer arr_[3][2];
    integer i;
    // Call arr_2D_func1() begin
    arr[0][1] = 2;
    arr[s][s + 1] = 3;
    // Call arr_2D_func1() end
    // Call arr_2D_func2() begin
    i = arr_[1][0] + arr_[s][s + 1];
    // Call arr_2D_func2() end
end

//------------------------------------------------------------------------------
// Method process: ptr_func1 (test_cthread_read_defined_param3.cpp:329:5) 

// Process-local variables
logic [2:0] pj;
logic [2:0] pi;

always_comb 
begin : ptr_func1     // test_cthread_read_defined_param3.cpp:329:5
    logic [3:0] TMP_0;
    integer l;
    logic [3:0] TMP_1;
    // Call fptr1() begin
    l = pi;
    TMP_0 = l;
    // Call fptr1() end
    pj = 1;
    // Call fptr1() begin
    l = pj;
    TMP_1 = l;
    // Call fptr1() end
end

//------------------------------------------------------------------------------
// Clocked THREAD: ptr_thread1 (test_cthread_read_defined_param3.cpp:351:5) 

// Thread-local variables
logic signed [31:0] l8;
logic signed [31:0] l_next8;
logic [2:0] pk;
logic [1:0] ptr_thread1_PROC_STATE;
logic [1:0] ptr_thread1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : ptr_thread1_comb     // test_cthread_read_defined_param3.cpp:351:5
    ptr_thread1_func;
end
function void ptr_thread1_func;
    logic [3:0] TMP_0;
    logic [3:0] TMP_1;
    l_next8 = l8;
    ptr_thread1_PROC_STATE_next = ptr_thread1_PROC_STATE;
    
    case (ptr_thread1_PROC_STATE)
        0: begin
            pk = 1;
            // Call fptr2() begin
            l_next8 = pk;
            ptr_thread1_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:346:9;
            // Call fptr2() end
        end
        1: begin
            // Call fptr2() begin
            TMP_0 = l_next8;
            // Call fptr2() end
            ptr_thread1_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:358:13;
        end
        2: begin
            pk = 1;
            // Call fptr2() begin
            l_next8 = pk;
            ptr_thread1_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:346:9;
            // Call fptr2() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : ptr_thread1_ff
    if ( ~nrst ) begin
        integer i;
        i = 0;
        ptr_thread1_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:353:9;
    end
    else begin
        l8 <= l_next8;
        ptr_thread1_PROC_STATE <= ptr_thread1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: ptr_thread2 (test_cthread_read_defined_param3.cpp:363:5) 

// Thread-local variables
logic [2:0] pl;
logic [2:0] pl_next;
logic signed [31:0] l9;
logic signed [31:0] l_next9;
logic [1:0] ptr_thread2_PROC_STATE;
logic [1:0] ptr_thread2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : ptr_thread2_comb     // test_cthread_read_defined_param3.cpp:363:5
    ptr_thread2_func;
end
function void ptr_thread2_func;
    logic [3:0] TMP_0;
    logic [3:0] TMP_1;
    l_next9 = l9;
    pl_next = pl;
    ptr_thread2_PROC_STATE_next = ptr_thread2_PROC_STATE;
    
    case (ptr_thread2_PROC_STATE)
        0: begin
            // Call fptr2() begin
            l_next9 = pl_next;
            ptr_thread2_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:346:9;
            // Call fptr2() end
        end
        1: begin
            // Call fptr2() begin
            TMP_0 = l_next9;
            // Call fptr2() end
            ptr_thread2_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:370:13;
        end
        2: begin
            // Call fptr2() begin
            l_next9 = pl_next;
            ptr_thread2_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:346:9;
            // Call fptr2() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : ptr_thread2_ff
    if ( ~nrst ) begin
        integer i;
        i = 0;
        pl <= 1;
        ptr_thread2_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:366:9;
    end
    else begin
        pl <= pl_next;
        l9 <= l_next9;
        ptr_thread2_PROC_STATE <= ptr_thread2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: ptr_ch_thread1 (test_cthread_read_defined_param3.cpp:382:5) 

// Thread-local variables
logic pc_next;
logic ll;
logic ll_next;
logic [1:0] ptr_ch_thread1_PROC_STATE;
logic [1:0] ptr_ch_thread1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : ptr_ch_thread1_comb     // test_cthread_read_defined_param3.cpp:382:5
    ptr_ch_thread1_func;
end
function void ptr_ch_thread1_func;
    logic TMP_0;
    logic d;
    logic TMP_2;
    ll_next = ll;
    pc_next = pc;
    ptr_ch_thread1_PROC_STATE_next = ptr_ch_thread1_PROC_STATE;
    
    case (ptr_ch_thread1_PROC_STATE)
        0: begin
            // Call fch_ptr() begin
            ll_next = pc;
            ptr_ch_thread1_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:377:9;
            // Call fch_ptr() end
        end
        1: begin
            // Call fch_ptr() begin
            pc_next = !ll_next;
            TMP_0 = ll_next;
            // Call fch_ptr() end
            d = TMP_0;
            ptr_ch_thread1_PROC_STATE_next = 2; return;    // test_cthread_read_defined_param3.cpp:389:13;
        end
        2: begin
            // Call fch_ptr() begin
            ll_next = pc;
            ptr_ch_thread1_PROC_STATE_next = 1; return;    // test_cthread_read_defined_param3.cpp:377:9;
            // Call fch_ptr() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : ptr_ch_thread1_ff
    if ( ~nrst ) begin
        pc <= 0;
        ptr_ch_thread1_PROC_STATE <= 0;    // test_cthread_read_defined_param3.cpp:385:9;
    end
    else begin
        pc <= pc_next;
        ll <= ll_next;
        ptr_ch_thread1_PROC_STATE <= ptr_ch_thread1_PROC_STATE_next;
    end
end

endmodule

