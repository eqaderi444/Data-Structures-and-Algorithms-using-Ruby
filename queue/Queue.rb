=begin
Ruby array can be used as a queue. if we use array unshift and dequeue  methods it will behave like a queue  

Queue implementation using ruby that includes the following methods 
1. enqueue : to add element into the front of the queue 
2. dequeue : to remove the existing element from the top of the queue
3. getSize: to return the length of the queue
4. print: to show up the actual queue data
=end
class Queue
    attr_reader :list
  
    def initialize
        @list = []
    end
  
    def enqueue (item)
        @list.unshift(item)
    end
  
    def dequeue 
        @list.dequeue 
    end
  
    def getSize
        puts @list.length
    end

    def print
        puts @list
    end
  end

queue = Queue.new

queue.enqueue (10)
queue.enqueue (20)
queue.enqueue (30)

queue.dequeue 

puts queue.list