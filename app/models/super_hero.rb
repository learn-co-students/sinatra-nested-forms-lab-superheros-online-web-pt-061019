class SuperHero 
    attr_accessor :name, :power, :bio

    SUPERHEROES = []

    def initialize(params)
        @name = params[:name]
        @power = params[:power]
        @biography = params[:bio]
        SUPERHEROES << self
    end

    def self.all
        SUPERHEROES
    end
end