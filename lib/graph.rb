require 'gruff'

def create_graph(graph_name = "./line.png")
  g = Gruff::Line.new
  g.title = "A Line Graph"
  g.data @year, @total
  g.write(graph_name)
end

