#!/bin/bash
# file: simulate.sh

# Show commands as they are executed
set -x

# Add files to the project
ghdl -i --std=08 --workdir=build --work=work ./adc.vhd
ghdl -i --std=08 --workdir=build --work=work ./adc_tb.vhd

# Make: Analysis and elaboration
ghdl -m --std=08 --workdir=build --work=work adc_tb

# Run the simulation
ghdl -r --std=08 --workdir=build --work=work adc_tb --stop-time=150us --wave=wave.ghw

