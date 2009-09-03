class Boliche

  attr_accessor :pontuacao
  attr_accessor :frames

  def initialize(argv)
    @pontuacao = 0
    @frames = argv
    calcular_pontuacao
  end
  
  def calcular_pontuacao
    @frames.each_with_index do |frame,index|
      @pontuacao += (frame[0] + bonus(index))
      @pontuacao += frame[1] if frame[1]
    end
    
  end
  
  def bonus(indice)
    if indice == 8
      return @frames[indice+1][0]+ @frames[indice+1][1] if strike?(@frames[indice])
      return @frames[indice+1][0] if spare?(@frames[indice])
    else
      if @frames[indice][0] == 10   # strike
        if @frames[indice+1][0] == 10   # strike na proxima
          return 10 + @frames[indice+2][0] if indice < 7
          return 0 + @frames[indice+1][1] 
        else
          return @frames[indice+1][0] + @frames[indice+1][1]
        end
      else
        if @frames[indice][0] + @frames[indice][1] == 10
         return @frames[indice+1][0]
        end
      end
    end
    0
  end
  
  def spare?(frame)
    frame[0] < 10 && frame[0] + frame[1] == 10
    
  end
  
  def strike?(frame)
    frame[0] == 10
  end
  
end
