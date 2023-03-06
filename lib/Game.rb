require_relative 'player'

class Game
    def initialize(title)
        @title=title
        @player = Array.new
    end
    
    attr_accessor:title
    
    def add_player(a_player)
        @player << a_player
        # @player.push(a_player)
    end

    def show
        puts "Player Size #{@player.size}\nDetails"
        @player.each do |pl|
            puts pl
            puts pl.w00t
            puts pl.blam
        end
    end
end

if __FILE__ == $0
    pl=Player.new("manoj",20)
    pl1=Player.new("Rohit",80)
    gm=Game.new("Captian")
    puts gm.title
    gm.add_player(pl)
    gm.add_player(pl1)
    gm.show
end