class LinkedList
    attr_accessor :head, :tail
    def initialize
        @head = nil
        @tail = nil
    end

    class Node
        attr_accessor :value, :next_node
        def initialize(value)
            @value = value
            @next_node = nil
        end
    end

    def print_list
        if @head == nil
            puts "List is empty"
        elsif @head == @tail
            puts "List: ( #{@head.value} )"
        else
            puts "List: ( #{@head.value} ), 
                then: ( #{@head.next_node.value} ), 
                tail: ( #{@tail.value} )"
        end
    end
    #code to add node to the end of the list
    def append(value)
        new_node = Node.new(value)
        if @head == nil
            @head = new_node
            @tail = new_node
            @head.next_node = @tail
        else 
            @tail = new_node        
        end
    end

    #code to add node to the beginning of the list
    def prepend(value)
        new_node = Node.new(value)
        if @head == nil
            @head = new_node
            @tail = new_node
            @head.next_node = @tail
        else
            new_node = Node.new(value)
            temp_node = @head
            new_node.next_node = @head
            @head = new_node
        end
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
puts "The List starts off empty: "
list.print_list
puts "Let's use 'prepend' to add '1' to the beginning of the list: "
list.prepend(1)
list.print_list
