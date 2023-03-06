puts "Welcome in Methods file"

def weekday
    curr=Time.new
    curr.sec
end

def current_time
    Time.new.strftime("%A , %b %d %Y")

end

def say_hello(name,health=100)
    "#{weekday} : I'm #{name.capitalize} with a health of #{health} as of #{current_time}"
end

puts say_hello("manoj",20)
puts say_hello("Rohit",21)
puts say_hello("amit")
puts say_hello("Yogesh",19)