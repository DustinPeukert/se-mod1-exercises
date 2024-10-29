require "pry"
# For clarity, un-comment each #binding.pry to verify your assumptions against the user_spec test. Use the questions in comments to guide your exploration.


class User
  @@all_users = []

  attr_reader :name
  def initialize(name)
    @name = name
    @@all_users << self
    #binding.pry ##What is the @name property?
  end

  def say_hello
    #binding.pry ##What will be output here?
    "Hello, " + @name
  end

  def self.create_multiple(users)
    users.map do |user|
      new_user = User.new(user[:name])
      #binding.pry ## What is new_user? What properties does it have?
    end
  end

  def self.all_users
    @@all_users
  end

  def self.change_users_name(user, new_namename)
    user.name = new_name
  end
end
