class BloodOath
    attr_reader :follower, :cult
    attr_accessor :initiation_date
    @@all = []
    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        # @initiation_date = initiation_date
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.first_oath
        first_blood_oath = self.all.first
        first_blood_oath.follower
    end
    
end



######Dont forget the bonus !!!!!!!!!!!!!