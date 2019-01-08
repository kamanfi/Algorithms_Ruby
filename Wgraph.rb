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

	def neighbors()
		return @neighbor
	end


end







