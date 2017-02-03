# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create({name: "Beercules", email: "fake@gmail.com", username: "beercules_rules", password: "fake12345", password_confirmation: "fake12345"})

Style.create({name: "Witbier", description: "A Belgian Style ale that's very pale and cloudy in appearance due to it being unfiltered and the high level of wheat, and sometimes oats, that's used in the mash. Always spiced, generally with coriander, orange peel and other oddball spices or herbs in the back ground. The crispness and slight twang comes from the wheat and the lively level of carbonation. This is one style that many brewers in the US have taken a liking to and have done a very good job of staying to style. Sometimes served with a lemon, but if you truly want to enjoy the untainted subtleties of this style you'll ask for yours without one. Often referred to as 'white beers' (witbieren) due to the cloudiness / yeast in suspension."})

Beer.create({name: "Allagash White", description: "Our interpretation of a Belgian-style wheat beer is brewed with oats, malted wheat, and unmalted raw wheat for a hazy, “white” appearance. Spiced with our own special blend of coriander and Curaçao orange peel, White upholds the Belgian tradition of beers that are both complex and refreshing.
Though it’s brewed in Maine, the recipe sticks to its Belgian roots. We’ve worked hard to make sure that the White in your hand tastes the same as it did back in 1995, when Rob Tod brewed the first batch.", rating: 9, abv: 5.1, user_id: 1, style_id: 1})
