# require_relative 'bloodoath'
# require_relative 'follower'
require 'date'

class Cult
  attr_reader :name, :location, :founding_year, :slogan
  
  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self
  end

  def self.all
    @@all
  end

  def followers
    oaths_array = BloodOath.all.select { |oath| oath.cult == self }
    oaths_array.map { |oath| oath.follower }.uniq
  end

  def recruit_follower(follower)
    BloodOath.new(follower: follower, cult: self, initiation_date: Date.today)
  end

  def cult_population
    followers.count
  end

  def self.find_by_name(input)
    Cult.all.find { |cult| cult.name == input } 
  end

  def self.find_by_location(input)
    Cult.all.find { |cult| cult.location == input }
  end

  def self.find_by_founding_year(input)
    Cult.all.find { |cult| cult.founding_year == input }
  end

  def average_age
    ages = []
    followers.each { |follower| ages << follower.age }
    ages.sum/ages.length
  end

  def my_followers_mottos
  # prints out all of the mottos for this cult's followers
    mottos = []
    followers.each { |follower| mottos << follower.life_motto }
    mottos.each {|motto| puts motto}
  end

  def self.least_popular
  # returns the Cult instance who has the least number of followers :(
    Cult.all.select.min_by { |cult| cult.cult_population }
  end

  def self.most_common_location
    locations ={}
    Cult.all.each do |cult|
      if locations[cult.location]
        locations[cult.location] += 1
      else
        locations[cult.location] = 1
      end
    end
    locations.max_by {|k,v| v}[0]
  end

end