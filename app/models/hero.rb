class Hero
    attr_reader :power, :bio, :name
    @@heroes = []

    def initialize(params)
        @power =  params[:power]
        @bio = params[:bio]
        @name = params[:name]
        @@heroes << self
    end

    def self.all
        @@heroes
    end

end