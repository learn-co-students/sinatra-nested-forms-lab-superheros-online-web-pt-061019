class Hero
    attr_reader :name, :power, :biography

    @@all = []

    def initialize(details)
        @name = details[:name]
        @power = details[:power]
        @biography = details[:biography]
        @@all << self
    end

    def self.all
        @@all
    end
end