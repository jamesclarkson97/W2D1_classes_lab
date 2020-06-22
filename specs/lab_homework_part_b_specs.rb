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
        team.new_coach("Wimon")
        assert_equal("Wimon", team.coach())
    end
end