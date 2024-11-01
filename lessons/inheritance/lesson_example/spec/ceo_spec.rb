require './lib/ceo'

RSpec.describe Ceo do

  describe "setup" do
    it "exists" do
      ceo = Ceo.new(15,20)
    end
    it "has base_salary and bonus attributes" do
      ceo = Ceo.new(15,20)
      expect(ceo.base_salary).to eq(15)
      expect(ceo.bonus).to eq(20)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    # Write tests to prove that a Ceo instance can have a Name and ID number, like any other Employee.
    it "has name and id" do
      ceo = Ceo.new("John", 23154)
      expect(employee.name).to eq("John")
      expect(employee.id).to eq(23154)
    end
    # Also, the CEO should be able to receive a total compensation. Write at least one test that proves they can access this method.
    it "can calculate a total compensation" do
      ceo = Ceo.new("John", 23154)
      expect(employee).to respond_to(:total_compensation)
    end
  end

end