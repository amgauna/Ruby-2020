# Módulos Agrupam Código por Tópicos
# Math é um módulo nativo para funções matemáticas. Os módulos têm dois papeis em Ruby. 
# Este é um desses papeis: agrupar métodos semelhantes sob um nome familiar. Math também 
# contém métodos como sin() e tan(). Depois segue-se um ponto. O que faz o ponto? 
# O ponto é como se identifica o receptor de uma mensagem. Qual é a mensagem? Neste caso é sqrt(9), 
# o que significa chamar o método sqrt, uma abreviatura em língua inglesa para “square root” 
# (raiz quadrada) com o parâmetro 9. O resultado desta chamada de método é o valor 3.0. 
# Se repararmos bem, o resultado não é apenas 3. Mas isso deve-se ao fato de que a raiz quadrada 
# de um número na maioria dos casos não é um inteiro e, assim sendo, o método retorna sempre
# um número de ponto flutuante. E se nós quisermos lembrar do resultado dessa matemática toda? 
# Podemos atribuir o resultado a uma variável.
    
  a = 3 ** 2
  b = 4 ** 2
  Math.sqrt(a+b)
