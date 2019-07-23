class Player
attr_accessor :name, :life_points



def initialize(name_player)
	@name = name_player
	@life_points = life_points.to_i
	@life_points = 10
end


def show_state
	puts "#{name} a #{@life_points} points de vie"
end

def gets_damage(damage_got)
	@life_points -= damage_got
  	if @life_points <= 0
  		puts "Le joueur #{name} a été tué!"
end
end


def compute_damage
    return rand(1..6)
  end

def attacks(player_attacked)
	puts "Le joueur #{self.name} attaque le joueur #{player_attacked.name}"
  	damage_got = compute_damage
  	puts "Il lui inflige #{damage_got} points de dommages"
  	player_attacked.gets_damage(damage_got)
  end






def self.all
	return @@array_player
end

end