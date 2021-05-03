analyze -sva  \
    off-chip-specification.v

elaborate -top spec
clock clk
reset rst

assert assert {@(posedge clk) valid_in |=> ##[0:$] valid_out}
