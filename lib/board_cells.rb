class BoardCells 
   # variables d'instances permet de lire et de modifier 
  attr_accessor :position, :content

 # initialisation des cellules du morpion
 def initialize(position, content) 
    @position = position
    @content = content
  end
end


