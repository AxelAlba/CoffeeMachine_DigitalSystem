A Digital System for a Simple Coffee Vending Machine.

## :computer:Digital System for a Coffee Vending Machine
This digital system simulates how a coffee vending machine works in terms of its logic circuit.
A circuit was also implemented, using logisim, as reference for the creation of the digital system.

## :computer:How to run
For the .circ file, download and install logisim, and open the file from there.
For the digital system, it consists of 2 parts: one for the model and one for the testbench.
Make sure that the files for the model and the testbench are inside the bin folder 
of iverilog.
To compile, in the bin folder:
```
iverilog -o <name of exe file> <name of model> 
<name of testbench>
```
To execute: 
```
vvp <name of exe file>
```
This would generate a .vcd file which would be used for the gtkwave simulation.
To generate the wave of the logical system using gtkwave:
```
gtkwave <dumpfile>.vcd
```
Then insert the appropriate variables you need for the wave, i.e. the input and output variables.
