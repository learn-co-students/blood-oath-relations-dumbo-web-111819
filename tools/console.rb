require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
f1 = Follower.new('rob', 21, "dont kill people")
f2 = Follower.new('ray', 24, "love is peace")
f3 = Follower.new('rosie', 31, " kill all animals")
f4 = Follower.new('ronald', 64, " kill")
f5 = Follower.new('donald', 87, " kill all")
f6 = Follower.new('dosie', 53, " all animals")
f7 = Follower.new('dick', 2, " kill animals")
f8 = Follower.new('daisy', 34, " This kills all animals")

f9 = Follower.new('shemi', 4, " kill people")

c1 = Cult.new('Alpha Kappa Pi', 'New Orleans', 2012, "yes we kill people")
c2 = Cult.new('6th sense', 'west bubbbafuck', 2018, "I see dead people")
c3 = Cult.new('Gravediggers', 'west bubbbafuck', 2012, "we'll dig up yoour grave")

b1 = BloodOath.new(f1, c1)
b2 = BloodOath.new(f2, c2)
b3 = BloodOath.new(f3, c3)
b4 = BloodOath.new(f4, c1)
b5 = BloodOath.new(f4, c2)
b6 = BloodOath.new(f5, c2)
b7 = BloodOath.new(f5, c3)
b8 = BloodOath.new(f9, c3)
b9 = BloodOath.new(f8, c1)
b10 = BloodOath.new(f8, c2)
b11 = BloodOath.new(f6, c2)
b12 = BloodOath.new(f7, c3)
b13 = BloodOath.new(f6, c1)
b14 = BloodOath.new(f4, c3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
