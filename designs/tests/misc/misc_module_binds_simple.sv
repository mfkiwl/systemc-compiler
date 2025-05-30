//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.14
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Parent ()
//
module Parent // "tb_inst.top_mod"
(
);

// Variables generated for SystemC signals
logic signed [15:0] data;
logic resp;
logic req;


//------------------------------------------------------------------------------
// Child module instances

Producer prod
(
  .resp(resp),
  .data(data),
  .req_sig(req)
);

Consumer cons
(
  .resp_sig(resp),
  .req(req),
  .data(data)
);

endmodule



//==============================================================================
//
// Module: Producer (test_module_binds_simple.cpp:29:5)
//
module Producer // "tb_inst.top_mod.prod"
(
    output logic resp,
    output logic signed [15:0] data,
    output logic req_sig
);

endmodule



//==============================================================================
//
// Module: Consumer (test_module_binds_simple.cpp:30:5)
//
module Consumer // "tb_inst.top_mod.cons"
(
    input logic resp_sig,
    input logic req,
    input logic signed [15:0] data
);

endmodule


