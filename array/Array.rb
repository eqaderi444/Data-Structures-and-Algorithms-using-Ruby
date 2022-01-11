# push, pop, shift and unshift opertaions on array to insert and remove element

class Array
     
    def initialize
        @list = []    
    end

    def insertEnd(data)
        @list.push(data)
    end

    def insertFront(data)
        @list.unshift(data)
    end

    def removeEnd
        @list.pop        
    end

    def removeFront
        @list.shift
    end

    def printArray
        @list.each {|item| puts item}
    end
end

arr = Array.new

# inserting elements to the end of an array
arr.insertEnd(9)
arr.insertEnd(10)

# inserting elements to the start of an array
arr.insertFront(4)
arr.insertFront(3)

# removing element from the end of an array
arr.removeEnd

# removing element from the start of an array

arr.removeFront

# showing the elements of an array
arr.printArray