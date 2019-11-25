require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("Dothraki", "Bronx", 1700, "Ride or Die!")
c2 = Cult.new("Cult of John Jones", "Jonestown", 1978, "Drink the koolaid!")
c3 = Cult.new("Heaven's Gate", "California", 1974, "Let's go to Heaven!")
c4 = Cult.new("Hell's Gate", "California", 1975, "Let's go to Hell!")


f1 = Follower.new("Johnny", 21, "YOLO")
f2 = Follower.new("Stanley", 20, "I'm too young for this ish")
f3 = Follower.new("Jago", 25, "Combo Breaker!")

o1 = f1.join_cult(c3, 2019)
o2 = f2.join_cult(c2, 2019)
o3 = f3.join_cult(c4, 2018)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
