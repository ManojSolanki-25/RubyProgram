class Entity
    @@instance = 0
    def initialize
        @@instance += 1
        @number = @@instance
    end

    def who_am_i
        "I'm #{@number} of #{@@instance}"
    end

    def total
        @@instance
    end

    def num
        @number
    end
end

entities = Array.new(9){ Entity.new }
puts entities[0].who_am_i
puts entities[1].who_am_i
puts entities[2].who_am_i
puts entities[3].who_am_i
puts "Manoj solanki"
puts entities[3].total
puts entities[3].num
puts entities[4].who_am_i
puts entities[5].who_am_i
puts entities[6].who_am_i
puts entities[7].who_am_i
puts entities[8].who_am_i
# puts entities[9].who_am_i
# puts entities[10].who_am_i
