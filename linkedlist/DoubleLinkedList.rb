=begin
Doubly Linked List Implementaion that includes the following opertaions

1.  insertFirst: inserting items to the start of a list
2.  insertEnd: inserting items to the end of a list
3.  insertAt: insert item to the list at specific index
4.  removeFirst: removing item from the beginning of the list
5.  removeEnd: remove item from the end of the list
6.  removeAt: removing item at specific index from the list
7.  getAt: retrieving an item of a specific index of the list
8.  updateItem: updating item at specific index of the list
9.  reverseItems: reversing the whole list
10. printItems: showing all the single items of the list

=end

class Node
    attr_accessor :data, :next_node, :prev_node
    def initialize(data, prev_node = nil, next_node = nil)
        @data = data
        @prev_node = prev_node
        @next_node = next_node
    end
end

class DoubleLinkedList
    def initialize
        @head = nil
        @tail = nil 
        @size = 0
    end

    # insertFirst: inserting items to the start of a list
    def insertFirst(data)
        new_node = Node.new(data)
        if @size == 0
            @head = new_node
            @tail = new_node
        else
            
            @head.prev_node = new_node
            new_node.next_node = @head
            @head = new_node
        end
        @size += 1 

    end

    #insertEnd: inserting items to the end of a list
    def insertEnd(data)
        new_node = Node.new(data)
        if @size == 0
            @head = new_node
            @tail = new_node
        else
            
            @tail.next_node = new_node
            new_node.prev_node = @tail
            @tail = new_node
        end
        @size += 1 
    end

    #insertAt: insert item to the list at specific index
    def insertAt(data, index)

        return insertFirst(data) if index === 0
        return insertEnd(data) if index === @size
        return if index > @size

        new_node = Node.new(data)
        current = @head
        count = 0
        previous = {}
        while count < index
            previous = current
            count += 1
            current = current.next_node
        end

        previous.next_node = new_node
        new_node.next_node = current
        new_node.prev_node = previous
        current.prev_node = new_node
        current = new_node

        @size +=1
    end

    #removeEnd: remove item from the end of the list
    def removeEnd
        @tail = @tail.prev_node
        @tail.next_node = nil  

        @size -= 1
    end

    #removeFirst: removing item from the beginning of the list
    def removeFirst
        @head = @head.next_node
        @head.prev_node = nil
        @size -= 1

    end

    #removeAt: removing item at specific index from the list
    def removeAt(index)
        return removeFirst if index === 0
        return removeEnd if index === @size - 1
        return if index > @size

        current = @head
        count = 0
        previous = {}

        while count < index
            previous = current
            count +=1
            current = current.next_node
        end
        
        previous.next_node = current.next_node
        current.next_node.prev_node = current.prev_node
        current = nil
    end

    #getAt: retrieving an item of a specific index of the list
    def getAt(index)

        return if index > @size - 1

        targetItem = @head
        count = 0
        while count < index && targetItem
        
            targetItem = targetItem.next_node
            count += 1
        end
        puts targetItem.data
    end

    #updateItem: updating item at specific index of the list
    def updateItem(data, index)
        targetItem = @head
        count = 0

        while count < index && targetItem
            targetItem = targetItem.next_node
            count +=1
        end
        
        if !!targetItem
            targetItem.data = data
        else
            return
        end
    end

    #reverseItems: reversing the whole list
    def reverseItems
        temp = @head
        @head = @tail
        @tail = temp
        count = 0
        
        while count < @size
            prev = temp.next_node
            temp.next_node = temp.prev_node
            temp.prev_node = prev
            temp = prev

            count += 1
        end
    end

    #printItems: showing all the single items of the list
    def printItems 
        current = @head
        
        while current
            data = current.data ? current.data : "nil"
            prev_node = current.prev_node ? current.prev_node.data : "nil"
            next_node = current.next_node ? current.next_node.data : "nil"
            puts "Data: #{data}, prev: #{prev_node}, next: #{next_node}"
            current = current.next_node
        end
    end
end

dll = DoubleLinkedList.new

# to test every method that how it works just uncomment it

# dll.insertEnd(1)

# dll.insertEnd(2)
# dll.insertEnd(3)


# dll.insertFirst(0)

# dll.insertAt(1.5, 2)
# dll.reverseItems


# dll.removeEnd

# dll.removeFirst

# dll.removeAt(2)

# dll.getAt(2)

# dll.updateItem(1.6, 2)

# dll.printItems
