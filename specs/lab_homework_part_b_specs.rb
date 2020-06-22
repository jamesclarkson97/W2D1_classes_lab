require('minitest/autorun')
require('minitest/reporters')
require_relative('../lab_homework_part_b')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestTeam < MiniTest::Test

    def test_team_name()
        team = Team.new("Wildcats", ["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], "Simon")
        assert_equal("Wildcats", team.team_name())
    end

    def test_players()
        team = Team.new("Wildcats", ["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], "Simon")
        assert_equal(["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], team.players())
    end

    def test_coach()
        team = Team.new("Wildcats", ["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], "Simon")
        assert_equal("Simon", team.coach())
    end

    def test_new_coach()
        team = Team.new("Wildcats", ["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], "Simon")
        team.coach = "Wimon"
        assert_equal("Wimon", team.coach())
    end

    def test_new_player()
        team = Team.new("Wildcats", ["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], "Simon")
        team.new_players("Bibidy-Bobidy")
        assert_equal(["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy", "Bibidy-Bobidy"], team.players())
    end

    def test_find_player_by_name_fail()
        team = Team.new("Wildcats", ["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], "Simon")
        team.find_player_by_name("Bibby Boy")
        assert_nil(team.find_player_by_name("Bibby Boy"))
    end

    def test_find_player_by_name_pass()
        team = Team.new("Wildcats", ["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], "Simon")
        team.find_player_by_name("Billy Bob")
        assert_equal("Billy Bob", team.find_player_by_name("Billy Bob"))
    end

    def test_update_score_total_win()
        team = Team.new("Wildcats", ["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], "Simon")
        team.update_score_total("win")
        assert_equal(1, team.update_score_total("win"))
    end

    def test_update_score_total_lose()
        team = Team.new("Wildcats", ["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], "Simon")
        team.update_score_total("lose")
        assert_equal(0, team.update_score_total("lose"))
    end
end