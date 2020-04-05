/*	
	https://www.ign.com/wikis/animal-crossing-new-horizons/Fish_Guide:_Fish_List,_Sell_Price,_and_Fishing_Tips#Pop-eyed_Goldfish 
	https://www.ign.com/wikis/animal-crossing-new-horizons/Bug_Guide:_Bugs_List,_Sell_Price,_and_Bug_Catching_Tips#Yellow_Butterfly_.E2.9C.93
*/
DECLARE @tempTable table
(
	[id_]			int identity(1, 1),
	[critter_name_]	nvarchar(25),
	[1am_]			bit,
	[2am_]			bit,
	[3am_]			bit,
	[4am_]			bit,
	[5am_]			bit,
	[6am_]			bit,
	[7am_]			bit,
	[8am_]			bit,
	[9am_]			bit,
	[10am_]			bit,
	[11am_]			bit,
	[12pm_]			bit,
	[1pm_]			bit,
	[2pm_]			bit,
	[3pm_]			bit,
	[4pm_]			bit,
	[5pm_]			bit,
	[6pm_]			bit,
	[7pm_]			bit,
	[8pm_]			bit,
	[9pm_]			bit,
	[10pm_]			bit,
	[11pm_]			bit,
	[12am_]			bit
)

INSERT INTO @tempTable
( critter_name_, [1am_], [2am_],[ 3am_], [4am_], [5am_], [6am_], [7am_], [8am_], [9am_], [10am_], [11am_], [12pm_], [1pm_], [2pm_], [3pm_], [4pm_], [5pm_], [6pm_], [7pm_], [8pm_], [9pm_], [10pm_], [11pm_], [12am_] )
VALUES

/*    Fish     */
( 'Bitterling', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Pale Chub', 0, 0, 0, 0, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 9am - 4pm
( 'Crucian Carp', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Dace', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Carp', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Koi', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Goldfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Pop-eyed Goldfish', 0, 0, 0, 0, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 9am - 4pm
( 'Ranchu Goldfish', 0, 0, 0, 0, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 9am - 4pm
( 'Killifish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Crawfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Soft-shelled Turtle', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Snapping Turtle', 1, 1, 1, 1, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 9pm - 4am
( 'Tadpole', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Frog', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Freshwater Goby', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Loach', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Catfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Giant Snakehead', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Bluegill', 1, 1, 1, 1, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 9pm - 4am
( 'Yellow Perch', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Black Bass', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Tilapia', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Pike', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Pond Smelt', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Sweetfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Cherry Salmon', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Char', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Golden Trout', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Stringfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Salmon', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'King Salmon', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Mitten Crab', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Guppy', 0, 0, 0, 0, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 9am - 4pm
( 'Nibble Fish', 0, 0, 0, 0, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 9am - 4pm
( 'Angelfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am 
( 'Betta', 0, 0, 0, 0, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 9am - 4pm
( 'Neon Tetra', 0, 0, 0, 0, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 9am - 4pm
( 'Rainbowfish', 0, 0, 0, 0, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 9am - 4pm
( 'Piranha', 1, 1, 1, 1, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 1, 1, 1, 1 ), -- 9am - 4pm & 9pm - 4am
( 'Arowana', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am 
( 'Dorado', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 0, 0, 0 ), -- 4am - 9pm
( 'Gar', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Arapaima', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am 
( 'Saddled Bichir', 1, 1, 1, 1, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 9pm - 4am 
( 'Sturgeon', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Sea Butterfly', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Seahorse', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Clownfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Sturgeonfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Butterfly Fish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Napoleonfish', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 0, 0, 0 ), -- 4am - 9pm 
( 'Zebra Turkeyfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Blowfish', 1, 1, 1, 1, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 9pm - 4am
( 'Puffer Fish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Anchovy', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 0, 0, 0 ), -- 4am - 9pm 
( 'Horse Mackerel', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Barred Knifejaw', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Sea Bass', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Red Snapper', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Dab', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Olive Flounder', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Squid', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Moray Eel', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Ribbon Eel', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Tuna', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Blue Marlin', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Giant Trevally', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Mahi-Mahi', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Ocean Sunfish', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 0, 0, 0 ), -- 4am - 9pm 
( 'Ray', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 0, 0, 0 ), -- 4am - 9pm 
( 'Saw Shark', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Hammerhead Shark', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Great White Shark', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Whale Shark', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Suckerfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Football Fish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 4pm - 9am
( 'Oarfish', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), 
( 'Barreleye', 1, 1, 1, 1, 0, 0,    0, 0, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 9pm - 4am
( 'Coelacanth', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),


/*    Bugs     */
( 'Common Butterfly', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 4am - 7pm
( 'Yellow Butterfly', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 4am - 7pm
( 'Tiger Butterfly', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 4am - 7pm
( 'Peacock Buttefly', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 4am - 7pm
( 'Common Bluebottle', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 4am - 7pm
( 'Paper Kite Butterfly', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 8am - 7pm
( 'Great Purple Emperor', 0, 0, 0, 1, 1, 1,    1, 0, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 4am - 7am
( 'Monarch Butterfly', 0, 0, 0, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 4am - 5pm
( 'Emperor Butterfly', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Agrias Butterfly', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Rajah Brooke''s Birdwing', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Queen Alexandra''s Birdwing', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 4pm
( 'Moth', 1, 1, 1, 1, 0, 0,    0, 0, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     1, 1, 1, 1, 1, 1 ), -- 7pm - 4am
( 'Atlas Moth', 1, 1, 1, 1, 0, 0,    0, 0, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     1, 1, 1, 1, 1, 1 ), -- 7pm - 4am
( 'Madagascan Sunset Moth', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 4pm
( 'Long Locust', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 8am - 7pm
( 'Migratory Locust', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 8am - 7pm
( 'Rice Grasshopper', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 8am - 7pm
( 'Grasshopper', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Cricket', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Bell Cricket', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Mantis', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Orchid Mantis', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Honeybee', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Wasp', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Brown Cicada', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Robust Cicada', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Giant Cicada', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Walker Cicada', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 4pm
( 'Evening Cicada', 0, 0, 0, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 4am - 8am & 4pm - 7pm
( 'Cicada Shell', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Red Dragonfly', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 8am - 7pm
( 'Darner Dragonfly', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Banded Dragonfly', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Damselfly', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Firefly', 1, 1, 1, 1, 0, 0,    0, 0, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     1, 1, 1, 1, 1, 1 ), -- 7pm - 4am
( 'Mole Cricket', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Pondskater', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 8am - 7pm
( 'Diving Beetle', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 8am - 7pm
( 'Giant Water Bug', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     1, 1, 1, 1, 1, 1 ), -- 7pm - 8am
( 'Stinkbug', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Man-faced Stink Bug', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     1, 1, 1, 1, 1, 1 ), -- 7pm - 8am
( 'Ladybug', 0, 0, 0, 0, 0, 0,    0, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 0,     0, 0, 0, 0, 0, 0 ), -- 8am - 5pm
( 'Tiger Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Jewel Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Citrus Long-Horned Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Rosalia Batesi Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Blue Weevil Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Violin Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Dung Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Earth-boring Dung Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Scarab Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     0, 0, 0, 0, 1, 1 ), -- 11pm - 8am
( 'Drone Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Goliath Beetle', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Saw Stag', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Miyama Stag', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Giant Stag', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     0, 0, 0, 0, 1, 1 ), -- 11pm - 8am
( 'Rainbow Stag', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     1, 1, 1, 1, 1, 1 ), -- 7pm - 8am
( 'Cyclommatus Stag', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Golden Stag', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Giraffe Stag', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Horned Dynastid', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Horned Atlas', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Horned Elephant', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Horned Hercules', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 8am
( 'Walking Stick', 0, 0, 0, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 0, 0, 0, 0, 0 ), -- 4am - 8am & 5pm - 7pm
( 'Walking Leaf', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Bagworm', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Ant', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Hermit Crab', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     1, 1, 1, 1, 1, 1 ), -- 7pm - 8am
( 'Wharf Roach', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Fly', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Mosquito', 1, 1, 1, 1, 0, 0,    0, 0, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 1 ), -- 5pm - 4am
( 'Flea', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Snail', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,     1, 1, 1, 1, 1, 1 ),
( 'Pill Bug', 1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 1, 1,    1, 1, 1, 1, 0, 0,     0, 0, 0, 0, 1, 1 ), -- 11pm - 4am
( 'Centipede', 0, 0, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,    0, 0, 0, 0, 1, 1,     1, 1, 1, 1, 1, 0 ), -- 5pm - 11pm
( 'Spider', 1, 1, 1, 1, 1, 1,    1, 1, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     1, 1, 1, 1, 1, 1 ), -- 7pm - 8am
( 'Tarantula', 1, 1, 1, 1, 0, 0,    0, 0, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     1, 1, 1, 1, 1, 1 ), -- 7pm - 4am
( '', 1, 1, 1, 1, 0, 0,    0, 0, 0, 0, 0, 0,    0, 0, 0, 0, 0, 0,     1, 1, 1, 1, 1, 1 ) -- 7pm - 4am

/* Now insert the data into the table in the proper format */
DECLARE @id int = (SELECT TOP 1 id_ FROM @tempTable ORDER BY id_ ASC)
DECLARE @critterID int
DECLARE @critterName nvarchar (25)
DECLARE @1am bit
DECLARE @2am bit
DECLARE @3am bit
DECLARE @4am bit
DECLARE @5am bit
DECLARE @6am bit
DECLARE @7am bit
DECLARE @8am bit
DECLARE @9am bit
DECLARE @10am bit
DECLARE @11am bit
DECLARE @12pm bit
DECLARE @1pm bit
DECLARE @2pm bit
DECLARE @3pm bit
DECLARE @4pm bit
DECLARE @5pm bit
DECLARE @6pm bit
DECLARE @7pm bit
DECLARE @8pm bit
DECLARE @9pm bit
DECLARE @10pm bit
DECLARE @11pm bit
DECLARE @12am bit

WHILE @id IS NOT NULL
BEGIN
	
	SET @critterName = (SELECT critter_name_ FROM @tempTable WHERE id_ = @id)
	SET @critterID = (SELECT critter_id FROM [acnh].[Critters] WHERE [critter_name] = @critterName)

	SET @1am = (SELECT [1am] FROM @tempTable WHERE id_ = @id)
	SET @2am = (SELECT [2am] FROM @tempTable WHERE id_ = @id)
	SET @3am = (SELECT [3am] FROM @tempTable WHERE id_ = @id)
	SET @4am = (SELECT [4am] FROM @tempTable WHERE id_ = @id)
	SET @5am = (SELECT [5am] FROM @tempTable WHERE id_ = @id)
	SET @6am = (SELECT [6am] FROM @tempTable WHERE id_ = @id)
	SET @7am = (SELECT [7am] FROM @tempTable WHERE id_ = @id)
	SET @8am = (SELECT [8am] FROM @tempTable WHERE id_ = @id)
	SET @9am = (SELECT [9am] FROM @tempTable WHERE id_ = @id)
	SET @10am = (SELECT [10am] FROM @tempTable WHERE id_ = @id)
	SET @11am = (SELECT [11am] FROM @tempTable WHERE id_ = @id)
	SET @12pm = (SELECT [12pm] FROM @tempTable WHERE id_ = @id)
	SET @1pm = (SELECT [1pm] FROM @tempTable WHERE id_ = @id)
	SET @2pm = (SELECT [2pm] FROM @tempTable WHERE id_ = @id)
	SET @3pm = (SELECT [3pm] FROM @tempTable WHERE id_ = @id)
	SET @4pm = (SELECT [4pm] FROM @tempTable WHERE id_ = @id)
	SET @5pm = (SELECT [5pm] FROM @tempTable WHERE id_ = @id)
	SET @6pm = (SELECT [6pm] FROM @tempTable WHERE id_ = @id)
	SET @7pm = (SELECT [7pm] FROM @tempTable WHERE id_ = @id)
	SET @8pm = (SELECT [8pm] FROM @tempTable WHERE id_ = @id)
	SET @9pm = (SELECT [9pm] FROM @tempTable WHERE id_ = @id)
	SET @10pm = (SELECT [10pm] FROM @tempTable WHERE id_ = @id)
	SET @11pm = (SELECT [11pm] FROM @tempTable WHERE id_ = @id)
	SET @12am = (SELECT [12am] FROM @tempTable WHERE id_ = @id)

	IF @critterID IS NULL 
	BEGIN
		PRINT 'Critter ' + @critterName + ' is invalid.'
		RETURN
	END

	INSERT INTO [acnh].[Hours]
	(
		[1_AM],
		[2_AM],
		[3_AM],
		[4_AM],
		[5_AM],
		[6_AM],
		[7_AM],
		[8_AM],
		[9_AM],
		[10_AM],
		[11_AM],
		[12_PM],
		[1_PM],
		[2_PM],
		[3_PM],
		[4_PM],
		[5_PM],
		[6_PM],
		[7_PM],
		[8_AM],
		[9_PM],
		[10_PM],
		[11_PM],
		[12_AM],
		[critter_id]
	)
	VALUES
	(
		@1am,
		@2am,
		@3am,
		@4am,
		@5am,
		@6am,
		@7am,
		@8am,
		@9am,
		@10am,
		@11am,
		@12pm,
		@1pm,
		@2pm,
		@3pm,
		@4pm,
		@5pm,
		@6pm,
		@7pm,
		@8pm,
		@9pm,
		@10pm,
		@11pm,
		@12am,
		@critterID
	)
	
	SET @id = (SELECT MIN( id_ ) FROM @concertsTable WHERE id_ > @id)
END