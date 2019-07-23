class Player
attr_accessor :name, :life_points


#la fonction initialize  permet d'initialiser les premiers élements
def initialize(name_player)
	@name = name_player
	@life_points = life_points.to_i
	@life_points = 10
end

#la fonction show_state permet d'afficher l'état d'un joueur
def show_state
	puts "#{name} a #{@life_points} points de vie"
end

#la fonction gets_damage permet d'infliger des dégâts
def gets_damage(damage_got)
	@life_points -= damage_got
  	if @life_points <= 0
  		puts "Le joueur #{name} a été tué!"
end
end

#la fonction compute_damage permet d'infliger un dégât aléatoirement
def compute_damage
    return rand(1..6)
  end

#à l'attaque
def attacks(player_attacked)
	puts "Le joueur #{self.name} attaque le joueur #{player_attacked.name}"
  	damage_got = compute_damage
  	puts "Il lui inflige #{damage_got} points de dommages"
  	player_attacked.gets_damage(damage_got)
  end



def self.all
	return @@array_player
end

#héritage
class HumanPlayer < Player
attr_accessor :weapon_level

def initialize(name_player)
	@life_points = 100
	@weapon_level = weapon_level_ameliore.to_i
	@weapon_level = 1
end


#afficher l'état
def show_state
	puts "#{name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
end


#nombre aléatoire multiplié au niveau de l'arme
def compute_damage
    rand(1..6) * @weapon_level
end

#nouveau niveau de l'arme
def search_weapon(new_weapon_level)
	@new_weapon_level = rand(1..6)
	puts "Tu as trouvé un ustensile de catégorie #{@new_weapon_level}"

	if @new_weapon_level < @weapon_level
	 	@new_weapon_level == @weapon_level
	 	puts "C'est la crise, pas d'ustensile de qualité supérieure"
	else
		@new_weapon_level
		puts "Yallah, t'as un ustensile de qualité supérieur!"
	end
end



#pack santé
def search_health_pack(health_pack)
	if health_pack == 6

		puts "Suuuuuper, +80pts de vie en plus."
	elsif health_pack == 1

		puts "Tu n'as rien trouvé"
	else

		puts "+50pts, peux mieux faire"
	end
	end


end
