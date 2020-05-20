/*
    Coffee Machine Model
    Developer:
    Axel T. Alba
*/
module coffeeMachine(F, W, T, C, t, w, f, m, o);
    /*
        input: 
            F = Fifty Pesos
            W = Twenty pesos
            T = Ten pesos
            C = Coffee Choice 
        output:
            t = Ten pesos change
            w = Twenty pesos change
            f = fifty pesos change
            m = x2 multiplier for 20 pesos change
            o = Coffee Output 
        wires: i0 - i3 are for the inverters of the four input variables, 
        and wr0-wr9 are the wires used by the gates to go from one level to another.
    */
    output t, w, f, m, o;
    input F, W, T, C;
    wire i0, i1, i2, i3, wr0, wr1, wr2, wr3, wr4, wr5, wr6, wr7, wr8, wr9; 

    //NOT gates for the 4 inverters.
    not FI(i0, F), WI(i1, W), TI(i2, F), CI(i3, C); 

    //10 AND gates from the first logic level that denotes the meaning of the wires.
    and A1(wr0, T, i3, i1), A2(wr1, C, T, i0), 
        A3(wr2, C, F, i2), A4(wr3, T, F, i1),  
        A5(wr4, i2, i3, F), A6(wr5, C, W), 
        A7(wr6, W, i2), A8(wr7, F, W, T, C), 
        A9(wr8, F, W, i2, i3), A10(wr9, W, T, i3);

    //4 OR gates from the last logic level that denotes the outcome of the output variables: t, w, m, & o.
    or  O1(t, wr0, wr1, wr2), 
        O2(w, wr3, wr4, wr5, wr6), 
        O3(m, wr7, wr8), 
        O4(o, wr9, F);

    //1 AND gate from the last logic level that denotes the outcome of the output variable f.
    and A11(f, i3, F, W, T);
endmodule
