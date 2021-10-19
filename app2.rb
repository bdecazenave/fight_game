require 'bundler'
Bundler.require

# Voici les ressources que l'on appelle
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/menu'

# On put un message de bienvenue
puts "-------------------------------------------------------WELCOME IN HELL-------------------------------------------------------------------
Bienvenue sur 'ILS VEULENT TOUS MA POO '!
Le but du jeu est d'être le dernier survivant !"

# On crée 2 player bots et 1 player humain
player1 = Player.new"José"
player2 = Player.new"Josiane"
playerwithadvantage = HumanPlayer.new"Superplayer"
puts "------------------------------------------------------------------------------------------------------------------------------------------"
puts "Laisse moi te présenter les 2 combattants de cette partie :\n\n"
print "--> Lui c'est #{player1.name}, il a l'air posé comme ça mais il peut vite te refaire la tronche à la truelle 🧱 \n"
print "--> Elle c'est #{player2.name}, elle a déjà emasculé plusieurs hommes qui refusaient ses avances, si tu la croises, tu sais quoi faire 🍆\n"
puts "------------------------------------------------------------------------------------------------------------------------------------------"
# On injecte les ennemies de human player dans un tableau
all_enemies = []
all_enemies << player1
all_enemies << player2
# On les présente sous forme de tableau
puts "Comme je suis cool je les ai réuni dans un tableau pour toi, tiens, regarde en dessous \n #{all_enemies.inspect}"
puts "------------------------------------------------------------------------------------------------------------------------------------------"
#while playerwithadvantage.life_points > 0 && player1.life_points > 0 && player2.life_points > 0
puts "Voilà l'état actuel de ton joueur :\n\n"
print  playerwithadvantage.show_state
puts "------------------------------------------------------------------------------------------------------------------------------------------"
puts "👇👇 LE COMBAT COMMENCE ACCROCHE TA CEINTURE 👇👇"
puts "------------------------------------------------------------------------------------------------------------------------------------------"
# La j'essayais d'appeler mon menu mais j'ai pas réussi et il est tard ahah
puts playerwithadvantage.get_menu_choice
