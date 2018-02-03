# class Person
#   @@people = []
#   def initialize
#     @name = nil
#
#   end
#
#   def self.create
#     person = Person.new
#     person.name = gets.chomp
#     @@people << person
#   end
#
#   def self.people
#     @@people
#   end
#
#   def name=(name)
#     @name = name
#   end
#
#   def name
#     @name
#   end
#
#   def self.no_gregs
#     people.delete_if do |person|
#       person.name == "greg"
#     end
#   end
# end
#
# Person.create
# Person.create
# Person.create
# Person.create
#
# puts Person.people.inspect
# Person.no_gregs
# puts Person.people.inspect


random_object = Random.new
puts Random.inspect
