analyze -sva  \
    off-chip-specification.v

elaborate -top spec
clock clk
reset rst

assume {ready == 1}

assert {@(posedge clk) valid_in |=> ##[0:$] valid_out}
assert {req |=> ##[0:$] ack}