# SystemC SCV - Icarus Verilog VPI sample

Co-simulation exsample of SystemC SCV and Icarus Verilog.

SystemC testbench provides constrained random stimulus to Verilog DUT, and captures responses from the Verilog DUT. 

## Prerequisites

* Centos7

* Icarus Verilog version 11.0

* SystemC version 2.3.3

* SCV version 2.0.1

## Setup
Configure the SYSTEMC_DIR in bin/run_iv.sh to fit to your environment.
The default is "/usr/local/systemc-2.3.3".

```
SYSTEMC_DIR=/usr/local/systemc-2.3.3
```

## Running the simulation

```
git https://github.com/Kenji-Ishimaru/scv_iv_sample.git

cd scv-iv-sample/work
../bin/run_iv.sh ../scenario/test_1.v
```

## Result
### Log

```
Making vpi_stub.vpi from  mod_a.o mod_a_tb.o vpi_stub.o...
Icarus Verilog started
VCD info: dumpfile dump.vcd opened for output.
#0 s SystemC started
#100 ns rst_x is deasserted 
Random value for data:
  {
    valid:0
    a:76
    b:60
  }
Random value for data:
  {
    valid:1
    a:3f
    b:d1
  }
Random value for data:
  {
    valid:0
    a:68
    b:da
  }
Random value for data:
  {
    valid:0
    a:ef
    b:27
  }
Mon Input: #130 ns i_valid = 0 i_in_a = 068 i_in_b = 0da
Mon Output: #130 ns o_valid = 1 o_out = 010
Random value for data:
  {
    valid:0
    a:42
    b:e4
  }
Random value for :
  {
    valid:0
    a:d1
    b:d1
  }
Random value for :
  {
    valid:0
    a:2b
    b:2b
  }
Random value for :
  {
    valid:1
    a:a8
    b:a8
  }
Random value for :
  {
    valid:1
    a:39
    b:39
  }
Random value for :
  {
    valid:0
    a:4d
    b:4d
  }
Mon Input: #190 ns i_valid = 1 i_in_a = 039 i_in_b = 039
Mon Output: #190 ns o_valid = 1 o_out = 050
Random value for :
  {
    valid:1
    a:5
    b:d
  }
Mon Input: #200 ns i_valid = 0 i_in_a = 04d i_in_b = 04d
Mon Output: #200 ns o_valid = 1 o_out = 072
Random value for :
  {
    valid:1
    a:1
    b:b
  }
Random value for :
  {
    valid:1
    a:6
    b:9
  }
Mon Input: #220 ns i_valid = 1 i_in_a = 001 i_in_b = 00b
Mon Output: #220 ns o_valid = 1 o_out = 012
Random value for :
  {
    valid:0
    a:5
    b:a
  }
Mon Input: #230 ns i_valid = 1 i_in_a = 006 i_in_b = 009
Mon Output: #230 ns o_valid = 1 o_out = 00c
Random value for :
  {
    valid:1
    a:6
    b:9
  }
Mon Input: #240 ns i_valid = 0 i_in_a = 005 i_in_b = 00a
Mon Output: #240 ns o_valid = 1 o_out = 00f
Random value for :
  {
    valid:1
    a:d2
    b:f3
  }
Random value for :
  {
    valid:1
    a:aa
    b:f7
  }
Mon Input: #260 ns i_valid = 1 i_in_a = 0d2 i_in_b = 0f3
Mon Output: #260 ns o_valid = 1 o_out = 00f
Random value for :
  {
    valid:1
    a:24
    b:65
  }
Mon Input: #270 ns i_valid = 1 i_in_a = 0aa i_in_b = 0f7
Mon Output: #270 ns o_valid = 1 o_out = 0c5
Random value for :
  {
    valid:1
    a:77
    b:f8
  }
Mon Input: #280 ns i_valid = 1 i_in_a = 024 i_in_b = 065
Mon Output: #280 ns o_valid = 1 o_out = 0a1
Random value for :
  {
    valid:1
    a:fd
    b:d2
  }
Mon Input: #290 ns i_valid = 1 i_in_a = 077 i_in_b = 0f8
Mon Output: #290 ns o_valid = 1 o_out = 089
Mon Input: #300 ns i_valid = 1 i_in_a = 0fd i_in_b = 0d2
Mon Output: #300 ns o_valid = 1 o_out = 06f
Mon Input: #310 ns i_valid = 0 i_in_a = 0fd i_in_b = 0d2
Mon Output: #310 ns o_valid = 1 o_out = 0cf
=======================================
 The simulation is successfully done.
=======================================
#410 ns SystemC stopped

Info: /OSCI/SystemC: Simulation stopped by user.
```

### Waveform

![waveform](/images/result.jpg)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details