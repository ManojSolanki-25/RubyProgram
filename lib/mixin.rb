module M1
    VERSION = 1.0
   def self.name
        @name
   end
end

class A
    include M1
    def initialize(name)
        @name=name
    end
end

class B
    include M1
end

puts A.new(M1::VERSION)
# a=A.new(M1::VERSION)
# puts a