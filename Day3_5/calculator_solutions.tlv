\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   |calc
      @1
         $reset = *reset;
         $val1[31:0] = >>2$out;     // val1 is previous output
         $val2[31:0] = $rand2[3:0]; // to keep input values small
         $op[1:0] = $rand1[1:0];    // op must be declared in this stage
         
         // Valid every other cycle
         $valid = $reset ? 0 : (>>1$valid + 1);
         
         // Parallel calculations (not concerned with power)
         $quot[31:0] = $val1 / $val2;
         $prod[31:0] = $val1 * $val2;
         $diff[31:0] = $val1 - $val2;
         $sum[31:0]  = $val1 + $val2;
      @2
         // Multiplexer
         $out[31:0] = ($reset || ! $valid) ? 0 :
            ($op[1] ? ($op[0] ? $quot[31:0]   : // (3 = quot)
                                $prod[31:0])  : // (2 = prod)
                      ($op[0] ? $diff[31:0]   : // (1 = diff)
                                $sum[31:0]))  ; // (0 = sum )

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
