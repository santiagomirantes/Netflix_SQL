USE netflix;

INSERT INTO movies (id, title, director, category, launch, views) VALUES
(NULL, "Fast and Furious 9", "Justin Lin", "Action", date("2021-06-25"), 20300),
(NULL, "Spider-Man 2", "Sam Raimi", "Superheroes", date("2004-07-01"),89143),
(NULL, "Spider-Man 3", "Sam Raimi", "Superheroes", date("2007-05-03"), 70539),
(NULL, "Supercool", "Greg Mottola","Comedy", date("2007-11-22"), 72453),
(NULL, "Nowhere", "Albert Pintó", "Drama", date("2023-09-23"), 10504),
(NULL,"Star Trek", "J.J. Abrams", "Sci-Fi",date("2009-05-07"),85431),
(NULL, "Da Vinci Code", "Ron Howard","Suspense",date("2009-05-19"),62009),
(NULL, "Extraction", "Sam Hargrave", "Action", date("2020-04-24"), 48043),
(NULL, "Extraction 2", "Sam Hargrave", "Action", date("2023-06-16"), 30010),
(NULL, "Shrek", "Andrew Adamson", "Animation",date("2001-06-19"),154338);

SELECT * FROM movies;

INSERT INTO series (id,title,seasons,episodes,director,category,launch,views) VALUES
(NULL, "Stranger Things", 4,34, "Matt Duffer, Ross Duffer","Horror", date("2016-06-23"), 1234432),
(NULL, "Ragnarok", 3, 18, "Emilie Lebech Kaae, Adam Price","Action", date("2020-01-31"), 340457),
(NULL, "Dark", 3, 26, "Baran bo Odar","Mistery", date("2017-12-1"), 2098436),
(NULL, "Mr. Robot", 4, 45, "Sam Esmail","Crime", date("2016-5-14"), 3495831),
(NULL, "Rompan Todo: La historia del rock en América Latina", 1, 6, "Picky Talarico","Documentary", date("2020-12-16"), 125.432);

INSERT INTO episodes(id, series_id,title,duration,description) VALUES
(NULL, 1, "Chapter One: The Vanishing of Will Byers", 47, "At the U.S. Dept. of Energy an unexplained event occurs. Then when a young Dungeons and Dragons playing boy named Will disappears after a night with his friends, his mother Joyce and the town of Hawkins are plunged into darkness."),
(NULL, 1, "Chapter Two: The Weirdo on Maple Street", 55, "Mike hides the mysterious girl in his house. Joyce gets a strange phone call."),
(NULL, 1, "Chapter Three: Holly, Jolly", 51, "An increasingly concerned Nancy looks for Barb and finds out what Jonathan's been up to. Joyce is convinced Will is trying to talk to her."),
(NULL, 1, "Chapter Four: The Body", 49, "Refusing to believe Will is dead, Joyce tries to connect with her son. The boys give Eleven a makeover. Jonathan and Nancy form an unlikely alliance."),
(NULL, 1, "Chapter Five: The Flea and the Acrobat", 52, "Hopper breaks into the lab to find the truth about Will's death. The boys try to locate the 'gate' that will take them to Will."),
(NULL, 1, "Chapter Six: The Monster", 46, "Hopper and Joyce find the truth about the lab's experiments. After their fight, the boys look for the missing Eleven."),
(NULL, 1, "Chapter Seven: The Bathtub", 41, "The government comes searching for Eleven. Eleven looks for Will and Barb in the Upside Down."),
(NULL, 1, "Chapter Eight: The Upside Down", 54, "Joyce and Hopper are taken in for questioning. Nancy and Jonathan prepare to fight the monster and save Will."),
(NULL, 2, "New Boy", 45, "Returning to his family’s hometown, awkward teenager Magne discovers his strange new powers. Still, the hamlet's natural beauty cloaks dark secrets."),
(NULL, 2, "541 Meters", 48, "Magne and his classmates try to regroup after a tragic loss, while the police seem uninterested in getting to the truth. Gry stumbles on Vidar unmasked."),
(NULL, 2, "Jutulheim", 46, "The break-in confirms what Magne suspects: He must take matters into his own hands. After tying up loose ends, the Jutuls put the teen to the test."),
(NULL, 2, "Ginnungagap", 42, "A search for answers brings Magne back to a mysterious woman - and a meaningful mountain. Turid confronts Ran, and former BFFs Gry and Saxa get heated."),
(NULL, 2, "Atomic Number 48", 46, "As Fjor holds Vidar back, Magne takes the blame, then tries a new tack. Threats abound, and the greatest is the explosive find that Isolde left behind."),
(NULL, 2, "Yes, We Love This Country", 39, "While attempting to expose the truth, Magne gets another shock. Hope seems lost, but have the Jutuls underestimated their foe -- and the power of good"),
(NULL, 3, "Geheimnisse", 51, "The small German town of Winden is shaken by the disappearance of a teenage boy. While the townsfolk are occupied with secrets of their own, at nightfall a group of teenagers attempts to recover something the missing boy may have left behind."),
(NULL, 3, "Lügen", 44, "When a grim discovery leaves the police baffled, Ulrich seeks a search warrant for the power plant. A mysterious stranger checks into the hotel."),
(NULL, 3, "Gestern und heute", 45, "It's 1986, and Ulrich's brother, Mads, has been missing for a month. Confusion reigns as past and present intertwine."),
(NULL, 3, "Doppelleben", 47, "Bizarre occurrences give Charlotte a sense of déjà vu, and she suspects Peter is hiding something. Franziska snaps when Magnus confronts her."),
(NULL, 3, "Wahrheiten", 45, "Hannah takes her obsession with Ulrich too far. The stranger asks Regina to deliver an important package. Martha is torn between Jonas and Bartosz."),
(NULL, 3, "Sic Mundus Creatus Est", 51, "Ulrich looks to the past for answers and dredges up disturbing family secrets. Armed with new tools, Jonas probes the cave's murky depths."),
(NULL, 3, "Kreuzwege", 52, "Ulrich questions a frail and frightened Helge in the nursing home. Jonas searches for Mikkel, but the stranger warns him about meddling with the past"),
(NULL, 3, "Was man sät, das wird man ernten", 50, "In 1953, the disfigured bodies of two boys are exhumed at a construction site, the future location of Winden's nuclear power plant."),
(NULL, 3, "Alles ist jetzt", 55, "Ulrich runs afoul of the law, Helge tries to dodge Egon Tiedemann, Claudia harnesses the cave's powers, and Katharina lashes out at Hannah."),
(NULL, 3, "Alpha und Omega", 57, "Peter gets a shock. Jonas learns the truth about his family, but there are more surprises still to come. Helge makes a sacrifice."),
(NULL, 4, "eps1.0_hellofriend.mov", 62, "A notorious hacker takes an interest in cyber security engineer and vigilante styled computer hacker Elliot, while an evil corporation is hacked."),
(NULL, 4, "eps1.1_ones-and-zer0es.mpeg", 48, "Elliot is hesitant about fsociety; Elliot is offered a new job; Elliot worries about Shayla's association with Fernando Vera; Ollie is given a CD outside of Allsafe; Mr. Robot makes Elliot talk about his father."),
(NULL, 4, "eps1.2_d3bug.mkv", 46, "Elliot tries to live a bug-free life, but is quickly drawn back in; Tyrell takes matters into his own hands when the CTO position becomes available; Ollie gets blackmailed; Gideon starts getting suspicious of the infected server."),
(NULL, 4, "eps1.3_da3m0ns.mp4", 46, "While dealing with his withdrawal, Elliot suffers a series of hallucinations about his life, while Shayla helps Angela take an unexpected trip."),
(NULL, 4, "eps1.4_3xpl0its.wmv", 45, "Fsociety attempts to penetrate Steel Mountain, the most secure data facility in America, while Angela makes an important decision."),
(NULL, 4, "eps1.5_br4ve-trave1er.asf", 45, "Elliot attempts to hack Vera out of jail in order to save someone he cares about; Tyrell's 'game' gets crazy; and Angela digs deeper into her mother's death."),
(NULL, 4, "eps1.6_v1ew-s0urce.flv", 45, "Elliot misses Shayla. Angela makes a deal with Colby. Sharon Knowles has an encounter with Tyrell."),
(NULL, 4, "eps1.7_wh1ter0se.m4v", 45, "Allsafe is hacked and Elliot is meeting White Rose. Tyrell is interrogated by the police and Elliot remembers who he really is."),
(NULL, 4, "eps1.8_m1rr0r1ng.qt", 49, "Elliot has to face the challenges of his past, and become accustomed to his new found family."),
(NULL, 4, "eps1.9_zer0-day.avi", 54, "Another huge discovery for Elliot surrounding his family and fsociety, Tyrell's world starts to close around him and Angela has a rather unexpected visitor."),
(NULL, 5, "La Rebeldía", 55, "Latin America's rock movement was sparked by Ritchie Valens' 'La Bamba' and the Beatles but found its own voice in youth and resistance to dictatorship."),
(NULL, 5, "La Represión", 55, "When the band Peace and Love began chanting, 'We got the power!' at the first rock festival in Mexico in 1971, the government responded by banning rock."),
(NULL, 5, "Música a Colores", 55, "After the fall of the Argentine dictatorship in 1983 and the Mexico City earthquake in 1985, rock explodes with ingenuity. And it's all in Spanish."),
(NULL, 5, "Rock en Tu Idioma", 55, "Argentina's Soda Stereo were the first all-hemispheric hitmakers, followed by Mexico's Caifanes and Los Prisioneros from Pinochet's Chile."),
(NULL, 5, "Un Solo Continente", 55, "Mexico's Café Tacvba fuses rock and folk traditions while Aterciopelados, rising with MTV Latin America, does the same with Colombian beats and sounds."),
(NULL, 5, "Una Nueva Era", 55, "Anger about social injustice infuses Latin American rock after the Zapatista uprising, paving the way for reggaeton and rap and new female rockers.");