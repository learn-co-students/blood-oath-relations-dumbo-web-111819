require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new('evilcult', 'nyc', 1886, 'we have cookies!')
cult2 = Cult.new('funcult', 'staten island', 1914, 'totally not forced fun')
cult3 = Cult.new('extracult', 'nyc', 2020, 'slogan3')

follower1 = Follower.new('jojo', 27, 'i like peas')
follower2 = Follower.new('sasa', 33, 'i hate everything')
follower3 = Follower.new('deedee', 3, 'what is a cult')
follower4 = Follower.new('f4', 4, 'slogan4')
follower5 = Follower.new('f5', 5, 'slogan5')
follower6 = Follower.new('f6', 6, 'slogan6')
follower7 = Follower.new('f7', 7, 'slogan7')
follower8 = Follower.new('f8', 8, 'slogan8')
follower9 = Follower.new('f9', 9, 'slogan9')
follower10 = Follower.new('f10', 10, 'slogan10')
follower11 = Follower.new('f11', 11, 'slogan11')
follower12 = Follower.new('f12', 12, 'slogan12')

oath1 = BloodOath.new(follower: follower1, cult: cult2, initiation_date: Date.today)

cult1.recruit_follower(follower1)
cult2.recruit_follower(follower2)
cult1.recruit_follower(follower1)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
