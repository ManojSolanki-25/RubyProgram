# module College
    
#     def self.branch(br)
#         case 
#             when br == "CSE"
#                 puts "Student of Computer Science Branch"
#             when br == "CE"
#                 puts "Student of Civil Engineering Branch"
#             when br == "ME"
#                 puts "Student of Macanical Engineering Branch"
#             else
#                 puts "Student of Electronic Engineering Branch"
#         end
#     end
# end

# branch = "ME"
# College.branch(branch)

module Trig
    PI=3
    def self.sinfunc(x)
        puts Math.sin(x)
    end
    def self.cosfunc(x)
        puts Math.cos(x)
    end
end

module Moral
    Bad =1
    Very_bad=0
    def self.sinfunc(x)
        if(x==0)
            puts "you are very bad."
        else
            puts "You are bad."
        end
    end
end

if __FILE__ == $0
    puts Trig::PI
    Trig.sinfunc(90)
    Moral.sinfunc(Moral::Very_bad)
end