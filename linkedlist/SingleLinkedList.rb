
=begin
Single linkedlist implementation that includes the following opertaions

1. Inserting elements to the start of list
2. Inserting elements to the end of list
3. Inserting elements at specific index of the list 
4. Showing specific element of list 
5. Removing element from list
6. Showing all elements of the list
7. Clearing linked list 
=end

class Node
    attr_accessor :data, :nextP

    def initialize(data, nextP = nil)
        @data = data
        @nextP = nextP
   end
end

class LinkedList 
    def initialize
        @head = nil
        @size = 0
    end

    #insertFirst: inserting elements to the start of linked list
    def insertFirst(data)
        @head = Node.new(data, @head)
        @size += 1
    end

    #insertLast: inserting elements to the end of linked list
    def insertLast(data)
        node = Node.new(data)
        current = {}
        if(!@head)
            @head = node
        else
            current = @head
            while(current.nextP)
                current = current.nextP
            end
            current.nextP = node
        end

        @size += 1
    end
    
    #insertAt: inserting elements at specific index of linked list
    def insertAt(data, index)
        if(index > 0 && index > @size)
            return
        end

        node = Node.new(data)
        current = @head
        previous = {}
        count = 0

        while count < index 
            previous = current
            count +=1
            current = current.nextP
        end
        node.nextP = current
        previous.nextP = node

        @size += 1
    end

    #getAt: showing specific element of linked list
    def getAt(index)
        current = @head
        count = 0

        if index === 0
            puts current.data
            return
        end

        while count < index
            current = current.nextP
            count += 1
        end
        puts current.data
    end

    #removeAt: removing element from linked list
    def removeAt(index)
        current = @head
        count = 0
        previous = {}
        while count < index
            previous = current
            count += 1
            current = current.nextP
        end
        previous.nextP = current.nextP
        
        @size -= 1
    end

    #printItems: showing all elements of linked list
    def printItems
        current = @head
        while current
            puts current.data
            current = current.nextP
        end
    end
    
    #clearAll: clearing the whole linked list
    def clearAll
        @head = nil
    end
end

ll = LinkedList.new

ll.insertFirst(100)
ll.insertFirst(200)

ll.insertLast(300)
ll.insertLast(400)

ll.insertAt(250, 2)

ll.getAt(1)

ll.removeAt(2)

ll.printItems

ll.clearAll

