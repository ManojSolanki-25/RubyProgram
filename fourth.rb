puts "Welcome frnds"

n1="larry"
h1=60
n2="curly"
h2=125
n3="Moe"
h3=100
n4="shemp"
h4=90

name1 = "#{n1.capitalize} has a heath of #{h1}."
name2 = "#{n2.capitalize} has a heath of #{h2}."
name3 = "#{n3.capitalize} has a heath of #{h3}.".center(40,"*")
name4 = "#{n1.capitalize.ljust(25,".")}#{h4} health."
puts name1
puts name2
puts name3
puts name4
