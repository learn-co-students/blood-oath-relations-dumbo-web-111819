require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

kkk = Cult.new("kkk", "south", "1901","We hate everyone even our mothers")
free_masons = Cult.new("free_masons", "United States", "1850", "We appear under the dollar bill")
nazi = Cult.new("Nazi", "Germany", "1930", "We love blonde people")
# follower                        
monsur = Follower.new("monsur","36","enjoy life", nazi)
mohammed = Follower.new("mohammed", "19", "love", free_masons)
eric = Follower.new("Eric","37","I love milk", kkk)

kkk.recruit_follower(monsur)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
