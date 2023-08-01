using Catlab, Catlab.CategoricalAlgebra

@present GrphDiagram(FreeSchema) begin
  E :: Ob
  V :: Ob
  src::Hom(E, V)
  tgt::Hom(E, V)
end

@acset_type Grph(GrphDiagram, index=[:src,:tgt]) 