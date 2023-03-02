# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

gifts = [
  'Abridor de latas', 'Espremedor de alho', 'Espremedor de batata', 'Peneiras', 'Concha', 'Escumadeira',
  'Colher grande', 'Pegador de sorvete', 'Kit pizza', 'Facas tamanho diversos', 'Tábua de carne', 'Escorredor de louças',
  'Lixinho de pia', 'Porta-temperos', 'Luva para forno', 'Vasilhas plásticas e Tupperwares', 'Fôrmas refratárias',
  'Fôrmas de bolo / pudim / quadrada', 'Ralador de legumes / queijo', 'Jogo de copos',
  'Apoio para panela quente', 'Suporte para guardanapo de papel (avulsos)', 'Jogo de taças', 'Jarra de suco',
  'Jogo de xícaras', 'Escovinha de vaso sanitário', 'Cestinho de lixo', 'Tapetinho', 'Saboneteira',
  'Suporte pra sabonete liquido', 'Toalhas de banho', 'Toalhas de rosto', 'Vassoura', 'Rodo',
  'Pá de lixo', 'Pregadores de roupa', 'Cesto de lixo grande', 'Cesto para colocar roupa suja',
  'Pano de chão', 'Suporte para sabão em pó', 'Bacias', 'Baldes', 'Fronhas avulsas', 'Lençol avulso',
  'Tapetinho', 'Pratinhos para sobremesa', 'Mantegueira', 'Galheteiro (suporte para sal, pimenta)', 'Açucareiro'
]

puts "Creating #{gifts.size} gifts"
gifts.each do |gift_name|
  Gift.find_or_create_by(name: gift_name)
  print('.')
end
print('done!')
