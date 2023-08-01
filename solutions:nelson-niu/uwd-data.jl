using Catlab.Programs.RelationalPrograms
using Catlab.Graphics.GraphvizGraphs

my_uwd = @relation (x, y, z) where (w, x, y, z) begin
  R(x, w)
  S(y, w)
  T(z, w)
end

to_graphviz(R, box_labels=:name)
