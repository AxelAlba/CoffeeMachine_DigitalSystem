/*
    Coffee Machine Testbench 
    Developer:
    Axel T. Alba
*/
`timescale 1ns/10ps
module coffeeMachine_t;
    wire t, w, f, m, o;
    reg F, W, T, C;

    coffeeMachine uut(F, W, T, C, t, w, f, m, o);
    initial
        begin
            $monitor("Input: F = %d, W = %d, T = %d, C = %d| Output: t = %d, w = %d, f = %d, m = %d, o = %d", 
            F, W, T, C, t, w, f, m, o);
            $dumpfile("coffeeMachine.vcd");
            $dumpvars(0, coffeeMachine_t);

            /*
                All the combinations generated from the input variables as seen on the truth table. 
                The input for these variables would change on a 25ns interval and would end at exactly 400ns.
            */
                F = 1'b0; W = 1'b0; T = 1'b0; C = 1'b0;//0000
            #25 F = 1'b0; W = 1'b0; T = 1'b0; C = 1'b1;//0001
            #25 F = 1'b0; W = 1'b0; T = 1'b1; C = 1'b0;//0010
            #25 F = 1'b0; W = 1'b0; T = 1'b1; C = 1'b1;//0011
            #25 F = 1'b0; W = 1'b1; T = 1'b0; C = 1'b0;//0100
            #25 F = 1'b0; W = 1'b1; T = 1'b0; C = 1'b1;//0101
            #25 F = 1'b0; W = 1'b1; T = 1'b1; C = 1'b0;//0110
            #25 F = 1'b0; W = 1'b1; T = 1'b1; C = 1'b1;//0111
            #25 F = 1'b1; W = 1'b0; T = 1'b0; C = 1'b0;//1000
            #25 F = 1'b1; W = 1'b0; T = 1'b0; C = 1'b1;//1001
            #25 F = 1'b1; W = 1'b0; T = 1'b1; C = 1'b0;//1010
            #25 F = 1'b1; W = 1'b0; T = 1'b1; C = 1'b1;//1011
            #25 F = 1'b1; W = 1'b1; T = 1'b0; C = 1'b0;//1100
            #25 F = 1'b1; W = 1'b1; T = 1'b0; C = 1'b1;//1101
            #25 F = 1'b1; W = 1'b1; T = 1'b1; C = 1'b0;//1110
            #25 F = 1'b1; W = 1'b1; T = 1'b1; C = 1'b1;//1111
        end
    initial #400 $finish;
endmodule
