require 'csv'

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
  
  # 7.4 Criar uma HASH que irá representar o presente na lista, e seu estado inicial será comprado "false"
  gift = {"name": gift_name, "price": gift_price, "bought": false} 
  
  # 7.5 Guardar o presente na lista de presentes
  gift_list << gift
end

# 8. Método 'List':
# 8.1 Receber a lista de presentes p/ mostrar na tela  
# 8.2 Mostrar os itens da lista (nome - preço) de forma e númerada
def list(gift_list)
  gift_list.each_with_index do |gift, index|
    if gift[:bought] # true / false
        checkbox = "[X]"
    else 
        checkbox = "[ ]"
    end
    puts "#{index + 1} - #{checkbox} #{gift[:name]} | $ #{gift[:price]}"
  end
end

# 9. Método 'Delete':
# 9.1 Receber a lista de itens na qual será removido o item. 
# 9.2 Apresentar a lista com os itens atuais.
# 9.3 Perguntar ao usuário qual o indíce do item que irá apagar.
# 9.4 Deletar o item da lista que corresponde ao indice q/ o usuário selecionou
def delete(gift_list)
  puts "What's the item number you want to delete?"
  user_index = gets.chomp.to_i

  gift_list.delete_at(user_index - 1)
end

# 10. Método 'Mark':
# 10.1 Receber a lista de itens na qual terá o item marcado.
# 10.2 Apresentar a lista dos itens atuais.
# 10.3 Perguntar ao usuário, qual o indice do item a ser marcado.
# 10.4 Trocar o valor 'bought' de false p/ true no item comprado.
def mark(gift_list)
    puts "What item was bought?"
    user_index = gets.chomp.to_i

    # Em vez de deletarmos, precisamos buscar na lista, qual o item a ser marcado
    gift = gift_list[user_index - 1]
    gift[:bought] = true # Marcamos o atributo 'bought' do item da lista como verdadeiro
end

# 11. Metodo 'load_csv':
# 11.1 Receber um caminho de arquivo csv.
# 11.2 Abrir o CSV
# 11.3 P/ cada linha do CSV, vamos criar um hash p/ representar os items
# 11.4 Retornar uma lista com os items do CSV
def load_csv(file_path)
  gift_list = []
  CSV.foreach("data/gifts.csv", headers: :first_row) do |line|
    bought = line['Bought'] == "true"
    gift = {"name": line['Name'], "price": line['Price'].to_i, "bought": bought}
    gift_list << gift
  end
  gift_list
end

# 12. Método 'save_csv':
# 12.1 
# 12.2
# 12.3
# 12.4 


