# Implementing stack

class Stack

    
    def initialize
      @stack_array = Array.new
    end

    def push(el)
      @stack_array.push(el)
    end

    def pop
      @stack_array.pop
    end

    def peek
        @stack_array.last
    end

  end


  class Queue

    def initialize
        @queue_array = Array.new
    end

    def enqueue(el)

        @queue_array.unshift(el)

    end

    def dequeue

        @queue_array.pop

    end

    def peek

        @queue_array.last

    end

  end


  class Map
    
    
    attr_reader :map_array

    def initialize

        @map_array = Array.new 


    end

    # Create a new key-value pair or update
    # The value for a pre-existing key
    def set(key, value)

        return map_array << [key,value] if map_array.empty?

        map_array.each.with_index do |array, i_1|
            array.each.with_index do |ele, i_2|
                if map_array[i_1][0] == key # Determines if key exist
                    return map_array[i_1][1] = value # Sets key to value if exist
                end
            end
        end

        return map_array.push([key,value])


    end


    def get(key)

        map_array.each do |array|
            if array[0] == key
                return array[1]
            else
                return nil
            end

        end


    end

    def delete(key)


        map_array.each.with_index do |array,i|
            if array[0] == key
                map_array.delete_at(i)
            end
        end

    end


    def show

        @map_array

    end


  end


  map = Map.new
  map.set(3, "b")
  p map.map_array
  map.set(3,"c")
  p map.map_array
  map.set(4,"d")
  p map.map_array
  map.delete(4)
  p map.map_array

 






