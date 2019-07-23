class EventCreator
	attr_accessor :title , :start_date, :duration, :attendees

	def initialititleze(title, start_date, duration, attendees)
			@title = title
			@start_date = start_date
			@duration = duration
			@attendees = attendees
	end
		def recupere
			puts "Salut, tu veux créer un événement? Cool!"
			puts "Commençon, Quel est le nom de l'événement"
			@title = gets.chomp
			puts "Super. Quand aura-t-il lieu?"
			@start_date = gets.chomp
			puts "Au top. Combien de temps va-t-il durer (en minutes) ? "
			@duration = gets.chomp.to_i
			puts "Génial. Qui va participer ? Balance leurs e-mails"
			@attendees = gets.chomp
		end
		puts "Super, c'est noté, ton évènement a été crée"

end
