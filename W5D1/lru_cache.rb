class LRUCache

    def initialize(size)
        @size = size
        @cache = Array.new
    end

    def count
        @cache.length
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el
        elsif count > @size
            @cache.unshift
            @cache << el
        else
            @cache << el

        end
    end

    def show
        p @cache
    end

    private
    # helper methods go here!



end