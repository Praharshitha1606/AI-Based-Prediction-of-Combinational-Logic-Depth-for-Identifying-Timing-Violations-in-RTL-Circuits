/* Generated by Yosys 0.38+113 (git sha1 91fbd5898, clang++ 14.0.0-1ubuntu1.1 -fPIC -Os) */

module wallace_4bit(A, B, P);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  input [3:0] A;
  wire [3:0] A;
  input [3:0] B;
  wire [3:0] B;
  output [7:0] P;
  wire [7:0] P;
  wire [4:0] c;
  wire \fa1.a ;
  wire \fa1.b ;
  wire \fa1.carry ;
  wire \fa1.cin ;
  wire \fa1.sum ;
  wire \fa2.a ;
  wire \fa2.b ;
  wire \fa2.carry ;
  wire \fa2.cin ;
  wire \fa2.sum ;
  wire \fa3.a ;
  wire \fa3.b ;
  wire \fa3.carry ;
  wire \fa3.cin ;
  wire \fa3.sum ;
  wire \fa4.a ;
  wire \fa4.b ;
  wire \fa4.carry ;
  wire \fa4.cin ;
  wire \fa4.sum ;
  wire \ha1.a ;
  wire \ha1.b ;
  wire \ha1.carry ;
  wire \ha1.sum ;
  wire [15:0] pp;
  wire [4:0] \ra1.A ;
  wire [4:0] \ra1.B ;
  wire \ra1.c1 ;
  wire \ra1.c2 ;
  wire \ra1.c3 ;
  wire \ra1.c4 ;
  wire \ra1.fa1.a ;
  wire \ra1.fa1.b ;
  wire \ra1.fa1.carry ;
  wire \ra1.fa1.cin ;
  wire \ra1.fa1.sum ;
  wire \ra1.fa2.a ;
  wire \ra1.fa2.b ;
  wire \ra1.fa2.carry ;
  wire \ra1.fa2.cin ;
  wire \ra1.fa2.sum ;
  wire \ra1.fa3.a ;
  wire \ra1.fa3.b ;
  wire \ra1.fa3.carry ;
  wire \ra1.fa3.cin ;
  wire \ra1.fa3.sum ;
  wire \ra1.fa4.a ;
  wire \ra1.fa4.b ;
  wire \ra1.fa4.carry ;
  wire \ra1.fa4.cin ;
  wire \ra1.fa4.sum ;
  wire \ra1.fa5.a ;
  wire \ra1.fa5.b ;
  wire \ra1.fa5.carry ;
  wire \ra1.fa5.cin ;
  wire \ra1.fa5.sum ;
  wire [5:0] \ra1.sum ;
  wire [4:0] s;
  assign P[0] = B[0] & A[0];
  assign pp[1] = A[1] & B[0];
  assign pp[2] = A[2] & B[0];
  assign pp[3] = A[3] & B[0];
  assign pp[4] = B[1] & A[0];
  assign pp[5] = B[1] & A[1];
  assign pp[6] = B[1] & A[2];
  assign pp[7] = B[1] & A[3];
  assign pp[8] = B[2] & A[0];
  assign pp[9] = B[2] & A[1];
  assign pp[10] = B[2] & A[2];
  assign pp[11] = B[2] & A[3];
  assign pp[12] = B[3] & A[0];
  assign pp[13] = B[3] & A[1];
  assign pp[14] = B[3] & A[2];
  assign pp[15] = B[3] & A[3];
  assign _002_ = \fa1.b  ^ \fa1.a ;
  assign \fa1.sum  = _002_ ^ \fa1.cin ;
  assign _003_ = \fa1.b  & \fa1.a ;
  assign _004_ = \fa1.cin  & \fa1.b ;
  assign _000_ = _004_ | _003_;
  assign _001_ = \fa1.cin  & \fa1.a ;
  assign \fa1.carry  = _001_ | _000_;
  assign _007_ = \fa2.b  ^ \fa2.a ;
  assign \fa2.sum  = _007_ ^ \fa2.cin ;
  assign _008_ = \fa2.b  & \fa2.a ;
  assign _009_ = \fa2.cin  & \fa2.b ;
  assign _005_ = _009_ | _008_;
  assign _006_ = \fa2.cin  & \fa2.a ;
  assign \fa2.carry  = _006_ | _005_;
  assign _012_ = \fa3.b  ^ \fa3.a ;
  assign \fa3.sum  = _012_ ^ \fa3.cin ;
  assign _013_ = \fa3.b  & \fa3.a ;
  assign _014_ = \fa3.cin  & \fa3.b ;
  assign _010_ = _014_ | _013_;
  assign _011_ = \fa3.cin  & \fa3.a ;
  assign \fa3.carry  = _011_ | _010_;
  assign _017_ = \fa4.b  ^ \fa4.a ;
  assign \fa4.sum  = _017_ ^ \fa4.cin ;
  assign _018_ = \fa4.b  & \fa4.a ;
  assign _019_ = \fa4.cin  & \fa4.b ;
  assign _015_ = _019_ | _018_;
  assign _016_ = \fa4.cin  & \fa4.a ;
  assign \fa4.carry  = _016_ | _015_;
  assign \ha1.sum  = \ha1.b  ^ \ha1.a ;
  assign \ha1.carry  = \ha1.b  & \ha1.a ;
  assign _022_ = \ra1.fa1.b  ^ \ra1.fa1.a ;
  assign \ra1.fa1.sum  = _022_ ^ \ra1.fa1.cin ;
  assign _023_ = \ra1.fa1.b  & \ra1.fa1.a ;
  assign _024_ = \ra1.fa1.cin  & \ra1.fa1.b ;
  assign _020_ = _024_ | _023_;
  assign _021_ = \ra1.fa1.cin  & \ra1.fa1.a ;
  assign \ra1.fa1.carry  = _021_ | _020_;
  assign _027_ = \ra1.fa2.b  ^ \ra1.fa2.a ;
  assign \ra1.fa2.sum  = _027_ ^ \ra1.fa2.cin ;
  assign _028_ = \ra1.fa2.b  & \ra1.fa2.a ;
  assign _029_ = \ra1.fa2.cin  & \ra1.fa2.b ;
  assign _025_ = _029_ | _028_;
  assign _026_ = \ra1.fa2.cin  & \ra1.fa2.a ;
  assign \ra1.fa2.carry  = _026_ | _025_;
  assign _032_ = \ra1.fa3.b  ^ \ra1.fa3.a ;
  assign \ra1.fa3.sum  = _032_ ^ \ra1.fa3.cin ;
  assign _033_ = \ra1.fa3.b  & \ra1.fa3.a ;
  assign _034_ = \ra1.fa3.cin  & \ra1.fa3.b ;
  assign _030_ = _034_ | _033_;
  assign _031_ = \ra1.fa3.cin  & \ra1.fa3.a ;
  assign \ra1.fa3.carry  = _031_ | _030_;
  assign _037_ = \ra1.fa4.b  ^ \ra1.fa4.a ;
  assign \ra1.fa4.sum  = _037_ ^ \ra1.fa4.cin ;
  assign _038_ = \ra1.fa4.b  & \ra1.fa4.a ;
  assign _039_ = \ra1.fa4.cin  & \ra1.fa4.b ;
  assign _035_ = _039_ | _038_;
  assign _036_ = \ra1.fa4.cin  & \ra1.fa4.a ;
  assign \ra1.fa4.carry  = _036_ | _035_;
  assign _042_ = \ra1.fa5.b  ^ \ra1.fa5.a ;
  assign \ra1.fa5.sum  = _042_ ^ \ra1.fa5.cin ;
  assign _043_ = \ra1.fa5.b  & \ra1.fa5.a ;
  assign _044_ = \ra1.fa5.cin  & \ra1.fa5.b ;
  assign _040_ = _044_ | _043_;
  assign _041_ = \ra1.fa5.cin  & \ra1.fa5.a ;
  assign \ra1.fa5.carry  = _041_ | _040_;
  assign P[7] = 1'h0;
  assign pp[0] = P[0];
  assign \ra1.fa5.a  = \ra1.A [4];
  assign \ra1.fa5.b  = \ra1.B [4];
  assign \ra1.sum [5] = \ra1.fa5.carry ;
  assign \ra1.fa5.cin  = \ra1.c4 ;
  assign \ra1.sum [4] = \ra1.fa5.sum ;
  assign \ra1.fa4.a  = \ra1.A [3];
  assign \ra1.fa4.b  = \ra1.B [3];
  assign \ra1.c4  = \ra1.fa4.carry ;
  assign \ra1.fa4.cin  = \ra1.c3 ;
  assign \ra1.sum [3] = \ra1.fa4.sum ;
  assign \ra1.fa3.a  = \ra1.A [2];
  assign \ra1.fa3.b  = \ra1.B [2];
  assign \ra1.c3  = \ra1.fa3.carry ;
  assign \ra1.fa3.cin  = \ra1.c2 ;
  assign \ra1.sum [2] = \ra1.fa3.sum ;
  assign \ra1.fa2.a  = \ra1.A [1];
  assign \ra1.fa2.b  = \ra1.B [1];
  assign \ra1.c2  = \ra1.fa2.carry ;
  assign \ra1.fa2.cin  = \ra1.c1 ;
  assign \ra1.sum [1] = \ra1.fa2.sum ;
  assign \ra1.fa1.a  = \ra1.A [0];
  assign \ra1.fa1.b  = \ra1.B [0];
  assign \ra1.c1  = \ra1.fa1.carry ;
  assign \ra1.fa1.cin  = 1'h0;
  assign \ra1.sum [0] = \ra1.fa1.sum ;
  assign \ra1.A  = { c[3], s[3:0] };
  assign \ra1.B  = { c[4], pp[12], c[2:0] };
  assign P[6:1] = \ra1.sum ;
  assign \ha1.a  = pp[1];
  assign \ha1.b  = pp[4];
  assign c[0] = \ha1.carry ;
  assign s[0] = \ha1.sum ;
  assign \fa4.a  = pp[11];
  assign \fa4.b  = pp[14];
  assign c[4] = \fa4.carry ;
  assign \fa4.cin  = pp[15];
  assign s[4] = \fa4.sum ;
  assign \fa3.a  = pp[7];
  assign \fa3.b  = pp[10];
  assign c[3] = \fa3.carry ;
  assign \fa3.cin  = pp[13];
  assign s[3] = \fa3.sum ;
  assign \fa2.a  = pp[3];
  assign \fa2.b  = pp[6];
  assign c[2] = \fa2.carry ;
  assign \fa2.cin  = pp[9];
  assign s[2] = \fa2.sum ;
  assign \fa1.a  = pp[2];
  assign \fa1.b  = pp[5];
  assign c[1] = \fa1.carry ;
  assign \fa1.cin  = pp[8];
  assign s[1] = \fa1.sum ;
endmodule
