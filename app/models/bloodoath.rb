# require_relative 'follower'
# require_relative 'cult'

class BloodOath
attr_reader :cult, :follower, :initiation_date

  @@all = []

  def initialize(parameters_hash)
    @cult = parameters_hash[:cult]
    @follower = parameters_hash[:follower]
    @initiation_date = parameters_hash[:initiation_date] || nil

    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
  self.all.first.follower
  end

end