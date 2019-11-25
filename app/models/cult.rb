class Cult
    attr_accessor  :name, :location, :founding_year, :slogan
    @@all = []
    def initialize (name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end
    def self.all
        @@all
    end
    def recruit_follower(follower)
        follower.cult = self
    end
    def self.cult_population
        @@all.count
    end
    def self.find_by_name(cult_name)
        Cult.all.find do |cult| 
            cult.name == cult_name
        end

    end

    def self.find_by_location(cult_location)
        Cult.all.find do |cult| 
            cult.location == cult_location
        end
        
    end
    def self.find_by_founding_year(founding_year)
        Cult.all.find do |cult| 
            cult.founding_year == founding_year
        end
        
    end
end


