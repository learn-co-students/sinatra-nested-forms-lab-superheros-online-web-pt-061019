class Hero
    attr_reader :power, :biography
    @@heroes = []

    def initialize(details)
        @name =  details[:power]
        @height = details[:biography]
        @@heroes << self
    end

    def self.all
        @@heroes
    end

end