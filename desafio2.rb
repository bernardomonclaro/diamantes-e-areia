expressao = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
contador = 0 # contador para os diamantes encontrados.
exp = expressao.tr('.', '') # cria uma nova string, trocando o . por string vazia, ou seja, removendo o .
exp.tap do |expressao_sem_areia| # o tap retorna a própria string sem o . anterior como objeto, ficando disponível para ser usado dentro do bloco
  while expressao_sem_areia.sub!(/<>/, '')
    puts expressao_sem_areia  # dentro do bloco é iniciado a iteração no objeto usando um while, e caso seja encontrado o diamante '<>' ele mostra o próprio objeto com o diamante extraído e o contador para mostrar que foi encontrado e incrementado
    contador += 1
  end
end
puts "Foram encontrados #{contador} diamantes"
