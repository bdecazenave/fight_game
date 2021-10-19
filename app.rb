require 'bundler'
Bundler.require

#On fait appel aux fichiers qui nous intéressent
require_relative 'lib/game'
require_relative 'lib/player'

#On crée deux player
player1 = Player.new"José"
player2 = Player.new"Josiane"
# On lance une boucle qui ne s'arretera que si l'un des joueurs arrive à O
while player1.life_points > 0 && player2.life_points > 0
  puts "Voici l'état de chaque joueur\n\n"
  puts player1.show_state
  puts player2.show_state
  puts "passons à la phase d'attaque\n\n"
  puts player2.attacks(player1)
    if player1.life_points <= 0 || player2.life_points <= 0
    break
    else
      puts player1.attacks(player2)
    end
end
# on créé un objet de class qui s'appelle "superplayer" et on lui applique des méthodes héritées de Player et des méthodes de la class HumanPlayer
playerwithadvantage = HumanPlayer.new"Superplayer"
puts playerwithadvantage.show_state
puts playerwithadvantage.search_weapon
puts playerwithadvantage.search_health_pack
puts playerwithadvantage.show_state
