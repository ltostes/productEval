# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.delete_all
Product.delete_all
Characteristic.delete_all
User.delete_all
ProductCharacteristic.delete_all
Evaluation.delete_all

Customer.create! ([
  {id: 1, name: "General", description: "Every product belongs to this."},
  {id: 2, name: "Let it Beer", description: "A micro but giant-hearted brewery."},
  {id: 3, name: "Shoes Shop", description: "We make your feet happy!"}
])

Product.create! ([
  {id: 1, name: "Laranjeiras", description: "Uma cerveja estilo WitBier de incrível sabor.", customer_id: 2},
  {id: 2, name: "Explosipa III", description: "Toda as sensações de uma Belgian IPA", customer_id: 2},
  {id: 3, name: "Saci Imperial", description: "O choque de uma Imperial Stout com o requinte brasileiro", customer_id: 2},
  {id: 4, name: "Crocs", description: "Confort at your feet.", customer_id: 3},
  {id: 5, name: "Hugo Boss", description: "Simply the shoes.", customer_id: 3}
])

Characteristic.create! ([
  {id: 1, name: "Geral", evaluable: true, description: "Overall", customer_id: 1},
  {id: 2, name: "Visual", evaluable: true, description: "Apelo visual da cerveja", customer_id: 2},
  {id: 3, name: "Espuma", evaluable: true, description: "Qualidade da espuma, em todos os sentidos", customer_id: 2},
  {id: 4, name: "Aroma", evaluable: true, description: "A instigância do aroma da cerveja", customer_id: 2},
  {id: 5, name: "Sabor", evaluable: true, description: "O sabor, é claro", customer_id: 2},
  {id: 6, name: "Amargor", evaluable: true, description: "E o amargor? Interessante ou 'tolerável'?", customer_id: 2},
  {id: 7, name: "After-taste", evaluable: true, description: "Aquele 'gostinho' do depois da cerveja.", customer_id: 2},
  {id: 8, name: "Design", evaluable: true, description: "What it looks like", customer_id: 3},
  {id: 9, name: "Confort", evaluable: true, description: "What it feels like", customer_id: 3},
  {id: 10, name: "Cost-benefit", evaluable: true, description: "Is it worth it?", customer_id: 3},
])

#User.create! ([
#  {id: 1, name: "Lucas", surname: "Tostes", about: "Um entusiasta cervejeiro", customer_id: 2, email: "lucasrmtostes@gmail.com"},
#  {id: 2, name: "Clarice", surname: "Cunha", about: "Uma cervejeira casual", customer_id: 2},
#  {id: 3, name: "Bruno", surname: "Hashimoto", about: "Descobriu as craft-breweries dos EUA", customer_id: 2},
#  {id: 4, name: "Clarice", surname: "Cunha", about: "Shoes are my passion.", customer_id: 3},
#  {id: 5, name: "James", surname: "Wattson", about: "Simple minded fellow", customer_id: 3}  
#])

ProductCharacteristic.create! ([                                                                                                                                                                                                                                   
  {id: 1, product_id: 1, characteristic_id: 1},                                                                                                                                                                                                                     
  {id: 2, product_id: 2, characteristic_id: 1},                                                                                                                                                                                                                     
  {id: 3, product_id: 3, characteristic_id: 1},                                                                                                                                                                                                                     
  {id: 4, product_id: 4, characteristic_id: 1},                                                                                                                                                                                                                     
  {id: 5, product_id: 5, characteristic_id: 1},                                                                                                                                                                                                                     
  {id: 6, product_id: 1, characteristic_id: 2},                                                                                                                                                                                                                     
  {id: 7, product_id: 1, characteristic_id: 3},                                                                                                                                                                                                                     
  {id: 8, product_id: 1, characteristic_id: 4},                                                                                                                                                                                                                     
  {id: 9, product_id: 1, characteristic_id: 5},                                                                                                                                                                                                                     
  {id: 10, product_id: 1, characteristic_id: 6},                                                                                                                                                                                                                     
  {id: 11, product_id: 1, characteristic_id: 7},                                                                                                                                                                                                                     
  {id: 12, product_id: 2, characteristic_id: 2},                                                                                                                                                                                                                     
  {id: 13, product_id: 2, characteristic_id: 3},                                                                                                                                                                                                                     
  {id: 14, product_id: 2, characteristic_id: 4},                                                                                                                                                                                                                     
  {id: 15, product_id: 2, characteristic_id: 5},                                                                                                                                                                                                                     
  {id: 16, product_id: 2, characteristic_id: 6},                                                                                                                                                                                                                     
  {id: 17, product_id: 2, characteristic_id: 7},                                                                                                                                                                                                                     
  {id: 18, product_id: 3, characteristic_id: 2},                                                                                                                                                                                                                     
  {id: 19, product_id: 3, characteristic_id: 3},                                                                                                                                                                                                                     
  {id: 20, product_id: 3, characteristic_id: 4},                                                                                                                                                                                                                     
  {id: 21, product_id: 3, characteristic_id: 5},                                                                                                                                                                                                                     
  {id: 22, product_id: 3, characteristic_id: 6},                                                                                                                                                                                                                     
  {id: 23, product_id: 3, characteristic_id: 7},
  {id: 24, product_id: 4, characteristic_id: 8},
  {id: 25, product_id: 4, characteristic_id: 9},
  {id: 26, product_id: 4, characteristic_id: 10},
  {id: 27, product_id: 5, characteristic_id: 8},
  {id: 28, product_id: 5, characteristic_id: 9},
  {id: 29, product_id: 5, characteristic_id: 10}
])

#Evaluation.create! ([
#  {id: 1, score: 4, comment: "Uma grande Cerveja!", product_characteristic_id: 1, user_id: 1}
#])
 