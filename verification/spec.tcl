analyze -sva  \
    off-chip-specification.v

elaborate -top spec
clock clk
reset rst

assume {ready == 1}

assert {@(posedge clk) valid_in |=> ##[0:$] valid_out}
assert {@(posedge clk) ack |=> ##[0:$] req}