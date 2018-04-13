class Appletree
    attr_accessor :age
    attr_reader :height, :apple_count
    def initialize age, height, apple_count
        @age = age
        @height = height
        @apple_count = apple_count
    end

    def year_gone_by
        @age += 1
        @height = (@height * 0.1).ceil + @height
        @apple_count += 2
    end

end
