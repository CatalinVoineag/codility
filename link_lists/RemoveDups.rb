require "byebug"

class Node

	attr_accessor :data
	attr_accessor :pointer

	def initialize(data, pointer = nil)
		@data = data
		@pointer = pointer 
	end

	def set_pointer(node)
		@pointer = node
	end

	def get_pointer
		@pointer 
	end

	def next?
		!@pointer.nil?
	end

	def get_node(pointer)
		
	end

end

class SinglyLinkedList

	def initialize(data)
		@head = Node.new(data, nil)
	end

	def insert_node_at_end(data)
		current_node = @head

		while current_node.next?
			current_node = current_node.get_pointer
		end

		new_node = Node.new(data, nil)

		current_node.set_pointer(new_node)
	end

	def remove_node(data)
		current_node = @head

	end

	 def display
    current_node = @head

    while current_node.next?
      p current_node.data
      current_node = current_node.pointer
    end

    p current_node.data
  end

end
	

# 	class RemoveDups

# 		def self.solution
# 			node1 = Node.new()
# 			node.value = 1

# 			byebug
# 		end

# #		RemoveDups.solution 

# 	end 
	#Ripl.start :binding => binding
