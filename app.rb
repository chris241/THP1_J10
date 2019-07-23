require 'pry'

require_relative'lib/event.rb'
require_relative'lib/user.rb'

julie = User.new("julie@email.com", 35) #je crée un premier User
jean = User.new("jean@maimail.com", 22) #puis un second User

meeting = WorkEvent.new("2019-01-17 09:00", 70, "réunion de travail", [julie, jean])

puts "Voici l'age de l'utisateur #{julie.age}"
puts "Voici l'age de l'utisateur #{jean.age}"
puts meeting.to_s