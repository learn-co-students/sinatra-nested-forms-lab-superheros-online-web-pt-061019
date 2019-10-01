class Team 
    attr_accessor :team_name, :motto

    TEAM = []

    def initialize(params)
        @team_name = params[:team_name]
        @motto = params[:motto]

        TEAM << self 
    end 

    def self.all
        TEAM
    end
end 