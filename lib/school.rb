require 'pry'

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
        # binding.pry
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name 
        #if roster doesn't include grade, add grade and students name to values
        # if @roster.empty?
        #     @roster = {grade => [student_name]}
            # binding.pry
        #if roster includes grade, add students name
        # elsif @roster.keys.include?(grade)
        #     @roster[grade] << student_name
        # elsif !@roster.keys.include?(grade)
        #     @roster[grade] = [student_name]
    end


    def grade(grade)
     @roster[grade].include?(grade)
        # binding.pry
            @roster[grade]

    end

    def sort
     hash = {}
        @roster.each do |key, array|
            hash[key] = array.sort
         end
         hash
    end
end

# class Shoe
#   attr_accessor :color, :size, :material, :condition
#   attr_reader :brand

#   BRANDS = []

#   # binding.pry

#   def initialize(brand)
#     @brand = brand
#     # binding.pry
#     if !BRANDS.include?(brand)
#       BRANDS << brand
#     end
#   end

#   def cobble
#     self.condition = "new"
#     puts "Your shoe is as good as new!"
#   end

  

# end