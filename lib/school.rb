# code here!
class School
#    attr_reader = :roster
    def roster
        @roster
    end

    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(student, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade].push(student)
    end
    
    def grade(input)
        @roster[input]
    end

    def sort
        hash = {}
        @roster.each do |key, array|
            hash[key] = array.sort
        end
        hash
    end
end