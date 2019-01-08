require_relative 'Wgraph.rb'


def dijkstra(graph)
	
	cost ={}
	parent ={}
	traversed=[]
	order=[]
	neighbor = graph.neighbor

	#populate initial tables
	neighbor.each do |e|
		cost[e] =[e.edge(graph)]
		parent[e.name] =graph.name
		traversed=[e.name]
	end

	p cost.values

end


def find_lowest_cost(cost)
end



# construct simple Weighted Graph
ghana =  Wgraph.new(:ghana, 0)
nigeria = Wgraph.new(:nigeria, 25)
mali = Wgraph.new(:mali, 30)
egypt = Wgraph.new(:egypt ,4)
sudan = Wgraph.new(:sudan, 21)
timbuktu = Wgraph.new(:timbuktu, 3)

ghana.add_neighbor(nigeria, mali,)
nigeria.add_neighbor(mali, egypt, timbuktu)
mali.add_neighbor(nigeria,egypt,sudan)
egypt.add_neighbor(sudan)
sudan.add_neighbor(timbuktu)

p ghana.edge(nigeria)

dijkstra(ghana)