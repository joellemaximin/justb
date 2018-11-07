User.create!(email: 'joelle.maximin@gmail.com', password: 'admin23')
User.create!(email: 'justbeauty9111@gmail.com', password: 'admin123')


#SNIPPETS LIST
Snippet.create(key: 'homepage_header', body: '<h1>Bienvenue sur JustBeauty</h1>')

Snippet.create(key: 'produit_list_header', body: '<h1>Nos produits</h1>')

Snippet.create(key: 'footer',
	body: '<p><small>2018 JustBEauty - Guadeloupe / Coiffure && Magasin de soin pour cheveux / Tel: 0590 20 51 66</small></p>')

Snippet.create!(key: 'about', body: 'BLABLABLA')

Snippet.create!(key: 'horaires_index', body: '<h1>Nos photos</h1>')


#CATEGORIE LIST

Category.create!(title: 'Perruques')

Category.create!(title: 'Tissages')

Category.create!(title: 'Maquillages')

Category.create!(title: 'Accesoires')

Category.create!(title: 'Produits capillaire')


#PRODUCTS LIST


Product.create!(title: 'Tissage madagascar', description: 'Synthetique', composition: 'Fibre nature et Synthetique',category_id: 4, price: 50)

Product.create!(title: 'Brosse', description: 'Bois pointu', composition: 'Quelque',category_id: 2, price: 50)

Product.create!(title: 'Coiffant chauffant', description: 'machine', composition: 'Quelque',category_id: 2, price: 150)

Product.create!(title: 'Elastiques(100)', description: 'Petit et epais', composition: 'caoutchouc', category_id: 2, price: 9)

Product.create!(title: 'Crayon noir', description: 'Synthetique', composition: 'Quelque chose', category_id: 3, price: 50)

Product.create!(title: 'Eyelashes', description: 'Synthetique', composition: 'Quelque chose', category_id: 3, price: 50)

Product.create!(title: 'Poudres Make-up', description: 'Synthetique', composition: 'Quelque chose', category_id: 3, price: 50)

Product.create!(title: 'Veste', description: 'Synthetique', composition: 'Quelque chose', category_id: 2, price: 50)

Product.create!(title: 'Chapeau', description: 'Synthetique', composition: 'Quelque', price: 50, category_id: 2)

Product.create!(title: 'Gel coiffant', description: 'Synthetique', composition: 'Quelque', price: 50, category_id: 1)

Product.create!(title: 'Graisse', description: 'Synthetique', composition: 'Quelque', price: 50, category_id: 1)

Product.create!(title: 'Huile de coco', description: 'Synthetique', composition: 'Quelque', price: 50, category_id: 1)

Product.create!(title: 'Huile de ricin', description: 'Synthetique', composition: 'Quelque', price: 50, category_id: 1)

Product.create!(title: 'Teinture noir', description: 'Synthetique', composition: 'Quelque', price: 50, category_id: 1)
