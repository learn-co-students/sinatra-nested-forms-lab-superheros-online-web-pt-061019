class Team
    attr_reader :name, :motto
    TEAMS = []

    def initialize(details)
        @name =  details[:name]
        @motto = details[:motto]
        TEAMS << self
    end

    def self.all
        TEAMS
    end

end