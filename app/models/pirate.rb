class Pirate

    attr_accessor :name, :weight, :height

    @@all =[]

    def initialize(name, weight, height)
        @name = name
        @weight = weight
        @height = height
    end

    def self.all
        @@all
    end

end