# Add the 2 requires you will need here
# We use RSpec for testing <- ruby gem (small bits of pre-written functionality)
# 1. require rspec gem in our test file
# 2. intall rspec gem

# run tests with 'rspec spec'

require 'rspec'
require './lib/student'

describe Student do # tell rspec which class we are trying to test
  describe '#initialize' do # describing the method we are testing
    it 'is an instance of student' do # describes a behavior of the method we are testing
      # write the code to initialize a new student object
      student = Student.new('Penelope')

      expect(student).to be_a(Student)
    end
    # test it has a name
    it 'has a name' do 
      student = Student.new('Penelope') # setup
         # execution student.name
      expect(student.name).to eq('Penelope') # assertion
    end
    # test it has cookies
    it 'has no cookies by default' do
      student = Student.new('Penelope')

      expect(student.cookies).to eq([])
    end
  end
  describe '#add_cookie' do
    # test it can add cookies
    it 'can add cookies' do
      student = Student.new('Penelope') # setup

      student.add_cookie('Chocolate Chunk') # execution
      student.add_cookie('Snickerdoodle') # execution

      expect(student.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"]) # assertion
    end
  end
end
