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
  