`timescale 1ns/1ps

module full_wave_rectifier_tb;

    real ac_input;
    wire dc_output;

    full_wave_rectifier uut (
        .ac_input(ac_input),
        .dc_output(dc_output)
    );

    initial begin
        $display("Time(ns)\tAC Input(V)\tRectified Output(V)");
        $display("----------------------------------------------");

        ac_input = 0.0;
        #10;
        $display("%0t\t%0.2f\t\t%0.2f", $time, ac_input, dc_output);

        ac_input = 2.0;
        #10;
        $display("%0t\t%0.2f\t\t%0.2f", $time, ac_input, dc_output);

        ac_input = -4.0;
        #10;
        $display("%0t\t%0.2f\t\t%0.2f", $time, ac_input, dc_output);

        ac_input = 6.0;
        #10;
        $display("%0t\t%0.2f\t\t%0.2f", $time, ac_input, dc_output);

        ac_input = -8.0;
        #10;
        $display("%0t\t%0.2f\t\t%0.2f", $time, ac_input, dc_output);

        ac_input = 10.0;
        #10;
        $display("%0t\t%0.2f\t\t%0.2f", $time, ac_input, dc_output);

        ac_input = -10.0;
        #10;
        $display("%0t\t%0.2f\t\t%0.2f", $time, ac_input, dc_output);

        $finish;
    end

endmodule