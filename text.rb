# module Foo
#     @name = "ROhit"
   
#     attr_accessor :name
  
#     def self.hello(raj)
#       "hello, I'm #{@name}"
#     end
#   end
  
# #   Foo.name = "Tom"
#   puts Foo.hello("manoj")        
#   #puts Foo.new.hello     
  
# class Foo

#     @@var = "foo"
  
#     def self.var
#       @@var
#     end
#   end
  
#   puts Foo.var  # => "foo" (as expected)
  
#   class Object
#     @@var = "object"
#   end
  
#   puts Foo.var  # => "object" (!)

# num = 2 
# num1 = -5
# num.upto(num1) { |i| print i," "}


# 3.times do |num,num1| 
#   puts "#{num*2} and #{num1*5}" 
# end

# h={1=>"manoj", 2=>"raja"}
# puts h
# h.each_key {|key| puts key}
# puts h.has_key?(1)

#module Manoj
 #  @@hash = Hash.new 
   
 #   @@hash.inspect
 # end
   
 # def self.add
 #    @@hash = { 'a'=>10,'b'=>20}
 # end
   
 #  def self.show
 #    @@hash.each do|key,value| 
 #        puts "Key : #{key}  and Value : #{value}"
 #     end
 #  endputs

#Manoj.add
#Manoj.show

class A 
	class_variables :x
	attr_accessor :x
end

class B < A 
end 

class C < B

end


 A.x 


