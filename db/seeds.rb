User.create({name: "Beercules", email: "fake@gmail.com", username: "beercules_rules", password: "fake12345", password_confirmation: "fake12345"})

User.create({name: "Frank the Tank", email: "fake2@gmail.com", username: "Frank_the_Tank", password: "fake123456", password_confirmation: "fake123456"})

Style.create({name: "Witbier", description: "A Belgian Style ale that's very pale and cloudy in appearance due to it being unfiltered and the high level of wheat, and sometimes oats, that's used in the mash. Always spiced, generally with coriander, orange peel and other oddball spices or herbs in the back ground. The crispness and slight twang comes from the wheat and the lively level of carbonation. This is one style that many brewers in the US have taken a liking to and have done a very good job of staying to style. Sometimes served with a lemon, but if you truly want to enjoy the untainted subtleties of this style you'll ask for yours without one. Often referred to as 'white beers' (witbieren) due to the cloudiness / yeast in suspension."})

Style.create({name: "American Porter", description: "Inspired from the now wavering English Porter, the American Porter is the ingenuous creation from that. Thankfully with lots of innovation and originality American brewers have taken this style to a new level. Whether it is highly hopping the brew, using smoked malts, or adding coffee or chocolate to complement the burnt flavor associated with this style. Some are even barrel aged in Bourbon or whiskey barrels. The hop bitterness range is quite wide but most are balanced. Many are just easy drinking session porters as well. "})

Beer.create({name: "Allagash White", description: "Our interpretation of a Belgian-style wheat beer is brewed with oats, malted wheat, and unmalted raw wheat for a hazy, “white” appearance. Spiced with our own special blend of coriander and Curaçao orange peel, White upholds the Belgian tradition of beers that are both complex and refreshing.
Though it’s brewed in Maine, the recipe sticks to its Belgian roots. We’ve worked hard to make sure that the White in your hand tastes the same as it did back in 1995, when Rob Tod brewed the first batch.", abv: 5.1, style_id: 1})

Beer.create({name: "Hoegaarden", description: "500 years of hard work went into making this beer that features the aroma of orange peel, coriander and herbs that the merry monks imported from sunny Curacao. Speaking of which: pouring Hoegaarden is just like letting the sun fall into your glass: light yellow and naturally murky. And the soft foam adds a cloudy finish. And then there’s the soft taste, light and slightly sweet and sour and with subtle citrus notes… ah, just go ahead and taste it instead of reading about it!", abv: 4.9, style_id: 1})

Beer.create({name: "UFO White", description: "Light, crisp, refreshing UFO White follows in the tradition of spiced wheat beers that have been brewed in Belgium for well over 300 years. Brewed with orange peel and coriander, UFO White is the perfect choice for a summer’s barbecue, a night out with friends or any time you're thirsting for something a little different. Like all UFO beers, we leave UFO White UnFiltered.
", abv: 4.8, style_id: 1})

Beer.create({name: "Great Lakes Edmund Fitzgerald Porter", description: "Robust and complex, our Porter is a bittersweet tribute to the legendary freighter’s fallen crew—taken too soon when the gales of November came early. Brewed in memory of the sunken freighter, with rich roasted barley and bittersweet chocolate-coffee notes.", abv: 6.0, style_id: 2})

Beer.create({name: "Sierra Nevada Porter", description: "Porters were invented as a fortifying drink for the rough-and-tumble working class of London’s bustling markets. It was brewed for good folks with calluses on their hands, doing work that needed to be done. We salute those working-class heroes with our classic Porter, brewed in the hop-forward American style and featuring a depth of malt flavor and complexity with roasted notes of black coffee and cocoa.", abv: 5.6, style_id: 2})

Review.create({summary: "dopest dope", rating: 7, user_id: 1, beer_id: 1})

Review.create({summary: "I want to bathe in it", rating: 8, user_id: 1, beer_id: 2})

Review.create({summary: "Like a million little pixies flying around the inside of my mouth", rating: 9, user_id: 1, beer_id: 3})

Review.create({summary: "nectar of the gods", rating: 6, user_id: 1, beer_id: 4})

Review.create({summary: "chocolate rain", rating: 8, user_id: 1, beer_id: 5})

Review.create({summary: "gasoline", rating: 4, user_id: 2, beer_id: 1})

Review.create({summary: "nail polish", rating: 3, user_id: 2, beer_id: 2})

Review.create({summary: "vegas water", rating: 9, user_id: 2, beer_id: 3})

Review.create({summary: "hipster poison", rating: 5, user_id: 2, beer_id: 4})

Review.create({summary: "dark as night", rating: 6, user_id: 2, beer_id: 5})
