class School
  attr_accessor :roster, :school_name, :name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end 
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each_value { |names| names.sort! }
  end    
  
end