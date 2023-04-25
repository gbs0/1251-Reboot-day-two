require 'open-uri'
require 'nokogiri'
# Implementar uma busca de itens pela internet

# 1. Definimos qual a URL inicial da pesquisa
# 2. Pergunta qual será o item de busca do usuário
# 3. Acessa a URL e recebe os resultados
# 4. Converter o documento HTML (parse) p/ Nokogiri (fazer o .search nos elementos)
# 5. Buscamos no documento, qual o nome do item e o preço atual
# 6. Mostra na tela os 10 primeiros resultados
# 7. Pergunta qual o indíce do item a ser importado
# 8. Buscamos através do indice, qual o objeto a ser inserido na lista
# 9. Inserimos o objeto em formato de hash na lista.
def search(gift_list)
    puts "What's the item you are looking for?"
    user_choice = gets.chomp
    url = "https://www.etsy.com/search?q=#{user_choice}"
    request = URI.open(url).read
    html_doc = Nokogiri::HTML.parse(request)

    results = html_doc.search(".wt-height-full")

    results.each_with_index do |item, index|
        name = item.search(".v2-listing-card__title").text.strip
          # price = item.search(".wt-text-title-01 lc-price").text.strip
        puts "#{index + 1} | #{name}"
    end
    
    puts "What's the item you want to import?"
    user_index = gets.chomp.to_i

    item_to_import = results[user_index - 1]

    gift = {"name": item_to_import.search(".v2-listing-card__title").text.strip, "price": 9999, "bought": false}

    gift_list << gift
end