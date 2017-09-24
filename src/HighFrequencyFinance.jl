module HighFrequencyFinance

include("onlinestats/median_1to16.jl")  # very fast median of 1,2,..,15,16 values
include("dataflow/running.jl")          # fast rolling of windowed function over a vector

end # module
