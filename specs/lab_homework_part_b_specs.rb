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
        new_team = Team.new("Wildcats", ["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy"], "Simon")
        new_team.new_players("Bibidy-Bobidy")
        assert_equal(["Billy Bob", "Bobby Boy", "Boy Billy", "Bib-Bob Billy the Boy", "Bibidy-Bobidy"], new_team.players)
    end
end