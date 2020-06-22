require('minitest/autorun')
require('minitest/reporters')
require_relative('../lab_homework_part_a')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudent < MiniTest::Test

    def test_student_name()
        student = Student.new("James", "E41", "Ruby")
        assert_equal("James", student.student_name())
    end

    def test_student_cohort()
        student = Student.new("David", "E32", "Python")
        assert_equal("E32", student.student_cohort())
    end

    def test_update_student_name()
        student = Student.new("James", "E41", "Ruby")
        student.update_student_name("Jimothy")
        assert_equal("Jimothy", student.student_name())
    end

    def test_update_student_cohort()
        student = Student.new("David", "E32", "Python")
        student.update_student_cohort("G18")
        assert_equal("G18", student.student_cohort())
    end

    def test_student_talks()
        student = Student.new("James", "E41", "Ruby")
        assert_equal("Hello", student.student_talks())
    end


    def test_student_favourite_language()
        student = Student.new("David", "E32", "Python")
        assert_equal("I love Python", student.student_favourite_language())
    end

end