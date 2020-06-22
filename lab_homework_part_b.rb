class Team

    attr_reader :team_name, :players
    attr_accessor :coach

    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
        @coach = coach
    end

    # def team_name()
    #     return @team_name
    # end

    # def players()
    #     return @players
    # end

    # def coach()
    #     return @coach
    # end

    # def new_coach(new_name)
    #     @coach = new_name
    # end

    def new_players(new_player)
        @players.push(new_player)
    end
end