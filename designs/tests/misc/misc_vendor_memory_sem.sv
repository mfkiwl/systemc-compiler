//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.14
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: module_with_memory ()
//
module module_with_memory // "tb.mod_mem"
(
    input logic clk,
    input logic nrst
);

// Variables generated for SystemC signals
logic mem_req;
logic mem_resp;
logic mem_req_next;
logic mem_clk;
logic mem_nrst;

// Assignments generated for C++ channel arrays
assign mem_clk = clk;
assign mem_nrst = nrst;

//------------------------------------------------------------------------------
// Clocked THREAD: proc (test_vendor_memory_sem.cpp:98:5) 

// Thread-local variables
logic mem_req_next_next;
logic [1:0] proc_PROC_STATE;
logic [1:0] proc_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : proc_comb     // test_vendor_memory_sem.cpp:98:5
    proc_func;
end
function void proc_func;
    logic TMP_0;
    mem_req = '0;
    mem_req_next_next = mem_req_next;
    proc_PROC_STATE_next = proc_PROC_STATE;
    
    case (proc_PROC_STATE)
        0: begin
            // Call read_req() begin
            mem_req = mem_nrst ? 1 : 0;
            // Call read_req() end
            proc_PROC_STATE_next = 1; return;    // test_vendor_memory_sem.cpp:104:13;
        end
        1: begin
            // Call read_resp() begin
            TMP_0 = mem_resp;
            // Call read_resp() end
            // Call clear_req() begin
            mem_req = 0;
            mem_req_next_next = 1;
            // Call clear_req() end
            proc_PROC_STATE_next = 0; return;    // test_vendor_memory_sem.cpp:108:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : proc_ff
    if ( ~nrst ) begin
        // Call clear_req() begin
        mem_req_next <= 1;
        // Call clear_req() end
        proc_PROC_STATE <= 0;    // test_vendor_memory_sem.cpp:100:9;
    end
    else begin
        mem_req_next <= mem_req_next_next;
        proc_PROC_STATE <= proc_PROC_STATE_next;
    end
end


//------------------------------------------------------------------------------
// Child module instances

specific_name mem_stub
(
  .clk(mem_clk),
  .req(mem_req),
  .resp(mem_resp)
);

endmodule


