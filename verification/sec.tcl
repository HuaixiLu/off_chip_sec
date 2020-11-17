analyze -sva  \
    off-chip-specification.v \
    off-chip-ila.v \
    upstream_ila.v \
    downstream_ila.v \
    sec-wrapper


elaborate -top sec
clock clk
reset rst

assert {ila_data == spec_data}