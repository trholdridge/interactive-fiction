"Challenge2" by Tulasi Holdridge

When play begins:
	say "Your new employer has sent you to her personal library as a challenge, and you must escape it. Your only instructions are that, if you try to open the door with the wrong key, the test will be considered an utter failure."

Library is a room. "You're in a small library with wooden bookshelves on the [north] and [east] walls. There is an arched [window] on the west wall, and an ornate red door to the south. Nestled at the corner where the bookshelves intersect, a velvety [armchair] sits behind a low [table]." 

South of the Library is the red door. Red door is a door and scenery. Red door is openable, lockable, closed, and locked. 

[Used ex. 46 from for Writing with Inform to create new either/or variable]
Inside the library is the table, the armchair, the north shelf, the east shelf, and the window. The red door, armchair, north shelf, east shelf, table, and window are fixed in place. The north shelf is scenery. The east shelf is scenery. The north shelf can be revealed. The north shelf is not revealed. 

The drawer is an closed openable container in the table. The map is in the drawer. The diary is in the east shelf. The codebook is in the north shelf. The scrap of paper is in the window.

Instead of examining the red door:
	say "The door is locked."

Instead of examining the table:
	say "A low table with a mahogany lacquer and curved legs. Tucked under the tabletop is a closed drawer."

Instead of examining the armchair:
	say "A well-loved chair with dusky pink upholstery."

Instead of examining the window:
	say "The window seems to sealed shut, but on the sill is a small scrap of paper that you hadn't noticed at first glance."

Instead of examining the east shelf:
	say "The shelf is filled with ancient books that you would love to read, but most don't look particularly helpful right now. One slim volume catches your eye; it looks to be newer than the others, and simply has the word 'DIARY' on its spine."

Instead of examining the north shelf:
	say "A lifetime's worth of knowledge sits on this shelf, and you can't waste time looking through every book. If you want to find a particular book, you'll have to examine it directly."

Instead of examining the scrap of paper:
	say "The words 'decrypt Vigenere key SECRET' are scrawled on the paper in hasty handwriting."
	
Instead of examining the map when the player is in the library:
	say "A simple map of the world. It uses the Robinson projection, if that sort of thing matters to you." 

Instead of examining the diary when the player does not have the diary:
	say "A small book, out of place among the heavier tomes around it. You'd have to take the diary to discern anything about its contents."
Instead of examining the diary when the player has the diary:
	say "You open the book, but it appears blank except for one page near the back. However, instead of words, there is an incomprehensible string of letters: 'llg tswwfqfo papn iiowen psnj rgox llir.'"

Instead of examining the codebook when the north shelf is not revealed:
	say "A thick book with embossed writing on its spine that reads 'The complete guide to ciphers and codes.' You'd have to take the codebook to learn anything about its contents."
Instead of examining the codebook when the north shelf is revealed:
	say "A thick book with embossed writing on its spine that reads 'The complete guide to ciphers and codes.' The book is tilted out of place. Behind it, you can just barely make out some of the gears and pulleys that must have set off the secret door."
Instead of taking the codebook when the north shelf is not revealed:
	now the the north shelf is revealed; say "You begin to pull the codebook toward you. With an abrupt crunching sound followed by a rapid clicking, the bookshelf slides to the left, toward the west wall. It only opens a couple feet, but the dark space it reveals seems large enough to fit through without too much trouble."
Instead of taking the codebook when the north shelf is revealed:
	say "This is a trick book, and cannot be removed from the shelf."
	
Instead of going north from the Library when the north shelf is not revealed:
	say "You can't go that way."
	
Secret Office is north of the Library. "This room is mostly empty, and lit by an eerie purple light that makes its white walls glow. In the middle is a [desk], and atop it is a heavy-looking [trunk]."

Inside the secret office is the desk and the trunk. The trunk is closed and openable. The golden key is in the trunk. The silver key is inside the trunk.

Instead of examining the trunk:
	say "A substantial trunk made of wood and iron."

After opening the trunk:
	say "Inside are two keys, one pink and one purple."

Instead of examining the map when the player is in the secret office:
	say "Under the office's UV light, you can see that certain cities are circled on the map: Nashville, Aswan, Taguig, Indore, Oslo, Nairobi."