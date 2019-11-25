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

    def recruit_follower(follower)
#   * takes in an argument of a `Follower` instance and adds them to 
#   this cult's list of followers
        BloodOath.new(follower, self)
    end
    

    def blood_oaths
        #selects all blood oaths associated with this cult
        BloodOath.all.select {|b_o_instance|b_o_instance.cult == self}
    end
    def cult_population
#   * returns a `Fixnum` that is the number of followers in this cult
        self.blood_oaths.count

    end

    def self.find_by_name(name)
#   * takes a `String` argument that is a name and returns a `Cult` 
#   instance whose name matches that argument
        self.all.find{|cult_instance| cult_instance.name == name}

    end

    def self.find_by_location(location)
#   * takes a `String` argument that is a location and returns an 
#   `Array` of cults that are in that location
        self.all.select{|cult_instance| cult_instance.location == location}
    end

    def self.find_by_founding_year(founding_year)
#   * takes a `Fixnum` argument that is a year and returns 
#   all of the cults founded in that year
        self.all.select{|cult_instance| cult_instance.founding_year == founding_year}
    end

    def average_age
#   * returns a `Float` that is the average age of this cult's followers
        age_sum = self.blood_oaths.sum {|b_o_instance| b_o_instance.follower.age}
        age_sum / self.blood_oaths.count.to_f

    end

    def my_followers_mottos
#   * prints out all of the mottos for this cult's followers
        self.blood_oaths.map {|b_o_instance| b_o_instance.follower.life_motto}
    end

    def self.cult_array
        BloodOath.all.map{|b_o_instance| b_o_instance.cult}

    end

    def self.least_popular
#   * returns the `Cult` instance who has the least number of followers :(
    # self.all.min_by{|cult_instance| BloodOath.all.count(cult_instance) }
    self.cult_array.min_by{|cult_instance| cult_array.count(cult_instance)}
    end

    def self.most_common_location
#   * returns a `String` that is the location with the most cults
    locations = BloodOath.all.map{|b_o_instance| b_o_instance.cult.location}
    locations.max_by{|location_element| locations.count(location_element)}
    end
end



######Dont forget the bonus !!!!!!!!!!!!!