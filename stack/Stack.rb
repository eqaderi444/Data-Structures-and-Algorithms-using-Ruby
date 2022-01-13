=begin
Ruby array can be used as a stack. if we use array push and pop methods it will behave like a stack  

Stack implementation using ruby that includes the following methods 
1. push: to add element to the top of the stack 
2. pop: to remove the existing element from the top of the stack
3. getSize: to return the length of the stak
4. print: to show up the actual queue stack

=end

class Stack
    attr_reader :list
  
    def initialize
      @list = []
    end
  
    def push(item)
      @list.push(item)
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

  stack = Stack.new

  stack.push(1)
  stack.push(2)
  stack.push(3)

  stack.pop

  puts stack.list