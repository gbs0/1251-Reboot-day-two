
require_relative 'app'
# Escreva um programa em Ruby, que seja resonsável por guardar uma lista de desejos de presentes.

# 0. Criamos uma lista inicial p/ guardar alguns items
gift_list = [{"name": "Playtation 5", "price": 4999}]

# Pseudo Código:
# 1. Mostrar ao usuário uma mensagem de boas vindas!
puts "⭐️ Welcome to Christmas list! 🎄"

loop do # Se repete enquanto o usuário não chegar no `exit` da linha 28 

  # 2. Mostra o menu de opções p/ o usuário
  puts "Which action you want to perform? [Type: list | add | delete | quit]"

  # 3. Guarda qual a opção escolhida pelo usuário
  user_option = gets.chomp.downcase

  # 4. Performa a ação escolhida pelo usuário (este método é responsável por chamar outros métodos).
  def dispatch(gift_list, user_option)
    case user_option
    when "list"
      list(gift_list) # Mostra no terminal, os items que foram inseridos dentro da lista de presentes.
    when "add"
      add(gift_list) # Adiciona o item novo na lista de presentes
    when "delete"
      puts "Deleting..."  
    when "quit"
      puts "Bye bye!"
      exit
    else
      puts "Invalid option! [Choose: list | add | delete | quit]"
    end
  end

  # 5. Chamamos a função dispatch p/ lidar com a escolha do user (invoca o método acima)
  dispatch(gift_list, user_option)

  # 6. Fazer o programa repetir enquanto o usuário não digitar 'quit'.
end

# 7. Implementar os métodos da lista de presentes (Add, list, delete)
# Toda a lógica responsável por manipular a lista, estará no arquivo app.rb
