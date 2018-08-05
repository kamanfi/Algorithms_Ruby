# quick code to demonstrate breath first search on a a simple graph
# code finds if one of my friend or one of their friends is an alien


def bfs(graph)

  queue=Queue.new	
  p graph.first[0]
  queue=graph[graph.first[0]] # populate queue with my immediate list of friends
  while !queue.empty?		  
  	  p queue #prints queue to check order "friends" are added
  	friend = queue.shift			
  	if alien?(friend)
  		return "#{friend} is an alien"
  	elsif graph[friend] #if friend have friends. i.e if hash value != nil
  		queue+=graph[friend]
  	end
  end

end


#person is an alien if their name is more than length 10 ()
def alien?(friend)

	friend.size > 10 ? (return true) : (return false)
end


# a directed acyclic graph using a hashtable
graph={}
graph[:kwasi]=[:john, :rojay, :shem, :alex ]
graph[:rojay]=[]  #has no friends
graph[:shem]=[:quincy]
graph[:alex]=[]
graph[:adel]=[]
graph[:edward]=[:almostana]
graph[:quincy]=[:totallynotanaliencalledBOB]
graph[:totallynotanaliencalledBOB]=[]
graph[:john]=[:adel, :edward] #order friends are added to graph should not affect order of search

p bfs(graph)
