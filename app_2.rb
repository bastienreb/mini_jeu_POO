require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts"------------------------------------------------
	|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
	|Le but du jeu est d'être le dernier survivant !|
	-------------------------------------------------"

puts "Quel est ton prénom ?"
HumanPlayer = gets.chomp
user = HumanPlayer.new(first_name)

puts "Tes deux ennemis viennent d'entrer dans l'arêne: fais un maximum de bruit pour Josiane et José"
player1 = Player.new("Josiane")
player2 = Player.new("José")

@@array_playerss << player1, player2, user

while user.life_points >0 && (player1.life_points > 0 || player2.life_points >0)
	user.show_state
	puts "Quelle action campeone veux-tu exécuter?"
	puts "a- chercher un meilleur ustensile"
	puts "s- chercher à se soigner"
	puts " "
	puts "attaquer un joueur en vue:"
	print "0- " player1.show_state
	print "1-" player2.show_state

# answer = gets.chomp
#	if answer == a 
#		search_weapon
#	elsif answer == s 
#		search_health_pack
#	elsif action == 0
#		user.attacks(player2)
#		puts "Les autres joueurs t'attaquent !!!!!!!"
#		if player1.life_points > 0 
#			player1.attacks(user)
#			player2.attacks(user)
#end