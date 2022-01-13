=begin
Ruby array can be used as a queue. if we use array unshift and pop methods it will behave like a queue  

Queue implementation using ruby that includes the following methods 
1. preInsert: to add element into the front of the queue 
2. pop: to remove the existing element from the top of the queue
3. getSize: to return the length of the queue
4. print: to show up the actual queue data
=end
class Queue
    attr_reader :list
  
    def initialize
        @list = []
    end
  
    def preInsert(item)
        @list.unshift(item)
    end
  
    def pop
        @list.pop
    end
  
    def getSize
        puts @list.length
    end

    def print
        puts @list
    end
  end

queue = Queue.new

queue.preInsert(10)
queue.preInsert(20)
queue.preInsert(30)

queue.pop

puts queue.list