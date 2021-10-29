# Vejamos então mais a fundo o nosso novo programa, perceba que as linhas
# iniciais começam com um sinal de cerquilha (#). Em Ruby, qualquer coisa 
# após um sinal de cerquilha é considerado um comentário e é ignorado pelo
# interpretador. A primeira linha do arquivo é um caso especial, em um 
# sistema operacional do tipo Unix, isto diz para o shell como executar o
# arquivo. O restante dos comentários só se encontra ali para clarificação.
# O nosso método diz_ola tornou-se um pouco mais complexo: Agora ele verifica
# a variável de instância @nomes para tomar decisões. Se for nil, só imprime
# três pontos. Não há razão para cumprimentar ninguém, certo?

# Dizer ola a todos

def diz_ola
  if @nomes.nil?
    puts "..."
  elsif @nomes.respond_to?("each")
    # @nomes é uma lista de algum tipo, iterar!
    @nomes.each do |nome|
      puts "Ola #{nome}!"
    end
  else
    puts "Ola #{@nomes}!"
  end
end



# Ciclos e Loops – as Iterações
# Se o objeto @nomes responde a each, isto significa que é algo sobre 
# o qual se pode iterar, assim, fazemos iterações sobre o mesmo e 
# saudamos cada pessoa à sua vez. Finalmente, se @nomes é outra coisa 
# qualquer, deixamos que se transforme numa string automaticamente e 
# fazemos a saudação padrão.

# each é um método que aceita um bloco de código e que depois o executa para 
# cada elemento numa lista, e o trecho entre do e end é exatamente um desses 
# blocos. Um bloco é como uma função anônima ou lambda. A variável entre barras
# verticais é o parâmetro para este bloco.
# O que acontece aqui é que para cada entrada na lista, nome recebe esse 
# elemento da lista e depois a expressão puts "Ola #{nome}!" é executada com
# esse nome.

# Vejamos o iterador com mais profundidade:

@nomes.each do |nome|
  puts "Ola #{nome}!"
end

# A maioria das outras linguagens varrem uma lista usando o loop for, 
# que em C se assemelha a algo como:

for (i=0; i<numero_de_elementos; i++)
{
  fazer_algo_com(elemento[i]);
}

# Isso funciona, mas não é muito elegante. Precisamos de uma variável descartável 
# semelhante a i, temos que determinar previamente qual o tamanho da lista e temos 
# que explicar como percorrer a lista. O modo de operar em Ruby é muito mais elegante,
# os pormenores ficam escondidos dentro do método each, tudo o que precisamos fazer 
# é dizer-lhe o que fazer com cada elemento. Internamente, o método each irá 
# essencialmente chamar yield "Albert", depois yield "Brenda" e depois yield "Charles",
# e assim sucessivamente.
  
  
