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

		# To delete a node you set the previous node, the one in front of the node you want to delete.You set that node's pointer to the node after the one you want to delete.

	def remove_node(data)
		current_node = @head

		if current_node.data == data
			@head = current_node.pointer
		else
			while current_node.next? && current_node.pointer.data != data
				current_node = current_node.pointer
			end
			unless current_node == nil
				current_node.pointer = current_node.pointer.pointer
			end
		end	
	end

  def return_list
    elements = []
    current_node = @head
    while current_node.pointer != nil
      elements << current_node
      current_node = current_node.pointer
    end
  	elements << current_node
	end
	
	 def display
    current_node = @head

    while current_node.next?
      p current_node.data
      p current_node.pointer
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
