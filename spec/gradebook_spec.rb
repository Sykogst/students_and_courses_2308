require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new('Sam')
    @course1 = Course.new("Calculus", 2)
    @course2 = Course.new("Biology", 1)
    @course3 = Course.new("History", 3)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29}) 
    @student3 = Student.new({name: "Borgan", age: 20})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@gradebook).to be_instance_of(Gradebook)
    end

    it 'has attributes' do
      expect(@gradebook.instructor).to eq('Sam')
      expect(@gradebook.courses).to eq([])
    end
  end

  describe '#add_course' do
    it 'Adds courses to gradebook' do
      expect(@gradebook.courses).to eq([])
      @gradebook.add_course(@course1)
      expect(@gradebook.courses).to eq([@course1])

      @gradebook.add_course(@course2)
      @gradebook.add_course(@course3)
      expect(@gradebook.courses).to eq([@course1, @course2, @course3])
    end
  end

  describe '#list_all_students' do

  end

  describe '#students_below' do

  end
end