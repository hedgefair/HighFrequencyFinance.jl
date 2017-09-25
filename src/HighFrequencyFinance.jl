#=>

maxmin(a,b), minmidmax(a,b,c), maxmidmin(a,b,c)

median(x_1) .. median(x_1 .. x_16)

sequency(a) .. sequency(a,b,c,d,e,f,g,h)
sequency_rev(a) .. sequency_rev(a,b,c,d,e,f,g,h)
sequency_indicies(1..8)
sequency_indicies_rev(1..8)
order_rev(a) .. order_rev(a,b,c,d,e,f,g,h)

     running windowed functions over a data vector
    
   - rolling(fn, span, data)
     -- length(result) == length(data) - span + 1
     -- all result values use fn( window-sized data )
   
   - rolling_ahead(fn, span, data)
     -- length(result) == length(data)
     -- result[1:span-1] use fn(coarser data)      
   
   - rolling_behind(fn, span, data)
      -- length(result) == length(data)    
      --  result[end-span+1:end] use fn(coarser data) 
   - rolling_first(fn, span, data)
     -- length(result) == length(data)    
     -- result[end-span+1:end] == data[end-span+1:end]
   - rolling_final(fn, span, data)
     -- length(result) == length(data)    
     -- result[1:span-1] == data[1:span-1]

<=#

module HighFrequencyFinance

# maxmin, minmidmax, maxmidmin
include("ordering/minmidmax.jl")
# disentanglement optimal sequency maps
include("ordering/sequency_3to8.jl")

# very fast median of 1,2,..,15,16 values
# median of odd number of values is fastest
include("onlinestats/smallstats/median_1to16.jl")  

# fast rolling of windowed function over a vector
include("dataflow/running.jl")

end # module
