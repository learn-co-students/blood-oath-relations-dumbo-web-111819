class Bloodoath
    attr_accessor :init_date, :cult, :follower
    @@all = []
    def initialize(follower, cult, init_date)
        @init_date = init_date
        @@all << self
    end

    def self.all
        @@all
    end
end