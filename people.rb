class Person

attr_accessor :name

  def initialize(name)
    @name = name
    puts "Hi, my name is #{ name }"
  end
end

class Instructor < Person
  def initialize(name)
    super(name)
  end

  def teach
    "Everything in Ruby is an Object!"
  end
end

class Student < Person
  def initialize(name)
    super(name)
  end

  def learn
    puts "I get it!"
  end
end

chris = Instructor.new("Chris")
christina = Student.new("Christina")
chris.teach
christina.teach

# Calling teach on the student (in this case christina) doesn't work
# because the method "teach" local to the class Instructor and
# the Student class does not inherit anything from the Instructor class,
# nor can it call on methods from the Instructor class.
