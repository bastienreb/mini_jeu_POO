require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


#initialisation des joueurs
player1 = Player.new("Josiane")
player2 = Player.new("José")



#début du combat
puts "Premier combat entre à ma droite #{player2.name} et à ma gauche #{player1.name}"
	while player1.life_points > 0 && player2.life_points > 0
  	puts "Voici l'état de chaque joueur:"
  	player1.show_state
		player2.show_state
		if (player2.life_points <= 0 || player1.life_points <= 0)
			break
		else
			puts "Let's fight!"
			player1.attacks(player2)
			break if player2.life_points <= 0

			player2.attacks(player1)
			break if player1.life_points <= 0
		end
  end


binding.pry