# code here!
class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.has_key? grade
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort

    @roster.map do |grade, students|
      students.sort!
    end

    return @roster
  end


end
