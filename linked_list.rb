require_relative 'node'

class LinkedList
    attr_accessor :head, :tail, :node_counter
    def initialize
        @head = nil
        @node_counter = 0
        @tail = nil
    end

    def get_value(node)
        if node.next_node != nil
            p node.value
            get_value(node.next_node)
        else
            node.value
        end
    end

    def print_list
        if @head == nil
            p "List is empty"
        else
            # print all the Nodes created starting with the head and ending with the tail
            p self.get_value(@head)
        end
    end
    #code to add node to the end of the list
    def append(value)
        new_node = Node.new(value)
        @node_counter += 1
        if @head == nil
            @head = new_node
        elsif @tail == nil 
            @tail = new_node
            @head.next_node = @tail
        else
            @tail.next_node = new_node
            @tail = new_node
        end
    end

    #code to add node to the beginning of the list
    def prepend(value)
        new_node = Node.new(value)
        @node_counter += 1
        if @head == nil
            @head = new_node
        else
            temp_node = @head
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
        @tail.value
    end

    def at(index)
        if index == 1
            @head = @head.next_node
            @node_counter -= 1
        elsif index == node_counter
            @tail = nil
            @node_counter -= 1
        else            
            #delete that node from the list
            #connect the node in front of it to the node after it
            # def get_value(node)
            #     if node.next_node != nil
            #         p node.value
            #         get_value(node.next_node)
            #     else
            #         node.value
            #     end
            # end
        end
    end

    def pop
        #removes the last node from the list
    end

    def contains?(value)
        #returns true if the passed in value is in the list. Otherwise returns false
    end

    def find(value)
        #returns the index of the node containing value, or nil if not found
    end

    def to_s
        #represent your LinkedList objects as strings, so you can print them out and preview them in the console. 
        # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    end
end

list = LinkedList.new
# puts "The List starts off empty: "
# list.print_list
# puts "Let's use 'prepend' to add '5' to the beginning of the list: "
 list.prepend(5)
# list.print_list
# puts "Then we'll use 'append' to add '9' to the end of the list: "
 list.append(9)
# list.print_list
# puts "Let's use 'prepend' again to add '3' to the beginning of the list"
 list.prepend(3)
# list.print_list
# puts "What happens if we use 'prepend' again to add '1' to the beginning of the list?"
 list.prepend(1)
 list.append(10)
# list.print_list
# list.size

# p list
list.print_list
list.size
p list
p list.tail
list.at(5)
list.print_list
list.size
p list
p list.tail
