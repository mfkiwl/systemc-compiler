//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.17
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
logic signed [31:0] out;
logic signed [31:0] in;

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty1 (test_cthread_switch_empty_case.cpp:112:5) 

// Thread-local variables
logic signed [31:0] j;
logic signed [31:0] j_next;
logic test_switch_empty1_PROC_STATE;
logic test_switch_empty1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty1_comb     // test_cthread_switch_empty_case.cpp:112:5
    test_switch_empty1_func;
end
function void test_switch_empty1_func;
    integer i;
    j_next = j;
    test_switch_empty1_PROC_STATE_next = test_switch_empty1_PROC_STATE;
    
    case (test_switch_empty1_PROC_STATE)
        0: begin
            i = j_next;
            case (i)
            0 : begin  // Empty case without break
                j_next = 2;
            end
            1 : begin
                j_next = 2;
            end
            default : begin
                j_next = 3;
            end
            endcase
            test_switch_empty1_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:126:13;
        end
        1: begin
            i = 1;
            i = j_next;
            case (i)
            0 : begin  // Empty case without break
                j_next = 2;
            end
            1 : begin
                j_next = 2;
            end
            default : begin
                j_next = 3;
            end
            endcase
            test_switch_empty1_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:126:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty1_ff
    if ( ~arstn ) begin
        j <= 0;
        test_switch_empty1_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:115:9;
    end
    else begin
        j <= j_next;
        test_switch_empty1_PROC_STATE <= test_switch_empty1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty2 (test_cthread_switch_empty_case.cpp:132:5) 

// Thread-local variables
logic [1:0] test_switch_empty2_PROC_STATE;
logic [1:0] test_switch_empty2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty2_comb     // test_cthread_switch_empty_case.cpp:132:5
    test_switch_empty2_func;
end
function void test_switch_empty2_func;
    integer j_1;
    integer i;
    test_switch_empty2_PROC_STATE_next = test_switch_empty2_PROC_STATE;
    
    case (test_switch_empty2_PROC_STATE)
        0: begin
            i = 0;
            case (0)
            0 : begin  // Empty case without break
                j_1 = 2;
                test_switch_empty2_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:143:32;
            end
            1 : begin
                j_1 = 2;
                test_switch_empty2_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:143:32;
            end
            endcase
        end
        1: begin
            test_switch_empty2_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:146:13;
        end
        2: begin
            i = 1;
            i = 0;
            case (0)
            0 : begin  // Empty case without break
                j_1 = 2;
                test_switch_empty2_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:143:32;
            end
            1 : begin
                j_1 = 2;
                test_switch_empty2_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:143:32;
            end
            endcase
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty2_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty2_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:135:9;
    end
    else begin
        test_switch_empty2_PROC_STATE <= test_switch_empty2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty2a (test_cthread_switch_empty_case.cpp:151:5) 

// Thread-local variables
logic [1:0] test_switch_empty2a_PROC_STATE;
logic [1:0] test_switch_empty2a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty2a_comb     // test_cthread_switch_empty_case.cpp:151:5
    test_switch_empty2a_func;
end
function void test_switch_empty2a_func;
    integer j_1;
    test_switch_empty2a_PROC_STATE_next = test_switch_empty2a_PROC_STATE;
    
    case (test_switch_empty2a_PROC_STATE)
        0: begin
            case (in)
            0 : begin  // Empty case without break
                j_1 = 2;
                test_switch_empty2a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:161:32;
            end
            1 : begin
                j_1 = 2;
                test_switch_empty2a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:161:32;
            end
            default : begin
                j_1 = 3;
            end
            endcase
            test_switch_empty2a_PROC_STATE_next = 0; return;    // test_cthread_switch_empty_case.cpp:164:13;
        end
        1: begin
            test_switch_empty2a_PROC_STATE_next = 0; return;    // test_cthread_switch_empty_case.cpp:164:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty2a_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty2a_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:154:9;
    end
    else begin
        test_switch_empty2a_PROC_STATE <= test_switch_empty2a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty3 (test_cthread_switch_empty_case.cpp:169:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic [1:0] test_switch_empty3_PROC_STATE;
logic [1:0] test_switch_empty3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty3_comb     // test_cthread_switch_empty_case.cpp:169:5
    test_switch_empty3_func;
end
function void test_switch_empty3_func;
    integer j_1;
    integer k;
    i_next = i0;
    test_switch_empty3_PROC_STATE_next = test_switch_empty3_PROC_STATE;
    
    case (test_switch_empty3_PROC_STATE)
        0: begin
            i_next = 0;
            test_switch_empty3_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:177:13;
        end
        1: begin
            case (0)
            0 : begin  // Empty case without break
                j_1 = 2;
                // Call f() begin
                k = 0;
                test_switch_empty3_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:85:9;
                // Call f() end
            end
            1 : begin
                j_1 = 2;
                // Call f() begin
                k = 0;
                test_switch_empty3_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:85:9;
                // Call f() end
            end
            endcase
        end
        2: begin
            // Call f() begin
            k = 1;
            // Call f() end
            i_next = 1;
            i_next = 0;
            test_switch_empty3_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:177:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty3_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty3_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:172:9;
    end
    else begin
        i0 <= i_next;
        test_switch_empty3_PROC_STATE <= test_switch_empty3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty3a (test_cthread_switch_empty_case.cpp:189:5) 

// Thread-local variables
logic signed [31:0] j0;
logic signed [31:0] j_next0;
logic [1:0] test_switch_empty3a_PROC_STATE;
logic [1:0] test_switch_empty3a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty3a_comb     // test_cthread_switch_empty_case.cpp:189:5
    test_switch_empty3a_func;
end
function void test_switch_empty3a_func;
    integer k;
    j_next0 = j0;
    test_switch_empty3a_PROC_STATE_next = test_switch_empty3a_PROC_STATE;
    
    case (test_switch_empty3a_PROC_STATE)
        0: begin
            test_switch_empty3a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:196:13;
        end
        1: begin
            case (in)
            0 : begin  // Empty case without break
                j_next0 = 2;
                // Call f() begin
                k = 0;
                test_switch_empty3a_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:85:9;
                // Call f() end
            end
            1 : begin
                j_next0 = 2;
                // Call f() begin
                k = 0;
                test_switch_empty3a_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:85:9;
                // Call f() end
            end
            default : begin
                j_next0 = 3;
                test_switch_empty3a_PROC_STATE_next = 3; return;    // test_cthread_switch_empty_case.cpp:202:33;
            end
            endcase
        end
        2: begin
            // Call f() begin
            k = 1;
            // Call f() end
            j_next0++;
            test_switch_empty3a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:196:13;
        end
        3: begin
            j_next0++;
            test_switch_empty3a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:196:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty3a_ff
    if ( ~arstn ) begin
        j0 <= 0;
        test_switch_empty3a_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:192:9;
    end
    else begin
        j0 <= j_next0;
        test_switch_empty3a_PROC_STATE <= test_switch_empty3a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty4 (test_cthread_switch_empty_case.cpp:209:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next0;
logic [1:0] test_switch_empty4_PROC_STATE;
logic [1:0] test_switch_empty4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty4_comb     // test_cthread_switch_empty_case.cpp:209:5
    test_switch_empty4_func;
end
function void test_switch_empty4_func;
    integer j_1;
    i_next0 = i1;
    test_switch_empty4_PROC_STATE_next = test_switch_empty4_PROC_STATE;
    
    case (test_switch_empty4_PROC_STATE)
        0: begin
            i_next0 = 0;
            test_switch_empty4_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:217:13;
        end
        1: begin
            case (0)
            0 : begin  // Empty case without break
                j_1 = 2;
                if (|in)
                begin
                    test_switch_empty4_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:223:40;
                end
            end
            1 : begin
                j_1 = 2;
                if (|in)
                begin
                    test_switch_empty4_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:223:40;
                end
            end
            endcase
            i_next0 = 1;
            i_next0 = 0;
            test_switch_empty4_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:217:13;
        end
        2: begin
            i_next0 = 1;
            i_next0 = 0;
            test_switch_empty4_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:217:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty4_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty4_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:212:9;
    end
    else begin
        i1 <= i_next0;
        test_switch_empty4_PROC_STATE <= test_switch_empty4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty4a (test_cthread_switch_empty_case.cpp:231:5) 

// Thread-local variables
logic signed [31:0] i2;
logic signed [31:0] i_next1;
logic [1:0] test_switch_empty4a_PROC_STATE;
logic [1:0] test_switch_empty4a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty4a_comb     // test_cthread_switch_empty_case.cpp:231:5
    test_switch_empty4a_func;
end
function void test_switch_empty4a_func;
    integer j_1;
    i_next1 = i2;
    test_switch_empty4a_PROC_STATE_next = test_switch_empty4a_PROC_STATE;
    
    case (test_switch_empty4a_PROC_STATE)
        0: begin
            i_next1 = 1;
            test_switch_empty4a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:239:13;
        end
        1: begin
            case (1)
            1 : begin
                j_1 = 2;
                if (|in)
                begin
                    test_switch_empty4a_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:245:40;
                end
            end
            endcase
            i_next1 = 1;
            i_next1 = 1;
            test_switch_empty4a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:239:13;
        end
        2: begin
            i_next1 = 1;
            i_next1 = 1;
            test_switch_empty4a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:239:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty4a_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty4a_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:234:9;
    end
    else begin
        i2 <= i_next1;
        test_switch_empty4a_PROC_STATE <= test_switch_empty4a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty4b (test_cthread_switch_empty_case.cpp:253:5) 

// Thread-local variables
logic signed [31:0] i3;
logic signed [31:0] i_next2;
logic test_switch_empty4b_PROC_STATE;
logic test_switch_empty4b_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty4b_comb     // test_cthread_switch_empty_case.cpp:253:5
    test_switch_empty4b_func;
end
function void test_switch_empty4b_func;
    integer j_1;
    i_next2 = i3;
    test_switch_empty4b_PROC_STATE_next = test_switch_empty4b_PROC_STATE;
    
    case (test_switch_empty4b_PROC_STATE)
        0: begin
            i_next2 = 2;
            test_switch_empty4b_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:261:13;
        end
        1: begin
            case (2)
            default : begin
                j_1 = 3;
            end
            endcase
            i_next2 = 1;
            i_next2 = 2;
            test_switch_empty4b_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:261:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty4b_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty4b_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:256:9;
    end
    else begin
        i3 <= i_next2;
        test_switch_empty4b_PROC_STATE <= test_switch_empty4b_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty4c (test_cthread_switch_empty_case.cpp:275:5) 

// Thread-local variables
logic [1:0] test_switch_empty4c_PROC_STATE;
logic [1:0] test_switch_empty4c_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty4c_comb     // test_cthread_switch_empty_case.cpp:275:5
    test_switch_empty4c_func;
end
function void test_switch_empty4c_func;
    integer j_1;
    integer i;
    test_switch_empty4c_PROC_STATE_next = test_switch_empty4c_PROC_STATE;
    
    case (test_switch_empty4c_PROC_STATE)
        0: begin
            i = 0;
            test_switch_empty4c_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:283:13;
        end
        1: begin
            case (in)
            0 : begin  // Empty case without break
                j_1 = 2;
                if (|in)
                begin
                    test_switch_empty4c_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:289:40;
                end
            end
            1 : begin
                j_1 = 2;
                if (|in)
                begin
                    test_switch_empty4c_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:289:40;
                end
            end
            default : begin
                j_1 = 3;
            end
            endcase
            i = 1;
            i = 0;
            test_switch_empty4c_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:283:13;
        end
        2: begin
            i = 1;
            i = 0;
            test_switch_empty4c_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:283:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty4c_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty4c_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:278:9;
    end
    else begin
        test_switch_empty4c_PROC_STATE <= test_switch_empty4c_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty4d (test_cthread_switch_empty_case.cpp:298:5) 

// Thread-local variables
logic signed [31:0] j1;
logic signed [31:0] j_next1;
logic signed [31:0] k0;
logic signed [31:0] k_next;
logic [1:0] test_switch_empty4d_PROC_STATE;
logic [1:0] test_switch_empty4d_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty4d_comb     // test_cthread_switch_empty_case.cpp:298:5
    test_switch_empty4d_func;
end
function void test_switch_empty4d_func;
    integer i;
    j_next1 = j1;
    k_next = k0;
    test_switch_empty4d_PROC_STATE_next = test_switch_empty4d_PROC_STATE;
    
    case (test_switch_empty4d_PROC_STATE)
        0: begin
            i = 0;
            test_switch_empty4d_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:306:13;
        end
        1: begin
            case (in)
            0 : begin  // Empty case without break
                j_next1 = 2;
                k_next = 0;
                test_switch_empty4d_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:313:29;
            end
            1 : begin
                j_next1 = 2;
                k_next = 0;
                test_switch_empty4d_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:313:29;
            end
            default : begin
                j_next1 = 3;
            end
            endcase
            i = 1;
            i = 0;
            test_switch_empty4d_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:306:13;
        end
        2: begin
            j_next1++;
            k_next++;
            if (k_next < 2)
            begin
                test_switch_empty4d_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:313:29;
            end
            i = 1;
            i = 0;
            test_switch_empty4d_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:306:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty4d_ff
    if ( ~arstn ) begin
        j1 <= 0;
        test_switch_empty4d_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:301:9;
    end
    else begin
        j1 <= j_next1;
        k0 <= k_next;
        test_switch_empty4d_PROC_STATE <= test_switch_empty4d_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty4e (test_cthread_switch_empty_case.cpp:324:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty4f (test_cthread_switch_empty_case.cpp:342:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty4g (test_cthread_switch_empty_case.cpp:361:5) 
// Empty process, no code generated 

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty4i (test_cthread_switch_empty_case.cpp:377:5) 

// Thread-local variables
logic [1:0] test_switch_empty4i_PROC_STATE;
logic [1:0] test_switch_empty4i_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty4i_comb     // test_cthread_switch_empty_case.cpp:377:5
    test_switch_empty4i_func;
end
function void test_switch_empty4i_func;
    integer j_1;
    integer i;
    test_switch_empty4i_PROC_STATE_next = test_switch_empty4i_PROC_STATE;
    
    case (test_switch_empty4i_PROC_STATE)
        0: begin
            i = 0;
            test_switch_empty4i_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:385:13;
        end
        1: begin
            case (in)
            0 : begin
                j_1 = 1;
            end
            1 : begin  // Empty case without break
                j_1 = 2;
                if (|in)
                begin
                    test_switch_empty4i_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:392:41;
                end
            end
            default : begin
                j_1 = 2;
                if (|in)
                begin
                    test_switch_empty4i_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:392:41;
                end
            end
            endcase
            i = 1;
            i = 0;
            test_switch_empty4i_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:385:13;
        end
        2: begin
            i = 1;
            i = 0;
            test_switch_empty4i_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:385:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty4i_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty4i_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:380:9;
    end
    else begin
        test_switch_empty4i_PROC_STATE <= test_switch_empty4i_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty5 (test_cthread_switch_empty_case.cpp:400:5) 

// Thread-local variables
logic [1:0] test_switch_empty5_PROC_STATE;
logic [1:0] test_switch_empty5_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty5_comb     // test_cthread_switch_empty_case.cpp:400:5
    test_switch_empty5_func;
end
function void test_switch_empty5_func;
    integer j_1;
    integer i;
    integer k;
    test_switch_empty5_PROC_STATE_next = test_switch_empty5_PROC_STATE;
    
    case (test_switch_empty5_PROC_STATE)
        0: begin
            j_1 = 1;
            test_switch_empty5_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:408:13;
        end
        1: begin
            j_1 = 2;
            if (|in)
            begin
                i = j_1 - 1;
                // Call f1() begin
                case (1)
                1 : begin
                    k = 2;
                    test_switch_empty5_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:95:21;
                end
                endcase
                k = 3;
                // Call f1() end
            end
            j_1 = 1;
            test_switch_empty5_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:408:13;
        end
        2: begin
            // Call f1() begin
            k = 3;
            // Call f1() end
            j_1 = 1;
            test_switch_empty5_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:408:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty5_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty5_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:403:9;
    end
    else begin
        test_switch_empty5_PROC_STATE <= test_switch_empty5_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty5a (test_cthread_switch_empty_case.cpp:417:5) 

// Thread-local variables
logic [1:0] test_switch_empty5a_PROC_STATE;
logic [1:0] test_switch_empty5a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty5a_comb     // test_cthread_switch_empty_case.cpp:417:5
    test_switch_empty5a_func;
end
function void test_switch_empty5a_func;
    integer j_1;
    integer i;
    integer k;
    test_switch_empty5a_PROC_STATE_next = test_switch_empty5a_PROC_STATE;
    
    case (test_switch_empty5a_PROC_STATE)
        0: begin
            j_1 = 1;
            test_switch_empty5a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:425:13;
        end
        1: begin
            if (|in)
            begin
                i = in;
                // Call f1() begin
                case (i)
                0 : begin  // Empty case without break
                    k = 2;
                    test_switch_empty5a_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:95:21;
                end
                1 : begin
                    k = 2;
                    test_switch_empty5a_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:95:21;
                end
                endcase
                k = 3;
                // Call f1() end
            end
            j_1 = 1;
            test_switch_empty5a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:425:13;
        end
        2: begin
            // Call f1() begin
            k = 3;
            // Call f1() end
            j_1 = 1;
            test_switch_empty5a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:425:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty5a_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty5a_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:420:9;
    end
    else begin
        test_switch_empty5a_PROC_STATE <= test_switch_empty5a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty6 (test_cthread_switch_empty_case.cpp:434:5) 

// Thread-local variables
logic signed [31:0] j2;
logic signed [31:0] j_next2;
logic signed [31:0] i4;
logic signed [31:0] i_next3;
logic [1:0] test_switch_empty6_PROC_STATE;
logic [1:0] test_switch_empty6_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty6_comb     // test_cthread_switch_empty_case.cpp:434:5
    test_switch_empty6_func;
end
function void test_switch_empty6_func;
    integer TMP_0;
    i_next3 = i4;
    j_next2 = j2;
    test_switch_empty6_PROC_STATE_next = test_switch_empty6_PROC_STATE;
    
    case (test_switch_empty6_PROC_STATE)
        0: begin
            i_next3 = j_next2;
            // Call f2() begin
            case (i_next3)
            0 : begin  // Empty case without break
                test_switch_empty6_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:105:21;
            end
            1 : begin
                test_switch_empty6_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:105:21;
            end
            default : begin
                TMP_0 = i_next3;
            end
            endcase
            // Call f2() end
            j_next2 = TMP_0;
            test_switch_empty6_PROC_STATE_next = 0; return;    // test_cthread_switch_empty_case.cpp:442:13;
        end
        1: begin
            // Call f2() begin
            TMP_0 = i_next3 + 2;
            // Call f2() end
            j_next2 = TMP_0;
            test_switch_empty6_PROC_STATE_next = 0; return;    // test_cthread_switch_empty_case.cpp:442:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty6_ff
    if ( ~arstn ) begin
        j2 <= 0;
        test_switch_empty6_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:437:9;
    end
    else begin
        j2 <= j_next2;
        i4 <= i_next3;
        test_switch_empty6_PROC_STATE <= test_switch_empty6_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_switch_empty6a (test_cthread_switch_empty_case.cpp:446:5) 

// Thread-local variables
logic signed [31:0] i5;
logic signed [31:0] i_next4;
logic [1:0] test_switch_empty6a_PROC_STATE;
logic [1:0] test_switch_empty6a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_switch_empty6a_comb     // test_cthread_switch_empty_case.cpp:446:5
    test_switch_empty6a_func;
end
function void test_switch_empty6a_func;
    integer j_1;
    integer TMP_0;
    i_next4 = i5;
    test_switch_empty6a_PROC_STATE_next = test_switch_empty6a_PROC_STATE;
    
    case (test_switch_empty6a_PROC_STATE)
        0: begin
            i_next4 = in;
            // Call f2() begin
            case (i_next4)
            0 : begin  // Empty case without break
                test_switch_empty6a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:105:21;
            end
            1 : begin
                test_switch_empty6a_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:105:21;
            end
            default : begin
                TMP_0 = i_next4;
            end
            endcase
            // Call f2() end
            j_1 = TMP_0;
            test_switch_empty6a_PROC_STATE_next = 0; return;    // test_cthread_switch_empty_case.cpp:454:13;
        end
        1: begin
            // Call f2() begin
            TMP_0 = i_next4 + 2;
            // Call f2() end
            j_1 = TMP_0;
            test_switch_empty6a_PROC_STATE_next = 0; return;    // test_cthread_switch_empty_case.cpp:454:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_switch_empty6a_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = 0;
        test_switch_empty6a_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:449:9;
    end
    else begin
        i5 <= i_next4;
        test_switch_empty6a_PROC_STATE <= test_switch_empty6a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_thread (test_cthread_switch_empty_case.cpp:458:5) 

// Thread-local variables
logic signed [31:0] out_next;
logic [2:0] test_thread_PROC_STATE;
logic [2:0] test_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_thread_comb     // test_cthread_switch_empty_case.cpp:458:5
    test_thread_func;
end
function void test_thread_func;
    out_next = out;
    test_thread_PROC_STATE_next = test_thread_PROC_STATE;
    
    case (test_thread_PROC_STATE)
        0: begin
            case (in)
            0 : begin  // Empty case without break
                out_next = 10;
            end
            1 : begin
                out_next = 10;
            end
            2 : begin
                out_next = 10;
                out_next = 11;
            end
            3 : begin  // Empty case without break
                out_next = 13;
            end
            default : begin
                out_next = 13;
            end
            endcase
            case (in)
            0 : begin  // Empty case without break
                test_thread_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:484:17;
            end
            1 : begin
                test_thread_PROC_STATE_next = 1; return;    // test_cthread_switch_empty_case.cpp:484:17;
            end
            default : begin
                test_thread_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:490:17;
            end
            endcase
        end
        1: begin
            out_next = 2;
            test_thread_PROC_STATE_next = 2; return;    // test_cthread_switch_empty_case.cpp:486:17;
        end
        2: begin
            test_thread_PROC_STATE_next = 0; return;    // test_cthread_switch_empty_case.cpp:494:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_thread_ff
    if ( ~arstn ) begin
        out <= 0;
        test_thread_PROC_STATE <= 0;    // test_cthread_switch_empty_case.cpp:461:9;
    end
    else begin
        out <= out_next;
        test_thread_PROC_STATE <= test_thread_PROC_STATE_next;
    end
end

endmodule


