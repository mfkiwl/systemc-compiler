//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.6.14
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B ()
//
module B // "b_mod"
(
);

// Variables generated for SystemC signals
logic s1[2];
logic s2[3][2];
logic r;
logic w[1];
logic q[2];


//------------------------------------------------------------------------------
// Child module instances

A a
(
  .r(r),
  .t0(s1[1]),
  .w(w),
  .p0(s2[0][0]),
  .p1(s2[0][1]),
  .q(q)
);

C c
(
  .rs(r),
  .ws(w),
  .qs(q)
);

endmodule



//==============================================================================
//
// Module: A (test_module_port_array.cpp:57:5)
//
module A // "b_mod.a"
(
    input logic r,
    input logic t0,
    input logic w[1],
    input logic p0,
    input logic p1,
    input logic q[2]
);

// Variables generated for SystemC signals
logic t[1];

// Assignments generated for C++ channel arrays
assign t[0] = t0;

//------------------------------------------------------------------------------
// Method process: meth (test_module_port_array.cpp:24:5) 

always_comb 
begin : meth     // test_module_port_array.cpp:24:5
    logic b;
    b = (t[0] ^ r ^ q[1] | w[0]);
end

endmodule



//==============================================================================
//
// Module: C (test_module_port_array.cpp:58:5)
//
module C // "b_mod.c"
(
    output logic rs,
    output logic ws[1],
    output logic qs[2]
);

// Variables generated for SystemC signals
logic s;

//------------------------------------------------------------------------------
// Method process: meth (test_module_port_array.cpp:42:5) 

always_comb 
begin : meth     // test_module_port_array.cpp:42:5
    rs = 1;
    ws[0] = 0;
    for (integer i = 0; i < 2; i++)
    begin
        qs[i] = s;
    end
end

endmodule


