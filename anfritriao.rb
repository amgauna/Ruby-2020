# Evoluindo para um Anfitrião
# E se quisermos criar um verdadeiro anfitrião, um que se lembre do nosso nome, 
# nos dê as boas vindas e nos trate com o devido respeito? Podemos usar um objeto
# para isso. Então vamos criar a classe “Anfitrião”.

class Anfitriao
  def initialize(nome = "Mundo")
    @nome = nome
  end
  def diz_ola
    puts "Olá #{@nome}!"
  end
  def diz_adeus
    puts "Adeus #{@nome}, volte sempre."
  end
end
  
  
