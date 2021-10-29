# Blocos, o Grande Brilho das Faces do Ruby
# O verdadeiro poder dos blocos é quando tratam de algo mais complexo do que listas. 
# Além de tratar dos detalhes simples dos pormenores dentro do método, também pode 
# tratar da instalação, da limpeza e dos erros – tudo de maneira escondida das 
# preocupações do usuário.

# Diz adeus a todo mundo

def dizer_adeus
  if @nomes.nil?
    puts "..."
  elsif @nomes.respond_to?("join")
    # Juntar os elementos da lista com vírgulas
    puts "Adeus #{@nomes.join(", ")}.  Voltem em breve!"
  else
    puts "Adeus #{@nomes}.  Volta em breve!"
  end
end


# O método diz_adeus não usa o método each, em vez disso verifica se @nomes responde 
# ao método join e se sim, usa-o. Caso contrário limita-se a imprimir a variável como
# string. Este método não se preocupa com o tipo da variável, só confiar em quais 
# métodos suporta é conhecido como “Duck Typing”, no sentido de que “se anda como um
# pato, e faz quá quá como um pato então…”. A vantagem disto é não restringir 
# desnecessariamente os tipos de variáveis suportados. Se alguém aparecer com um novo
# tipo de classe de lista, desde que essa lista implemente o método join com a mesma 
# semântica que as outras listas, então tudo funcionará conforme o planejado.

# Executando o Script
# Então, essa é a classe MegaAnfitrião, o resto do arquivo só chama os métodos nessa 
# classe. Existe um último truque para verificarmos, que é a linha:

if __FILE__ == $0
  
# __FILE__ é uma variável mágica que contém o nome do arquivo atual. $0 é o nome do
# arquivo usado para iniciar o programa. Esta verificação diz: “Se este é o arquivo 
# principal a ser usado, então…”, isto permite que um arquivo seja usado como 
# biblioteca e nesse contexto não executar código, mas caso o arquivo seja usado como
# executável então executa esse código.
  
  
  
