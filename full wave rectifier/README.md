# Full Wave Rectifier

## Description

A simple Verilog behavioral model of a full wave rectifier. It converts both positive and negative portions of an AC input into a positive output.

## Working Principle

A full wave rectifier produces a positive output for both halves of an AC waveform.

The mathematical operation is:

```text
Output = |Input|
```

For a positive input:

```text
Input  = +5V
Output = +5V
```

For a negative input:

```text
Input  = -5V
Output = +5V
```

## Files

* `full_wave_rectifier.v` – Verilog design module.
* `full_wave_rectifier_tb.v` – Testbench used to verify the design.
* `expected_output.txt` – Expected simulation output.

## Example

| AC Input | Rectified Output |
| -------: | ---------------: |
|      0 V |              0 V |
|     +2 V |             +2 V |
|     -4 V |             +4 V |
|     +6 V |             +6 V |
|     -8 V |             +8 V |
|    +10 V |            +10 V |
|    -10 V |            +10 V |

## Tools

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado

## Conclusion

The project demonstrates the basic operation of a full wave rectifier by converting negative input values into positive output values while keeping positive values unchanged.
