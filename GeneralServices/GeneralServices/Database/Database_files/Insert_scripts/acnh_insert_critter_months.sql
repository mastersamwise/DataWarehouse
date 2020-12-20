/*	
	https://www.ign.com/wikis/animal-crossing-new-horizons/Fish_Guide:_Fish_List,_Sell_Price,_and_Fishing_Tips#Pop-eyed_Goldfish 
	https://www.ign.com/wikis/animal-crossing-new-horizons/Bug_Guide:_Bugs_List,_Sell_Price,_and_Bug_Catching_Tips#Yellow_Butterfly_.E2.9C.93
*/

DECLARE @tempTable table
(
	id_				int identity(1, 1),
	critter_name_	nvarchar(50),
	jan_			bit,
	feb_			bit,
	mar_			bit,
	apr_			bit,
	may_			bit,
	jun_			bit,
	jul_			bit,
	aug_			bit,
	sep_			bit,
	oct_			bit,
	nov_			bit,
	dec_			bit
)

INSERT INTO @tempTable
( critter_name_, jan_, feb_, mar_, apr_, may_, jun_, jul_, aug_, sep_, oct_, nov_, dec_ )
VALUES 

/*    Fish     */
( 'Bitterling', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1 ),
( 'Pale Chub', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Crucian Carp', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Dace', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Carp', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Koi', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Goldfish', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Pop-eyed Goldfish', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Ranchu Goldfish', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Killifish', 0, 0, 0,    1, 1, 1,    1, 1, 0,    0, 0, 0 ),
( 'Crawfish', 0, 0, 0,    1, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Soft-shelled Turtle', 0, 0, 0,    0, 0, 0,    0, 1, 1,    0, 0, 0 ),
( 'Snapping Turtle', 0, 0, 0,    1, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Tadpole', 0, 0, 1,    1, 1, 1,    1, 0, 0,    0, 0, 0 ),
( 'Frog', 0, 0, 0,    0, 1, 1,    1, 1, 0,    0, 0, 0 ),
( 'Freshwater Goby', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Loach', 0, 0, 1,    1, 1, 0,    0, 0, 0,    0, 0, 0 ),
( 'Catfish', 0, 0, 0,    0, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Giant Snakehead', 0, 0, 0,    0, 0, 1,    1, 1, 0,    0, 0, 0 ),
( 'Bluegill', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Yellow Perch', 1, 1, 1,    0, 0, 0,    0, 0, 0,    1, 1, 1 ),
( 'Black Bass', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Tilapia', 0, 0, 0,    0, 0, 1,    1, 1, 1,    1, 0, 0 ),
( 'Pike', 0, 0, 0,    0, 0, 0,    0, 0, 1,    1, 1, 1 ),
( 'Pond Smelt', 1, 1, 0,    0, 0, 0,    0, 0, 0,    0, 0, 1 ),
( 'Sweetfish', 0, 0, 0,    0, 0, 0,    1, 1, 1,    0, 0, 0 ),
( 'Cherry Salmon', 0, 0, 1,    1, 1, 1,    0, 0, 1,    1, 1, 0 ),
( 'Char', 0, 0, 1,    1, 1, 1,    0, 0, 1,    1, 1, 0 ),
( 'Golden Trout', 0, 0, 1,    1, 1, 0,    0, 0, 1,    1, 1, 0 ),
( 'Stringfish', 1, 1, 0,    0, 0, 0,    0, 0, 0,    0, 0, 1 ),
( 'Salmon', 0, 0, 0,    0, 0, 0,    0, 0, 1,    0, 0, 0 ),
( 'King Salmon', 0, 0, 0,    0, 0, 0,    0, 0, 1,    0, 0, 0 ),
( 'Mitten Crab', 0, 0, 0,    0, 0, 0,    0, 0, 1,    1, 1, 0 ),
( 'Guppy', 0, 0, 0,    1, 1, 1,    1, 1, 1,    1, 1, 0 ),
( 'Nibble Fish', 0, 0, 0,    0, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Angelfish', 0, 0, 0,    0, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Betta', 0, 0, 0,    0, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Neon Tetra', 0, 0, 0,    1, 1, 1,    1, 1, 1,    1, 1, 0 ),
( 'Rainbowfish', 0, 0, 0,    0, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Piranha', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Arowana', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Dorado', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Gar', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Arapaima', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Saddled Bichir', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Sturgeon', 1, 1, 1,    0, 0, 0,    0, 0, 1,    1, 1, 1 ),
( 'Sea Butterfly', 1, 1, 1,    0, 0, 0,    0, 0, 0,    0, 0, 1 ),
( 'Seahorse', 0, 0, 0,    1, 1, 1,    1, 1, 1,    1, 1, 0 ),
( 'Clownfish', 0, 0, 0,    1, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Sturgeonfish', 0, 0, 0,    1, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Butterfly Fish', 0, 0, 0,    1, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Napoleonfish', 0, 0, 0,    0, 0, 1,    1, 0, 0,    0, 0, 0 ),
( 'Zebra Turkeyfish', 0, 0, 0,    1, 1, 1,    1, 1, 1,    1, 1, 0 ),
( 'Blowfish', 1, 1, 0,    0, 0, 0,    0, 0, 0,    0, 1, 1 ),
( 'Puffer Fish', 0, 0, 0,    0, 0, 0,    1, 1, 1,    0, 0, 0 ),
( 'Anchovy', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Horse Mackerel', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Barred Knifejaw', 0, 0, 1,    1, 1, 1,    1, 1, 1,    1, 1, 0 ),
( 'Sea Bass', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Red Snapper', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Dab', 1, 1, 1,    1, 0, 0,    0, 0, 0,    1, 1, 1 ),
( 'Olive Flounder', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Squid', 1, 1, 1,    1, 1, 1,    1, 1, 1,    0, 0, 1 ),
( 'Moray Eel', 0, 0, 0,    0, 0, 0,    0, 1, 1,    1, 0, 0 ),
( 'Ribbon Eel', 0, 0, 0,    0, 0, 1,    1, 1, 1,    1, 0, 0 ),
( 'Tuna', 1, 1, 1,    1, 0, 0,    0, 0, 0,    0, 1, 1 ),
( 'Blue Marlin', 1, 1, 1,    1, 0, 0,    1, 1, 1,    0, 1, 1 ),
( 'Giant Trevally', 0, 0, 0,    0, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Mahi-Mahi', 0, 0, 0,    0, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Ocean Sunfish', 0, 0, 0,    0, 0, 0,    1, 1, 1,    0, 0, 0 ),
( 'Ray', 0, 0, 0,    0, 0, 0,    0, 1, 1,    1, 1, 0 ),
( 'Saw Shark', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Hammerhead Shark', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Great White Shark', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Whale Shark', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Suckerfish', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Football Fish', 1, 1, 1,    0, 0, 0,    0, 0, 0,    0, 1, 1 ),
( 'Oarfish', 1, 1, 1,    1, 1, 0,    0, 0, 0,    0, 0, 1 ),
( 'Barreleye', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Coelacanth', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),


/*    Bugs     */
( 'Common Butterfly', 1, 1, 1,    1, 1, 1,    0, 0, 1,    1, 1, 1 ),
( 'Yellow Butterfly', 0, 0, 1,    1, 1, 1,    0, 0, 1,    1, 0, 0 ),
( 'Tiger Butterfly', 0, 0, 1,    1, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Peacock Buttefly', 0, 0, 1,    1, 1, 1,    0, 0, 0,    0, 0, 0 ),
( 'Common Bluebottle', 0, 0, 0,    1, 1, 1,    1, 1, 0,    0, 0, 0 ),
( 'Paper Kite Butterfly', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Great Purple Emperor', 0, 0, 0,    0, 0, 1,    1, 1, 0,    0, 0, 0 ),
( 'Monarch Butterfly', 0, 0, 0,    0, 0, 0,    0, 0, 1,    1, 1, 0 ),
( 'Emperor Butterfly', 1, 1, 1,    0, 0, 1,    1, 1, 1,    0, 0, 1 ),
( 'Agrias Butterfly', 0, 0, 0,    1, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Rajah Brooke''s Birdwing', 1, 1, 0,    1, 1, 1,    1, 1, 1,    0, 0, 1 ),
( 'Queen Alexandra''s Birdwing', 0, 0, 0,    0, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Moth', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Atlas Moth', 0, 0, 0,    1, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Madagascan Sunset Moth', 0, 0, 0,    1, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Long Locust', 0, 0, 1,    1, 1, 1,    1, 1, 1,    1, 1, 0 ),
( 'Migratory Locust', 0, 0, 0,    0, 0, 0,    0, 1, 1,    1, 1, 0 ),
( 'Rice Grasshopper', 0, 0, 0,    0, 0, 0,    0, 1, 1,    1, 1, 0 ),
( 'Grasshopper', 0, 0, 0,    0, 0, 0,    1, 1, 1,    0, 0, 0 ),
( 'Cricket', 0, 0, 0,    0, 0, 0,    0, 0, 1,    1, 1, 0 ),
( 'Bell Cricket', 0, 0, 0,    0, 0, 0,    0, 0, 1,    1, 0, 0 ),
( 'Mantis', 0, 0, 1,    1, 1, 1,    1, 1, 1,    1, 1, 0 ),
( 'Orchid Mantis', 0, 0, 1,    1, 1, 1,    1, 1, 1,    1, 1, 0 ),
( 'Honeybee', 0, 0, 1,    1, 1, 1,    1, 0, 0,    0, 0, 0 ),
( 'Wasp', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Brown Cicada', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Robust Cicada', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Giant Cicada', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Walker Cicada', 0, 0, 0,    0, 0, 0,    0, 1, 1,    0, 0, 0 ),
( 'Evening Cicada', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Cicada Shell', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Red Dragonfly', 0, 0, 0,    0, 0, 0,    0, 0, 1,    1, 0, 0 ),
( 'Darner Dragonfly', 0, 0, 0,    1, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Banded Dragonfly', 0, 0, 0,    0, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Damselfly', 1, 1, 0,    0, 0, 0,    0, 0, 0,    0, 1, 1 ),
( 'Firefly', 0, 0, 0,    0, 0, 1,    0, 0, 0,    0, 0, 0 ),
( 'Mole Cricket', 1, 1, 1,    1, 1, 0,    0, 0, 0,    0, 1, 1 ),
( 'Pondskater', 0, 0, 0,    0, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Diving Beetle', 0, 0, 0,    0, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Giant Water Bug', 0, 0, 0,    1, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Stinkbug', 0, 0, 1,    1, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Man-faced Stink Bug', 0, 0, 1,    1, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Ladybug', 0, 0, 1,    1, 1, 1,    0, 0, 0,    1, 0, 0 ),
( 'Tiger Beetle', 0, 1, 1,    1, 1, 1,    1, 1, 1,    1, 0, 0 ),
( 'Jewel Beetle', 0, 0, 0,    1, 1, 1,    1, 1, 0,    0, 0, 0 ),
( 'Citrus Long-Horned Beetle', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Rosalia Batesi Beetle', 0, 0, 0,    0, 1, 1,    1, 1, 1,    0, 0, 0 ),
( 'Blue Weevil Beetle', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Violin Beetle', 0, 0, 0,    0, 1, 1,    0, 0, 1,    1, 1, 0 ),
( 'Dung Beetle', 1, 1, 0,    0, 0, 0,    0, 0, 0,    0, 0, 1 ),
( 'Earth-boring Dung Beetle', 0, 0, 0,    0, 0, 0,    1, 1, 1,    0, 0, 0 ),
( 'Scarab Beetle', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Drone Beetle', 0, 0, 0,    0, 0, 1,    1, 1, 0,    0, 0, 0 ),
( 'Goliath Beetle', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Saw Stag', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Miyama Stag', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Giant Stag', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Rainbow Stag', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Cyclommatus Stag', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Golden Stag', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Giraffe Stag', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Horned Dynastid', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Horned Atlas', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Horned Elephant', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Horned Hercules', 0, 0, 0,    0, 0, 0,    1, 1, 0,    0, 0, 0 ),
( 'Walking Stick', 0, 0, 0,    0, 0, 0,    1, 1, 1,    1, 1, 0 ),
( 'Walking Leaf', 0, 0, 0,    0, 0, 0,    1, 1, 1,    0, 0, 0 ),
( 'Bagworm', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Ant', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Hermit Crab', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Wharf Roach', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Fly', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Mosquito', 0, 0, 0,    0, 0, 1,    1, 1, 1,    0, 0, 0 ),
( 'Flea', 0, 0, 0,    1, 1, 1,    1, 1, 1,    1, 1, 0 ),
( 'Snail', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Pill Bug', 1, 1, 1,    1, 1, 1,    0, 0, 1,    1, 1, 1 ),
( 'Centipede', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Spider', 1, 1, 1,    1, 1, 1,    1, 1, 1,    1, 1, 1 ),
( 'Tarantula', 1, 1, 1,    1, 0, 0,    0, 0, 0,    0, 1, 1 ),
( 'Scorpion', 0, 0, 0,    0, 1, 1,    1, 1, 1,    1, 0, 0 )

/* Now insert the data into the table in the proper format */
DECLARE @id int = (SELECT TOP 1 id_ FROM @tempTable ORDER BY id_ ASC)
DECLARE @critterID int
DECLARE @critterName nvarchar (25)
DECLARE @jan bit
DECLARE @feb bit
DECLARE @mar bit
DECLARE @apr bit
DECLARE @may bit
DECLARE @jun bit
DECLARE @jul bit
DECLARE @aug bit
DECLARE @sep bit
DECLARE @oct bit
DECLARE @nov bit
DECLARE @dec bit

WHILE @id IS NOT NULL
BEGIN

	SET @critterName = (SELECT critter_name_ FROM @tempTable WHERE id_ = @id)
	SET @critterID = (SELECT critter_id FROM acnh.Critters WHERE critter_name = @critterName)
	
	SET @jan = (SELECT jan_ FROM @tempTable WHERE id_ = @id)
	SET @feb = (SELECT feb_ FROM @tempTable WHERE id_ = @id)
	SET @mar = (SELECT mar_ FROM @tempTable WHERE id_ = @id)
	SET @apr = (SELECT apr_ FROM @tempTable WHERE id_ = @id)
	SET @may = (SELECT may_ FROM @tempTable WHERE id_ = @id)
	SET @jun = (SELECT jun_ FROM @tempTable WHERE id_ = @id)
	SET @jul = (SELECT jul_ FROM @tempTable WHERE id_ = @id)
	SET @aug = (SELECT aug_ FROM @tempTable WHERE id_ = @id)
	SET @sep = (SELECT sep_ FROM @tempTable WHERE id_ = @id)
	SET @oct = (SELECT oct_ FROM @tempTable WHERE id_ = @id)
	SET @nov = (SELECT nov_ FROM @tempTable WHERE id_ = @id)
	SET @dec = (SELECT dec_ FROM @tempTable WHERE id_ = @id)

	IF @critterID IS NULL 
	BEGIN
		PRINT 'Critter ' + @critterName + ' is invalid.'
		RETURN
	END

	INSERT INTO acnh.Months
	(
		january,
		february,
		march,
		april,
		may,
		june,
		july,
		august,
		september,
		october,
		november,
		december,
		critter_id
	)
	VALUES
	(
		@jan,
		@feb,
		@mar,
		@apr,
		@may,
		@jun,
		@jul,
		@aug,
		@sep,
		@oct,
		@nov,
		@dec,
		@critterID
	)
	
	SET @id = (SELECT MIN( id_ ) FROM @tempTable WHERE id_ > @id)
END