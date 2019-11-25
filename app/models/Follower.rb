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

    def blood_oaths
        BloodOath.all.select {|b_o_instance| b_o_instance.follower == self}
    end

    def cults
 # * returns an `Array` of this follower's cults
        self.blood_oaths.map {|b_o_instance| b_o_instance.cult}
    end

    def join_cult(cult)
#   * takes in an argument of a `Cult` instance and adds this follower 
#   to the cult's list of followers
    BloodOath.new(self, cult)

    end

    def self.of_a_certain_age(age)
#   * takes a `Fixnum` argument that is an age and returns an `Array` of 
#   followers who are the given age or older
        self.all.select {|follower_instance| follower_instance.age >= age}
    end

    def my_cults_slogans
#   * prints out all of the slogans for this follower's cults
        self.cults.map{|cult_instance|  cult_instance.slogan}
    end

    def self.followers_array
        BloodOath.all.map{|b_o_instance| b_o_instance.follower}
    end

    def self.most_active
#   * returns the `Follower` instance who has joined the most cults
    
    self.followers_array.max_by{|follower_instance| followers_array.count(follower_instance)}
    end

    def self.top_ten
#   * returns an `Array` of followers; they are the ten most active followers
    #  self.followers_array.sort_by{|follower_instance| self.followers_array.count(follower_instance)}
    uniq_array = self.followers_array.uniq
    followers_w_cult_count = uniq_array.map{|follower_instance| [follower_instance, self.followers_array.count(x)]}
    sorted_array = followers_w_cult_count.sort_by{|follower_instance_array| follower_instance_array[1]}.reverse
    trimmed_array = sorted_array.map{|follower_instance_array| follower_instance_array[0]}
    trimmed_array.slice(0,10)
    
    end
end

