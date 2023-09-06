class Gradebook
  attr_reader :instructor, :courses
  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    student_roster = {}
    # course_keys = @courses.map { |course| course.name }
    @courses.each do |course|
      student_roster[course.name] = course.students
    end
    student_roster
  end
end