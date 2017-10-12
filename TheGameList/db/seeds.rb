# encoding: utf-8
Game.delete_all

Game.create!(title: 'Shovel Knight:Treasure Trove',
	year: 2017,
	developer: 'Yacht Club Games',
	platform: 'Nintendo Switch',
	genre: 'Platformer',
	rating: 4.5,
	description:
		%{<p>
				Shovel Knight: Treasure Trove is the full and complete
				edition of Shovel Knight, a sweeping classic action adventure 				game series with awesome gameplay, memorable characters, and 					an 8-bit retro aesthetic! Become Shovel Knight, wielder of 					the Shovel Blade, as he runs, jumps, and battles in a quest 				for his lost beloved. Take down the nefarious knights of the 					Order of No Quarter and their menacing leader, The 		Enchantress.
			</p>},	
	box_art_url: 'shovelknight.jpg')
	

Game.create!(title: 'Legend of Zelda:Breath of the Wild',
	year: 2017,
	developer: 'Nintendo',
	platform: 'Nintendo Switch',
	genre: 'Adventure',
	rating: 5.0,
	description:
		%{<p> Step into a world of adventure

				Forget everything you know about The Legend of Zelda games. 				Step into a world of discovery, exploration and adventure in 					The Legend of Zelda: Breath of the Wild, a boundary-breaking 					new game in the acclaimed series. Travel across fields, 				through forests and to mountain peaks as you discover what 					has become of the ruined kingdom of Hyrule in this stunning 				open-air adventure. 
			</p>},	
	box_art_url: 'zeldabotw.jepg')
