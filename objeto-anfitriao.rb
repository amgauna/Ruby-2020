# Agora vamos criar e usar um objeto Anfitrião:

g = Anfitriao.new("João")
g.diz_ola
g.diz_adeus

# Objeto por Baixo da Pele
# As variáveis de instância escondem-se dentro do objeto. 
# Não estão assim tão bem escondidas, podem ser vistas quando se 
# inspeciona o objeto e há outras formas de lhes acessar, mas o 
# Ruby é fiel aos bons costumes da programação orientada a objetos 
# mantendo os dados o mais privados possíveis.
# Então, que métodos estão disponíveis para os objetos Anfitrião?

Anfitriao.instance_methods

# Bem, estes são todos os métodos para os objetos Anfitrião, 
# uma lista completa, incluindo os que estão definidos nas 
# super-classes de Anfitrião.

["method", "send", "object_id", "singleton_methods",
    "__send__", "equal?", "taint", "frozen?",
    "instance_variable_get", "kind_of?", "to_a",
    "instance_eval", "type", "protected_methods", "extend",
    "eql?", "display", "instance_variable_set", "hash",
    "is_a?", "to_s", "class", "tainted?", "private_methods",
    "untaint", "diz_ola", "id", "inspect", "==", "===",
    "clone", "public_methods", "respond_to?", "freeze",
    "diz_adeus", "__id__", "=~", "methods", "nil?", "dup",
    "instance_variables", "instance_of?"]

# Se só quisermos listar os métodos definidos para a classe Anfitrião, 
# podemos pedir-lhe que não inclua os métodos dos seus ancestrais 
# passando-lhe o parâmetro false, que significa que não queremos os
# métodos definidos pelos seus ancestrais.

Anfitriao.instance_methods(false)

# Há mais coisas a explorar. Vejamos a que métodos pode responder o
# nosso objeto Anfitrião:
# Assim sabemos que to_s (que significa “converter algo em uma string”, 
# um método que está definido por padrão para todos os objetos), mas 
# que não reconhece nome como método.

g.respond_to?("nome") 
false

g.respond_to?("diz_ola")
true

g.respond_to?("to_s")
true



