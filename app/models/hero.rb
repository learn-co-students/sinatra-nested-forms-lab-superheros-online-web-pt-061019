class Hero

    attr_accessor :name, :power, :bio

    def initialize(details)
        @name = details[:name]
        @power = details[:power]
        @bio = details[:bio]
    end 

end 