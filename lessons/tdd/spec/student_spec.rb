require './lib/student'
require 'rspec'

RSpec.describe Student do
  describe '#initialize' do
    it 'is a Student' do
      student = Student.new("Jesse", 1)

      expect(student).to be_a(Student)
    end

    it "has a name" do
      student = Student.new("Jesse", 1)

      expect(student.name).to eq("Jesse")
    end

    it "has a mod" do
      student = Student.new("Jesse", 1)

      expect(student.mod).to eq(1)
    end

    it "can have a different name" do
      student = Student.new("Sophocles", 1)

      expect(student.name).to eq("Sophocles")
    end

    it "has no skills by default" do
      student = Student.new("Sophocles", 1)

      expect(student.skills).to eq([])
    end
  end

  describe '#say_mod' do
    it 'can say what mod it is in' do
      student = Student.new("Sophocles", 1)

      expect(student.say_mod).to eq("I'm in Mod 1")
    end
  end

  describe '#learn' do
    it 'can learn a new skill' do
      student = Student.new("Sophocles", 1)

      student.learn("testing")

      expect(student.skills).to eq(["testing"])
    end

    it 'can learn more than 1 skill' do
      student = Student.new("Sophocles", 1)

      student.learn("testing")
      student.learn("mocks")

      expect(student.skills).to eq(["testing", "mocks"])
    end
  end

  describe '#promote' do
    it 'can move to next mod' do
      student = Student.new("Sophocles", 1)

      student.promote

      expect(student.say_mod).to eq("I'm in Mod 2")
    end
  end
end