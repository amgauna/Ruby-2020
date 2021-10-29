# Modificando Classes – Nunca é Tarde Demais
# E se quisermos ver ou alterar o nome? Ruby oferece uma forma fácil 
# de fornecer acesso às variáveis de um objeto.
# O uso de attr_accessor definiu dois novos métodos para nós: nome  
# para obter o valor e nome= para alterá-lo.

class Anfitriao
  attr_accessor :nome
end

# Em Ruby, podemos abrir uma classe novamente e alterá-la. As mudanças 
# estarão presentes em quaisquer objetos criados e até mesmo nos objetos 
# existentes dessa classe. Então vamos criar um novo objeto e vamos 
# brincar com a sua propriedade @nome.

g = Anfitriao.new("Pedro")

g.respond_to?("nome")
true

g.respond_to?("nome=")
true

g.diz_ola
Ola Pedro
  
g.nome="Matilde"
"Matilde"

g.nome
"Matilde"

g.diz_ola
Ola Matilde


