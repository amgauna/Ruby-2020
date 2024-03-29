# Saudando a Tudo e a Todos, MegaAnfitriao não Esquece Ninguém!
# De qualquer modo este Anfitrião não é assim tão interessante, 
# ele só consegue trabalhar com uma pessoa de cada vez. E se 
# tivéssemos uma classe MegaAnfitriao que pudesse saudar o mundo
# inteiro, uma pessoa ou uma lista inteira de pessoas?
# Vamos escrever isto num arquivo em vez de usar diretamente o 
# interpretador interativo do Ruby (IRB).
# Para sair do IRB, digite “quit”, “exit” ou simplesmente 
# pressione “Control+D”.

#!/usr/bin/env ruby

class MegaAnfitriao
  attr_accessor :nomes

  # Criar o objecto
  def initialize(nomes = "Mundo")
    @nomes = nomes
  end

  # Dizer ola a todos
  def diz_ola
    if @nomes.nil?
      puts "..."
    elsif @nomes.respond_to?("each")
      # @nomes é uma lista de algum tipo,
      # assim podemos iterar!
      @nomes.each do |nome|
        puts "Ola #{nome}"
      end
    else
      puts "Ola #{@nomes}"
    end
  end

  # Dizer adeus a todos
  def diz_adeus
    if @nomes.nil?
      puts "..."
    elsif @nomes.respond_to?("join")
      # Juntar os elementos à lista
      # usando a vírgula como separador
      puts "Adeus #{@nomes.join(", ")}. Voltem em breve."
    else
      puts "Adeus #{@nomes}. Volta em breve."
    end
  end

end


if __FILE__ == $0
  mg = MegaAnfitriao.new
  mg.diz_ola
  mg.diz_adeus

  # Alterar o nome para "Diogo"
  mg.nomes = "Diogo"
  mg.diz_ola
  mg.diz_adeus

  # Alterar o nome para um vector de nomes
  mg.nomes = ["Alberto", "Beatriz", "Carlos",
    "David", "Ernesto"]
  mg.diz_ola
  mg.diz_adeus

  # Alterar para nil
  mg.nomes = nil
  mg.diz_ola
  mg.diz_adeus
end

# Salve este arquivo como “ri20min.rb”, e execute-o com o comando 
# “ruby ri20min.rb”. O resultado deverá ser:


