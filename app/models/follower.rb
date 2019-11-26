# require_relative 'cult'
# require_relative 'bloodoath'
require 'date'

class Follower
  attr_reader :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def cults   # returns an Array of this follower's cults
    oaths_array = BloodOath.all.select do |oath|
      oath.follower == self
    end
    oaths_array.map do |oath|
      oath.cult
    end
  end

  def join_cult(cult)
    BloodOath.new(follower: self, cult: cult, initiation_date: Date.today)
  end

  def self.of_a_certain_age(num)
    Follower.all.select do |follower|
      follower.age >= num
    end
  end

  def my_cults_slogans
    cults.map { |cult| cult.slogan }
  end

  def self.follower_cults_hash
    follower_cults = {}
    self.all.each { |follower| follower_cults[follower] = follower.cults.count }
    follower_cults
  end

  def self.most_active
    follower_cults_hash.max_by{ |k,v| v }[0]
  end

  def self.top_ten
    follower_cults_hash.sort_by{ |k,v| -v }[0..9] 
  end # here used -v since sort_by usually goes least to most so -v reverses that order
      # [0..9] returns each from 0 to 9 including 9 ('...' excludes)

end

