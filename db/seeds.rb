# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Console.destroy_all
User.destroy_all

user = User.new
user.email = 'test@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "arnooo"
user.save!

user = User.new
user.email = 'valoch@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "valoch"
user.save!

user = User.new
user.email = 'benito@example.com'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = '#$taawktljasktlw4aaglj'
user.first_name = "benito"
user.save!


Console.create(brand: "PS4", shifter: 3, description: "Console en bon état", price_per_day: 30, user: User.first)
Console.create(brand: "PS3", shifter: 2, description: "Manque un boutton X", price_per_day: 15, user: User.last)
# Console.create(brand: "PS2", shifter: 1, description: "Console en bon état et prête à l'emploi", price_per_day: 27)
# Console.create(brand: "PSOne", shifter: 2, description: "Console en bon état et prête à l'emploi", price_per_day: 98)
# Console.create(brand: "XBOX", shifter: 4, description: "Console en bon état", price_per_day: 23)
# Console.create(brand: "Nintendo Ness", shifter: 3, description: "Console sans jeu", price_per_day: 80)
# Console.create(brand: "PS4", shifter: 4, description: "FIFA 17 et Assassin’s Creed 2 fournis avec la console", price_per_day: 10)
# Console.create(brand: "Wii", shifter: 3, description: "Console en bon état et prête à l'emploi", price_per_day: 15)
# Console.create(brand: "PS4", shifter: 2, description: "Console en état moyen mais fonctionnelle", price_per_day: 30)
# Console.create(brand: "Nintendo Ness", shifter: 4, description: "Console en bon état et prête à l'emploi, jeu fourni Mario Kart", price_per_day: 25)
# Console.create(brand: "Nintendo 64", shifter: 2, description: "Console en bon état et prête à l'emploi (restaurer le 30 janvier 2017", price_per_day: 27)
# Console.create(brand: "PS4", shifter: 1, description: "Console en bon état et prête à l'emploi, 10 jeux fournis", price_per_day: 20)
# Console.create(brand: "PS4", shifter: 3, description: "Console en bon état et prête à l'emploi", price_per_day: 30)
# Console.create(brand: "PS3", shifter: 3, description: "Console en bon état et prête à l'emploi", price_per_day: 35)
# Console.create(brand: "PS4", shifter: 9, description: "Console en bon état et prête à l'emploi, 5 jeux fournis", price_per_day: 80)
# Console.create(brand: "PS2", shifter: 0, description: "Console en bon état et prête à l'emploi", price_per_day: 67)
# Console.create(brand: "PS3", shifter: 1, description: "Console en bon état et prête à l'emploi", price_per_day: 32)
# Console.create(brand: "PS4", shifter: 2, description: "Le mangedisc ne fonctionne plus mais 5 jeux sont installés sur la console", price_per_day: 10)
# Console.create(brand: "PS2", shifter: 3, description: "30 jeux fournis", price_per_day: 90)
# Console.create(brand: "PSOne", shifter: 5, description: "Console en bon état et prête à l'emploi", price_per_day: 32)
# Console.create(brand: "PS3", shifter: 3, description: "Console en bon état et prête à l'emploi", price_per_day: 30)
# Console.create(brand: "SEGA", shifter: 4, description: "Console en bon état disponible à toute heure", price_per_day: 37)
# Console.create(brand: "SEGA", shifter: 7, description: "Console en bon état et prête à l'emploi", price_per_day: 36)
# Console.create(brand: "PS4", shifter: 6, description: "Console", price_per_day: 35)
# Console.create(brand: "Wii", shifter: 5, description: "Console de qualité", price_per_day: 34)
# Console.create(brand: "Wii", shifter: 2, description: "Console pour danser devant sa TV", price_per_day: 33)
# Console.create(brand: "Wii", shifter: 3, description: "Console pour Mario", price_per_day: 32)
# Console.create(brand: "Nintendo Ness", shifter: 2, description: "Console en bon état et prête à l'emploi", price_per_day: 14)
# Console.create(brand: "Nintendo Ness", shifter: 3, description: "Console en bon état et prête à l'emploi", price_per_day: 15)
# Console.create(brand: "Nintendo Ness", shifter: 7, description: "Fun console for fun time", price_per_day: 16)
# Console.create(brand: "XBOX One", shifter: 8, description: "Console pour jouer aux jeux vidéos", price_per_day: 17)
# Console.create(brand: "XBOX One", shifter: 4, description: "Console en bon état", price_per_day: 18)
# Console.create(brand: "XBOX", shifter: 3, description: "Console avec 3 manettes", price_per_day: 19)
# Console.create(brand: "PSOne", shifter: 6, description: "Console de qualité", price_per_day: 20)
# Console.create(brand: "Gamecube", shifter: 5, description: "Console récente pour s’amuser", price_per_day: 21)
# Console.create(brand: "PS3", shifter: 3, description: "Console en bon état et prête à l'emploi", price_per_day: 22)
# Console.create(brand: "PS2", shifter: 3, description: "Jolie console", price_per_day: 24)
# Console.create(brand: "PS4", shifter: 2, description: "Console PS4", price_per_day: 30)
# Console.create(brand: "PS4", shifter: 4, description: "Cool", price_per_day: 20)
