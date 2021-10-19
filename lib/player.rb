
# Création d'une class "Player" qui va embarquer des attributs de class, des méthodes de class et des variables de class
class Player
attr_accessor :name, :life_points, :damage

# Cette méthode vient initialiser les attributs de la class Player
  def initialize(name)
    @name = name
    @life_points = 10
  end
# Cette méthode permet d'indiquer l'état de santé. Couplée au nom d'un user il permet de connaitre son état de santé
  def show_state()
    puts "#{name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
  end
# Cette méthode était initialement prévu pour infliger des dégats. Elle est passée en variable dans la méthode suivante.
  def gets_damage(dice_result)
    @life_points = @life_points - dice_result
      if @life_points <= 0
        puts "Le joueur #{@name} a été tué"
      end
  end
# Cette méthode permet de lancer une attaque. Une fois l'attaque réalisée, le score retirée vient s'imputer sur le résultat global
  def attacks(player)
    puts "le joueur #{@name} attaque le joueur #{player.name}"
    damage = compute_damage
    puts "il lui inflige #{damage} points de dégâts"
    player.gets_damage(damage)
  end

# Cette méthode permet de lancer le dé. Le résultat du dé est ensuite utilisée dans la variable 'damage' de la méthode précédente
  def compute_damage()
    return rand(1..6)
  end
end

#Création d'une class qui hérite de la class player
class HumanPlayer < Player
attr_accessor :weapon_level, :life_points

# Comme pour la class précédente, on initialise les attributs de class
  def initialize(name)
    @name = name
    @weapon_level = 1
    @life_points = 100
  end

#Une méthode qui lance le dé et permet de définir la nouvelle arme du HumanPlayer
  def compute_damage()
    rand(1..6) * @weapon_level
  end
#Une méthode qui lance le dé et permet de définir la nouvelle arme du HumanPlayer. Si la nouvelle arme est meilleure, elle est prise par le user et son weapon_level est mis à jour
  def search_weapon()
    random_weapon = rand(1..6)
    puts "#{@name} tu as trouvé une arme de niveau #{random_weapon} !"
    if random_weapon < weapon_level
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    else
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
      @weapon_level = random_weapon
    end
  end
# Idem mais pour un pack de vie. Selon le coup de dé, le pack reçu évolue et le niveau de santé du user est mis à jour(selon conditions)
  def search_health_pack
    random_health = rand(1..6)
    if random_health == 1
      puts "Tu n'as rien trouvé..."
      @life_points
    elsif random_health >=2 && random_health <=5 && (life_points+50) <= 100
      puts "Bravo, tu as trouvé un pack de +50 points de vie on augmente ta vie en conséquence !"
      @life_points = @life_points + 50
    elsif random_health >=6 && (life_points + 80) <= 100
      puts "Waow, tu as trouvé un pack de +80 points de vie on augmente ta vie en conséquence !"
      @life_points = @life_points + 80
    end
  end
end
