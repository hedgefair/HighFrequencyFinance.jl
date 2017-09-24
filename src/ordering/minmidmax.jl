#=
function swapsort(a::T, b::T, c::T) where {T}
    b, c = minmax(b, c)
    a, c = minmax(a, c)
    a, b = minmax(a, b)
    return a, b, c
end
=#

function maxmin(a::T, b::T) where {T}
    a, b = minmax(a, b)
    return b, a
end

function mid(a::T, b::T, c::T) where {T}
    b, c = minmax(b, c)
    a, c = minmax(a, c)
    return max(a,b)
end

function minmidmax(a::T, b::T, c::T) where {T}
    b, c = minmax(b, c)
    a, c = minmax(a, c)
    a, b = minmax(a, b)
    return a, b, c
end

function maxmmidmin(a::T, b::T, c::T) where {T}
    b, c = minmax(b, c)
    a, c = minmax(a, c)
    a, b = minmax(a, b)
    return c, b, a
end
