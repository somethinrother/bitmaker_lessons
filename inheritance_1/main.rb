require_relative 'person'
require_relative 'instructor'
require_relative 'student'

nadia = Instructor.new("Nadia")
chris = Student.new("Chris")

puts nadia.teach
puts chris.learn

# nadia.learn won't work because the instructor class inherits from the
# person class. Neither Instructor or Person have the learn method, so
# an Instructor won't be able to learn.
