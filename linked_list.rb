class LinkedList
    attr_accessor :head, :tail
    def initialize
        @head = null
        @tail = null
    end

    class Node
        def initialize(value)
            @value = value
            @next_node = nil
        end
    end

    def print_list
        puts 
    end
    #code to add node to the end of the list
    def append(value)
        new_node = Node.new(value)
        if @head == null
            @head = new_node
            @tail = new_node.next_node
        else
            @tail = new_node
            new_node.next_node = nil
        end
    end

    def prepend(value)
        new_node = Node.new(value)
        @head = new_node
        new_node.next_node = 
        #code to add node to beginning of the list
    end

    def size
        puts "This list contains #{list_size} nodes."
    end

    def head
        #code to return first node in the list
    end

    def tail
        #code to return last node in the list
    end
end

list = LinkedList.new
list.Node.new(3)
list.append(4)
