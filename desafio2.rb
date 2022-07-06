expressao = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'
contador = 0 # Contador para os diamantes encontrados.
x = expressao.tr('.', '') # Cria uma nova string, trocando o '.' por string vazia, ou seja, removendo o '.'
while x.sub!(/<>/, '') # Dentro do bloco é iniciado a iteração no objeto usando um while.
  puts x               # Caso seja encontrado o diamante '<>', ele mostra o próprio objeto com o diamante extraído.
  contador += 1        # A cada diamante retirado da expressão, o contador incrementa com + 1.
end

puts "Foram encontrados #{contador} diamantes" # Por fim ele printa na tela a quantidade de diamantes encontrados.
