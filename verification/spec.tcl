analyze -sva  \
    off-chip-specification.v

elaborate -top spec
clock clk
reset rst

assume {@(posedge clk) ((down_wptr != down_rptr) | (valid_out == 1)) |-> ##[0:$] ready}

assert {@(posedge clk) valid_in |=> ##[0:$] valid_out}
assert {req |=> ##[0:$] ack}
assert {counter < 8}