using Catlab, AlgebraicDynamics, AlgebraicDynamics.UWDDynam

rabbits = ContinuousResourceSharer{Float64}(
  1,
  1,
  (R, p, t) -> p.α*R,
  [1]
)