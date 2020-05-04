#!/bin/sh

# Directory settings
SYSTEMC_DIR=/usr/local/systemc-2.3.3
IV_LIB=/usr/local/lib/libvpi.a
RTL_DIR="../rtl"
SYSC_DIR="../sysc"
STUB_DIR="../stub"
TOP_MODULE=test_module

sim_file=$1
echo "Test Scenario=" $sim_file

# compile verilog
iverilog -c ../bin/cmd.txt \
    -v \
    -y ${RTL_DIR} \
    -o ${TOP_MODULE} \
    ${sim_file}

g++ -c -fPIC \
    -I${SYSC_DIR} \
    -I${STUB_DIR} \
    -I${SYSTEMC_DIR}/include \
    ${SYSC_DIR}/mod_a.cpp

g++ -c  -fPIC \
    -I${SYSC_DIR} \
    -I${STUB_DIR} \
    -I${SYSTEMC_DIR}/include \
    ${SYSC_DIR}/mod_a_tb.cpp

iverilog-vpi \
    -I${SYSC_DIR} \
    -I${STUB_DIR} \
    ${STUB_DIR}/vpi_stub.c \
    mod_a.o mod_a_tb.o -lscv -lsystemc -L${SYSTEMC_DIR}/lib-linux64

# simulation
export LD_LIBRARY_PATH=${SYSTEMC_DIR}/lib-linux64
vvp -M. -mvpi_stub ${TOP_MODULE} -v
