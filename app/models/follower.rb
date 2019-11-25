class Follower
    attr_reader :name, :age, :motto

    @@all = []
    @@cult_list = []
    def initialize(name, age, motto)
        @name = name
        @age = age
        @motto = motto
        @@all << self
    end

    def cults
        
    end

    def self.all
        @@all
    end

    def join_cult(cult)
        cult.recruit_follower(self)
        @@cult_list << cult
    end

    def self.of_a_certain_age
        
    end
end