class Course
  attr_reader :name, :capacity, :students
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @full = false
  end

  def full?
    @full
  end

  def enroll(student)
    @students << student if @students.length < @capacity
    @full = true if @students.length == @capacity
  end
end
