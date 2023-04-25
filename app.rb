# 7.1 Método 'Add':
# 7.2 Precisamos perguntar ao usuário qual o nome do presente
# 7.3 Perguntamos ao usuário o preço do item
# 7.4 Criar uma HASH que irá representar o presente na lista
# 7.5 Guardar o presente na lista de presentes
def add(gift_list)
  puts "What's the name of the item?" # 7.2 Precisamos perguntar ao usuário qual o nome do presente
  gift_name = gets.chomp
  
  puts "What's the price of the item?" # 7.3 Perguntamos ao usuário o preço do item
  gift_price = gets.chomp.to_i
  
  gift = {"name": gift_name, "price": gift_price} # 7.4 Criar uma HASH que irá representar o presente na lista
  
  # 7.5 Guardar o presente na lista de presentes
  gift_list << gift
end

# 8. Método 'List':
# 8.1 Receber a lista de presentes p/ mostrar na tela  
# 8.2 Mostrar os itens da lista (nome - preço) de forma ordenada e númerada
def list(gift_list)
  # 1 - Playstation 5 | $ 5000
  gift_list.each_with_index do |gift, index|
    puts "#{index + 1} - #{gift[:name]} | $ #{gift[:price]}"
  end
end