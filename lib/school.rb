# code here!
class School
    attr_reader :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade].push(student_name)
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.values.map { |grade|
            grade.sort!
        }
        @roster
    end
end
