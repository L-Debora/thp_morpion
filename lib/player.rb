class Player
 # variables d'instances permet de lire et de modifier 
  attr_accessor :name, :symbol

  # initialisation du joueur
  def initialize(name, symbol) 
    @name = name
    @symbol = symbol 
  end
end