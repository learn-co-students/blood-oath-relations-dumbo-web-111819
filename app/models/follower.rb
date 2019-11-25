class Follower
    attr_accessor :name, :age, :life_motto, :cult
    @@all = []
    def initialize(name, age, life_motto,cult)
        @name = name
        @age = age
        @life_motto = life_motto
        @cult = cult
        @@all << self
    end
    def self.all
        @@all
    end
    def join_cult (new_cult)
        self.cult = new_cult
    end
    def self.of_a_certain_age(new_age)
        @@all.select do |follower|
            follower.age >= new_age
        end
    end

end



