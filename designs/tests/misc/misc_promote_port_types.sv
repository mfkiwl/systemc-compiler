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
module top // "top0"
(
    input logic clk,
    input logic rstn,
    input logic inner0_clk,
    input logic [7:0] inner0_din,
    output logic [8:0] inner0_dout[3]
);


//------------------------------------------------------------------------------
// Child module instances

inner inner0
(
  .clk(inner0_clk),
  .rstn(rstn),
  .din(inner0_din),
  .dout(inner0_dout)
);

endmodule



//==============================================================================
//
// Module: inner (test_promote_port_types.cpp:104:5)
//
module inner // "top0.inner0"
(
    input logic clk,
    input logic rstn,
    input logic [7:0] din,
    output logic [8:0] dout[3]
);

// Variables generated for SystemC signals
logic req;
logic signed [31:0] data1;
logic [63:0] data2;
logic [15:0] data3;
logic req_;
logic signed [15:0] data1_;
logic [7:0] data2_;
logic [8:0] data3_;
logic signed [65:0] data4_;
logic signed [31:0] t0;

//------------------------------------------------------------------------------
// Clocked THREAD: proc (test_promote_port_types.cpp:45:5) 

// Thread-local variables
logic [8:0] dout_next[3];

// Next-state combinational logic
always_comb begin : proc_comb     // test_promote_port_types.cpp:45:5
    proc_func;
end
function void proc_func;
    dout_next = dout;
    for (integer i = 0; i < 3; i++)
    begin
        dout_next[i] = din + i;
    end
endfunction

// Synchronous register update
always_ff @(negedge clk or negedge rstn) 
begin : proc_ff
    if ( ~rstn ) begin
    end
    else begin
        dout <= dout_next;
    end
end

//------------------------------------------------------------------------------
// Method process: meth1 (test_promote_port_types.cpp:56:5) 

always_comb 
begin : meth1     // test_promote_port_types.cpp:56:5
    logic a;
    integer b;
    integer unsigned c;
    logic [15:0] d;
    a = req;
    b = data1;
    a = |data1;
    c = data1;
    d = data2;
    data1 = a;
    data2 = d;
    req = |data1;
    data3 = req;
    t0 = c + d + b + a;
end

//------------------------------------------------------------------------------
// Method process: meth2 (test_promote_port_types.cpp:72:5) 

always_comb 
begin : meth2     // test_promote_port_types.cpp:72:5
    logic lreq_;
    logic a;
    integer i;
    lreq_ = 0;
    req_ = a;
    data1_ = a;
    data2_ = a;
    data4_ = a;
    data1_ = i;
    data2_ = i;
    data4_ = i;
    data4_ = 66'(data3_);
end

endmodule


