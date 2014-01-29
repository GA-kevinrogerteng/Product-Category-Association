products = []
products << Product.create(name: 'Laser', description: 'Shoots lights')
products << Product.create(name: 'Cabbage Patch', description: 'Something to play with')
products << Product.create(name: 'Dinosaur', description: '4 legged creature')
products << Product.create(name: 'Fishing Rod', description: 'To catch fish')
products << Product.create(name: 'Candy', description: 'This is food!')

categories = []
categories << Category.create(name: 'Guns', description: '5 and above')
categories << Category.create(name: 'Dolls', description: 'Mostly for girls')
categories << Category.create(name: 'Figurines', description: 'Made in China')
categories << Category.create(name: 'Adults', description: 'Adult stuff')

categories[0].products << products[-1]
categories[0].products << products[-2]
categories[1].products << products[0]
categories[1].products << products[1]
categories[2].products << products[3]
categories[2].products << products[4]
categories[3].products << products[4]
categories[3].products << products[5]
categories[4].products << products[-1]
categories[4].products << products[-2]