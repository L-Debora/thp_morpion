class Game 
 attr_accessor  :game_board, :players, :current_player

  # création d'un plateau et de deux joueurs 
 def initialize
    @board = Board.new
    @players = []
    @current_player_indice = 1
  end

  # message de bienvenue
  def welcome_screen
    puts "-"*46
    puts "| Bienvenue sur 'MORPION' !                  |"
    puts "| Le but du jeu est d'être le plus stratège !|"
    puts "-"*46
    puts ""
  end

  # Initialisation des joueurs
  def player_initialization 
    puts "Player 1 : Quel est ton pseudo ? Ton symbole est O"
    print "> "
    @players << Player.new(gets.chomp.to_s, "O")

    puts "Player 2 : Quel est ton pseudo ? Ton symbole est X"
    print "> "
    @players << Player.new(gets.chomp.to_s, "X")
  end 

  def rules_game
    puts "-"*65
    puts "| Voici les règles :                                             |"
    puts "| Les joueurs inscrivent tour à tour leur symbole sur une grille |"
    puts "| le premier qui parvient à aligner trois de ses symboles        |"
    puts "| horizontalement, verticalement ou en diagonale gagne           |"                                     
    puts "-"*65
    puts ""
  end


  #Créer les tours de jeu, vérifier si il y a un gagnant, ou si il y a match nul.
  def turn
    while @board.winning_game == false 

        puts "#{@players[0].name} c'est ton tour de jouer, mets ton #{@players[0].symbol} où tu le souhaites :"
        print "> "
        @board.who_plays(gets.chomp.to_s, player.symbol)

        puts "#{@players[1].name} c'est ton tour de jouer, mets ton #{@players[1].symbol} où tu le souhaites :"
        print "> "
        @board.who_plays(gets.chomp.to_s, player.symbol)

        if @A1.empty? == false || @A2.empty? == false || @A3.empty? == false || @B1.empty? == false || @B2.empty? ==    false || @B3.empty? == false || @C1.empty? == false || @C2.empty? == false || @C3.empty? == false
          puts "Cette cellule est déjà prise ! Fais un nouveau choix :"
          print "> "
          @board.who_plays(gets.chomp.to_s, player.symbol)
        end

          @board.show_board
          @board.who_win?
      end

      if @board.winning_game == true 
        puts "Félicitation #{player.name} tu as été plus stratège que ton adversaire !"
          
      elsif @board.equality_game == true 
        puts "Match nul !"
      end
  end 

  # Fontion orchestre 
  def perform
    welcome_screen
    player_initialization
    rules_game
    @board.show_board
    turn
  end
end