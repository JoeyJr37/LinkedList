class LinkedList
    attr_accessor :head, :tail
    def initialize
        @head = null
        @tail = null
    end

    class Node
        def initialize(value)
            @value = value
            @next_node = null
            @list_size += 1
        end

        def value
        end

        def next_node_link
        end
    end

    def append(value)
        new_node = Node.new(value)
        #code to add node to the end of the list
    end

    def prepend(value)
        new_node = Node.new(value)
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
list