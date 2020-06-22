require('minitest/autorun')
require('minitest/reporters')
require_relative('../lab_homework_part_b')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestTeam < MiniTest::Test

    