require_relative 'node'

class LinkedList
    attr_accessor :head, :tail, :node_counter
    def initialize
        @head = nil
        @node_counter = 0
    end

    
    def get_value(node)
        if node.next_node != nil
            puts node.value
            get_value(node.next_node)
        else
            node.value
        end
    end

    def traverse_nodes(node)
        if node.next_node != nil
            traverse_nodes(node.next_node)
        else
            node
        end
    end

    #code to add node to the end of the list
    def append(value)
        new_node = Node.new(value)
        @node_counter += 1
        if @head == nil
            @head = new_node
        else
            last_node = traverse_nodes(@head)
            # require 'pry'; binding.pry
            last_node.next_node = new_node
        end
    end

    #code to add node to the beginning of the list
    def prepend(value)
        new_node = Node.new(value)
        @node_counter += 1
        if @head == nil
            @head = new_node
        else
            new_node.next_node = @head
            @head = new_node
        end
    end

    def size
        puts "This list contains #{node_counter} nodes."
    end

    def head
        @head.value
    end

    def tail
        last_node = traverse_nodes(@head)
        last_node.value
    end

    def find_node_at(node, index)
        if index == 1
            node
        else  
            find_node_at(node.next_node, index - 1)
        end
    end

    def at(index)
        if index == 1
            @head = @head.next_node
            @node_counter -= 1
        elsif index == node_counter
            self.pop
        else            
            node_to_delete = find_node_at(@head, index)
            parent_node = find_node_at(@head, index - 1)
            puts "Removed #{node_to_delete.value}"
            parent_node.next_node = node_to_delete.next_node
            @node_counter -= 1
        end
    end

    def remove_nil_node(node)
        if node.next_node.value == nil
            node.next_node = nil
            @node_counter -= 1
        else
            remove_nil_node(node.next_node)
        end
    end

    def pop
        last_node = traverse_nodes(@head)
        last_node.value = nil
        remove_nil_node(@head)
    end

    def find_node_with_value(node, value)
        if node.value == value
            true
        elsif node.next_node == nil
            false
        else
            find_node_with_value(node.next_node, value)
        end
    end

    def contains?(value)
        find_node_with_value(@head, value)
    end

    def find_node_with_index(node, value, counter)
        if node.value == value
            counter
        elsif node.next_node == nil
            nil
        else
            find_node_with_index(node.next_node, value, counter + 1)
        end
    end

    def find(value)
        counter = 1
        puts "#{value} is at index: #{find_node_with_index(@head,value, counter)}"
    end

    def print_list(node)
        while node != nil
            if node.next_node == nil
                print "( #{node.value} ) -> nil"
            else
                print "( #{node.value} ) -> "
            end
            node = node.next_node
        end
    end

    def to_s 
        print_list(@head)
    end
end

list = LinkedList.new
puts "The List starts off empty: "
list.to_s
puts "Let's use 'prepend' to add '4' to the beginning of the list: "
 list.prepend(4)
puts "Then we'll use 'append' to add '11' to the end of the list: "
 list.append(11)
list.to_s
puts "Let's use 'prepend' again to add '3' to the beginning of the list"
list.prepend(3)
list.to_s
puts "What happens if we use 'prepend' again to add '1' to the beginning of the list?"
 list.prepend(1)
 puts "What happens if we use 'append' to add '10' to the end of the list?"
 list.append(10)
list.to_s
list.size


