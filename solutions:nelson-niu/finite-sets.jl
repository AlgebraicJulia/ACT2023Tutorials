struct FinSet
  n::Int
end

struct FinFunction
  dom::FinSet
  codom::FinSet
  values::Vector{Int}
end

A, B = FinSet(3), FinSet(2)
f = FinFunction([1,2,2], A, B)

