#La je me suis cru malin en suivant un tuto pour un menu. Je n'arriverai pas à l'expliquer
class Menu
  attr_accessor :length_quit

  def initialize(*menu_args)
    @length_quit = menu_args
    @menu_args = @menu_args.length
  end

  def get_menu_choice(player)
    @menu_args.each_with_index do |item, index|
    puts "#{index + 1} #{item}"
    puts "Choisis l'action que tu souhaites réaliser"
    player_choice = gets.chomp.to_i
    return user_choice
  end

  menu = Menu.new("1 - chercher une meilleure arme", "2 - chercher à se soigner", "0 - Josiane a #{player2.show_state}", "1 - Josiane a #{player1.show_state}" "Quit")

  while ((choice = menu.get_menu_choice)!=menu.length_quit)
    case choice
    when "1"
      puts search_weapon
    when "2"
      puts search_health_pack
    when "3"
      puts playerwithadvantage.attacks(player2)
    when "4"
      puts playerwithadvantage.attacks(player1)
    end
  end
end
end
