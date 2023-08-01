struct FinSet
  n::Int
end

struct FinFunction
  dom::FinSet
  codom::FinSet
  values::Vector{Int}
end

A, B = FinSet(3), FinSet(2)
f = FinFunction(A, B, [1,2,2])

function product(X::FinSet, Y::FinSet)
  x, y = X.n, Y.n
  P = FinSet(x * y)

  proj_left  = FinFunction(P, X, [i for i in 1:X.n for j in 1:Y.n])
  proj_right = FinFunction(P, Y, [j for i in 1:X.n for j in 1:Y.n])

  return P, proj_left, proj_right
end