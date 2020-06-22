class Student

    def initialize(student_name, student_cohort, student_favourite_language)
        @student_name = student_name
        @student_cohort = student_cohort
        @student_favourite_language = student_favourite_language
    end

    def student_name()
        return @student_name
    end

    def student_cohort()
        return @student_cohort
    end

    def update_student_name(new_name)
        @student_name = new_name
    end

    def update_student_cohort(new_cohort)
        @student_cohort = new_cohort
    end

    def student_talks()
        return "Hello"
    end

    def student_favourite_language()
        return "I love #{@student_favourite_language}"
    end
end