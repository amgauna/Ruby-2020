# Reservando Espaços numa String
# O que significa a expressão #{name}? É a forma de inserir alguma coisa numa string. 
# Aquilo que se encontra entre chaves transforma-se numa string (se já não o for) e é
# substituído naquele ponto da string. Podemos também usar isto para ter a certeza de
# que o nome de alguém se apresenta em letra maiúscula:

def h(nome = "Mundo")
puts "Olá #{nome.capitalize}!"
end  
h

h "chris"
  
