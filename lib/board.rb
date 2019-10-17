
class Board
  # variables d'instances permet de lire et de modifier corresponds aux 9 cellules 
  attr_accessor :array_cells, :winning_game, :equality_game

  # initialisation du plateau de jeu
  def initialize
    @A1 = BoardCells.new("A1", " ") # parametre de boardcells
    @A2 = BoardCells.new("A2", " ")
    @A3 = BoardCells.new("A3", " ")
    @B1 = BoardCells.new("B1", " ")
    @B2 = BoardCells.new("B2", " ")
    @B3 = BoardCells.new("B3", " ")
    @C1 = BoardCells.new("C1", " ")
    @C2 = BoardCells.new("C2", " ")
    @C3 = BoardCells.new("C3", " ")

    @array_cells = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]

    @winning_game = false
    @equality_game = false
  end

  # demande au bon joueur ce qu'il souhaite faire
  # change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  def who_plays(cells_choose, player_symbol)
    if @array_cells.map { |choice| choice.position == cells_choose 
      choice.content = player_symbol
    }
    end
  end

  #qui gagne ou match nul  
  def who_win?
    count_turn = 0

    while count_turn <= 0 
        
      if @A1.content == "O" && @A2.content == "O" && @A3.content == "O" && @A1.content == "X" && @A2.content == "X" &&      @A3.content == "X"
        @winning_game = true 
      end

      if @B1.content == "O" && @B2.content == "O" && @B3.content == "O" && @B1.content == "X" && @B2.content == "X" &&       @B3.content == "X"
        @winning_game = true 
      end

      if @C1.content == "O" && @C2.content == "O" && @C3.content == "O" && @C1.content == "X" && @C2.content == "X" &&      @C3.content == "X"
        @winning_game = true 
      end

      if @A1.content == "O" && @B1.content == "O" && @C1.content == "O" && @A1.content == "X" && @B1.content == "X" &&      @C1.content == "X"
        @winning_game = true 
      end

      if @A2.content == "O" && @B2.content == "O" && @C2.content == "O" && @A2.content == "X" && @B2.content == "X" &&      @C2.content == "X"
        @winning_game = true 
      end

      if @A3.content == "O" && @B3.content == "O" && @C3.content == "O" && @A3.content == "X" && @B3.content == "X" &&      @C3.content == "X"
        @winning_game = true 
      end

      if @A1.content == "O" && @B2.content == "O" && @C3.content == "O" && @A1.content == "X" && @B2.content == "X" &&      @C3.content == "X"
        @winning_game = true 
      end

      if @A3.content == "O" && @B2.content == "O" && @C1.content == "O" && @A3.content == "X" && @B2.content == "X" &&      @C1.content == "X"
        @winning_game = true 
      end

      count_turn += 1
    end

    if count_turn == 9 
      equality_game = true
    end
  end
  

  # Creation d'un plateau de jeu
  def show_board
    
    puts "   1   2  3"
    puts " a #{@A1.content} | #{@A2.content} | #{@A3.content}"
    puts "   ---------"
    puts " b #{@B1.content} | #{@B2.content} | #{@B3.content}"
    puts "   ---------"
    puts " c #{@C1.content} | #{@C2.content} | #{@C3.content}"

  end 
end