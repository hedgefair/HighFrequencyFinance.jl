sequency(a::T) where T = (a, )
sequency(a::T, b::T) where T = (a, b)
sequency(a::T, b::T, c::T) where T = (a, c, b)
sequency(a::T, b::T, c::T, d::T) where T = (a,c,d,b)
sequency(a::T, b::T, c::T, d::T, e::T) where T = (a,c,d,b,e)
sequency(a::T, b::T, c::T, d::T, e::T, f::T) where T = (a,c,f,d,b,e)
sequency(a::T, b::T, c::T, d::T, e::T, f::T, g::T) where T = (a,c,f,d,b,e,g)
sequency(a::T, b::T, c::T, d::T, e::T, f::T, g::T, h::T) where T = (a,c,f,d,b,e,g,h)

sequency_rev(a::T) where T = (a, )
sequency_rev(a::T, b::T) where T = (b, a)
sequency_rev(a::T, b::T, c::T) where T = (b, c, a)
sequency_rev(a::T, b::T, c::T, d::T) where T = (b,d,c,a)
sequency_rev(a::T, b::T, c::T, d::T, e::T) where T = (e,b,d,c,a)
sequency_rev(a::T, b::T, c::T, d::T, e::T, f::T) where T = (e,b,d,f,c,a)
sequency_rev(a::T, b::T, c::T, d::T, e::T, f::T, g::T) where T = (g,e,b,d,f,c,a)
sequency_rev(a::T, b::T, c::T, d::T, e::T, f::T, g::T, h::T) where T = (h,g,e,b,d,f,c,a)

const SequencyIndicies = map(x->map(Int32,x), 
                             ( (1,), (1,2), (1,3,2), (1,3,4,2), (1,3,4,2,5), 
                               (1,3,6,4,2,5), (1,3,6,4,2,5,7), (1,3,6,4,2,5,7,8) ) )

const SequencyIndiciesRev = map(x->map(Int32,x), 
                                 ( (1,), (2,1), (2,3,1), (2,4,3,1), (5,2,4,3,1), 
                                   (5,2,4,6,3,1), (7,5,2,4,6,3,1), (8,7,5,2,4,6,3,1) ) )

sequency_indices(ith::T) where T<:Integer = SequencyIndicies[ith]
sequency_indices_rev(ith::T) where T<:Integer = SequencyIndiciesRev[ith]


order_rev(a::T) where T = (a, )
order_rev(a::T, b::T) where T = (b, a)
order_rev(a::T, b::T, c::T) where T = (c, b, a)
order_rev(a::T, b::T, c::T, d::T) where T = (d,c,b,a)
order_rev(a::T, b::T, c::T, d::T, e::T) where T = (e,d,c,b,a)
order_rev(a::T, b::T, c::T, d::T, e::T, f::T) where T = (f,e,d,c,b,a)
order_rev(a::T, b::T, c::T, d::T, e::T, f::T, g::T) where T = (g,f,e,d,c,b,a)
order_rev(a::T, b::T, c::T, d::T, e::T, f::T, g::T, h::T) where T = (h,g,f,e,d,c,b,a)
