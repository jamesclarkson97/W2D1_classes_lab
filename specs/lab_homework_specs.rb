require('minitest/autorun')
require('minitest/reporters')
require_relative('../lab_homework')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudent < MiniTest::Test

    def test_student_name()
        student = Student.new("James", "E41")
        assert_equal("James", student.student_name())
    end

    def test_student_cohort()
        student = Student.new("David", "E32")
        assert_equal("E32", student.student_cohort())
    end

    def test_update_student_name()
        student = Student.new("James", "E41")
        student.update_student_name("Jimothy")
        assert_equal("Jimothy", student.student_name())
    end
end