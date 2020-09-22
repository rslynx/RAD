class AnalisadorLinha
  attr_accessor :numLinha, :cont, :palavras

  def initialize(numLinha, cont)
    @numLinha = numLinha
    @cont = cont
  end

  def freqPalavra
    freqHash = Hash.new(0)
    palavras = cont.split
    palavras.each { | p | freqHash[p] +=1 }
    freqHash.each { |key, value|
      if (value == freqHash.values.max)
        puts "Linha #{numLinha} - Palavra com maior ocorrência: #{key} Numero de ocorrências: (#{value})"
      end
    }
  end
end


