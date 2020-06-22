class Team

    attr_reader :team_name, :players
    attr_accessor :coach

    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
        @coach = coach
        @points = 0
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

    def find_player_by_name(missing_player)
        for player in @players
            if player == missing_player
                return player
            end
        end
        return nil
    end

    def update_score_total(result)
        if result == "win"
            return @points + 1
        end
        return @points
    end

end