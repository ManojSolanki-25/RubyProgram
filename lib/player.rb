class Player
    def initialize(name,score)
        @name = name    
        @score = score
    end
    
    attr_accessor:name
    attr_accessor:score
  
    def blam
        "#{name} got blammed!"        
    end

    def w00t
        "#{name} got w00ted!"        
    end
    
    def to_s
        "I'm #{name} with a health of #{score-20} and a score of #{score}"
    end

end

if __FILE__ == $0
    pl1 = Player.new("Curly",130)
    pl2 = Player.new("Moe",65)
    pl3 = Player.new("Larry",103)
    # puts pl1
    # puts pl2
    # puts pl3
    play = [pl1,pl2,pl3]

    play.each do |ply|
        puts ply
        puts ply.blam
        puts ply.w00t
    end
end