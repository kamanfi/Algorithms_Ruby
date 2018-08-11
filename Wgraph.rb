class Wgraph
	attr_accessor :name, :neighbor, :weight

	def initialize (name,weight)
		@name = name
		@neighbor = []
		@weight = weight
	end

	def add_neighbor (*vertex)
		while !vertex.empty?
			@neighbor << vertex.shift
		end
	end

	def edge (vertex)
		return @weight + vertex.weight
	end


end



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


