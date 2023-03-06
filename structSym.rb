# class Snack
#     attr_reader:name,:id
#     def initialize(name,id)
#         @name =name
#         @id=id
#     end
# end

# s = Snack.new("manoj",78)
# puts s.name
# puts s.id

# ubove and below both code are same in below we add adition functionlity and use store multiple object of class

Snack = Struct.new(:name,:id) #:name and :id are symbol in ruby 

module SnackBar
    SNACK = [Snack.new("manoj",78),Snack.new("rachana ",111),
    Snack.new("manoj",78),Snack.new("yogesh",90),Snack.new("Rohit",124)]

    def self.random
        SNACK.sample
    end

    def self.itrate
        snackArray=[]
        SNACK.each do |name|
            snackArray.push("Name : #{name.name} Id : #{name.id}")
        end
        return snackArray
    end
end

# puts SnackBar::SNACK
# puts "here random snack "
# puts SnackBar.random
# puts "Itrate Snack "
snack_arr=SnackBar.itrate
snack_arr=snack_arr.sort_by{|p| [p.name,p.id]}
puts "manoj"
puts snack_arr
# snackArr[]=SnackBar.itrate
# snackArr[]=snackArr.sort
# snackArr.each do |var|
#     puts var
# end