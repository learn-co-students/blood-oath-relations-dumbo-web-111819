class Cult
    attr_reader :name, :location, :founding_yr, :slogan
    @@all = []
    @@follower_list = []
    def initialize(name, location, founding_yr, slogan)
        @name = name    
        @location = location    
        @founding_yr = founding_yr  
        @slogan = slogan    
        @@all << self
    end

    def recruit_follower(follower)
        @@follower_list << follower        
    end

    def cult_population
        follower_list
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        Cult.all.find do |cult_instance|
            cult_instance.name == name
        end
    end

    def self.find_by_location(location)
        Cult.all.select do |location_instance|
            location_instance.location == location
        end
    end

    def self.find_by_founding_year(year)
        Cult.all.select do |cult_instance|
            cult_instance.founding_yr == year
        end
    end
    
end