require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new('Sam')
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

  end

  describe '#list_all_students' do

  end

  describe '#students_below' do

  end
end