module HighFrequencyFinance

# maxmin, minmidmax, maxmidmin
include("ordering/minmidmax.jl")

# very fast median of 1,2,..,15,16 values
include("onlinestats/smallstats/median_1to16.jl")  

# fast rolling of windowed function over a vector
include("dataflow/running.jl")

end # module
