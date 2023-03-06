
require_relative 'modules'

class GameTurn 
    include Trig
    def initialize
        puts "default constructor"        
    end

    def name
        puts "Manoj Solanki"
        puts Trig::PI*10.0
    end
end

# puts "Vishal Soni"
# GameTurn.name
# puts "Vishal Yadav"

# require_relative 'game_module

gm=GameTurn.new
gm.name
