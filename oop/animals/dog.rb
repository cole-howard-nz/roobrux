require_relative "animal.rb"

class Dog < Animal
  attr_accessor :breed

  def initialize name, breed
    @breed = breed
  end
end