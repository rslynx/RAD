require_relative 'AnalisadorLinha'

file = File.open("texto.txt")
analises = Array.new

file.each do |line|
  # $. = getLineNumber
  analisadorFreq = AnalisadorLinha.new($., line)
  analises.push(analisadorFreq)
end

analises.each { |a| a.freqPalavra}
