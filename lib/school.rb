require "pry"
class School
    attr_accessor :school_name, :roster, :student_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

   def add_student(student_name, grade)
    if @roster[grade] ## check to see if key of grade exists
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
end

 def grade(number)
    @roster[number]
  end

  def sort
    roster.each do |grade, name|
      roster[grade] = name.sort
    end
end
end
binding.pry
  puts School.new("Piscataway High")
  
  