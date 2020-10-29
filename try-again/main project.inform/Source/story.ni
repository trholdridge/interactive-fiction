"Try Again" by Tulasi H.

[ * * * * * * * * * * * * * * * * * * * * setup * * * * * * * * * * * * * * * * * * * * ]

Use verbose room descriptions.
Release along with an interpreter.

[rooms representing main choice points have a specific relationship]
[this helps with checking which paths the player has gone down and where they should reset to]
Lineage relates one room (called parent) to various rooms. The verb to parent means the lineage relation.
[ending means one of the game's endings occurs there]
[choice means it is a main branching point in the storyline]
A room can be an ending. A room can be a choice.

[Since two rooms lead to Choice3a, this workaround is needed]
Before going to Data Mining:
	If Control Room has not been visited:
		now Data Mining parents Control Room;
Before going to Visitation:
	If Control Room has not been visited:
		now Visitation parents Control Room;

[the player can't redo paths they've already taken]
Before going to a room (called N):
	If N is an ending:
		If N is explored:
			say "Sorry, you've made this choice before.";
			stop the action;
		

[ * * * * * * * * * * * * * * * * * * * * rooms * * * * * * * * * * * * * * * * * * * * ]

Chapter 1 - cell to choice 1
[this section contains everything from the Cell up to and including the Intersection]

When play begins:
	now the time of day is 9:00 PM;
	say "***disclaimer: this is unfinished in terms of detail, so although its important mechanic works, some rooms (especially later on) might not have much to examine, and the game is overall more linear than I'd like.***[paragraph break]".

Before going north:
	If the time of day is before 9:05 PM:
		say "The cell door is locked. It cannot be opened from the inside.";
		stop the action.

[********** Cell **********]
Cell is a room. "This room is depressingly familiar. You've paced across every inch of the cold gray concrete, stood on tiptoes to see out of the [barred window], tossed and turned under the thin [blanket] on your [cot]. A small [camera] is embedded above the locked [cell door] on the north wall." Hall1 is north of the cell.
Inside the cell is barred window, blanket, cot, cell door, and camera. The barred window, the blanket, the cell door, and the cot are fixed in place.
Instead of examining the barred window:
	say "It is small and lets in little light."
Instead of examining the blanket:
	say "Light blue linen. You make the bed neatly every day, for lack of anything better to do."
Instead of examining the cot:
	say "It has a lumpy mattress and a metal frame."
Instead of examining the camera:
	say "The camera is your constant companion. Day in and day out, it faithfully reports your movements to whoever it is that monitors them. When you first got here, you sometimes stared at its blinking blue light all night. Now, you rarely give it a second glance."
Instead of examining the cell door:
	say "Imposing, unmarked, and definitely locked."
Instead of taking the camera:
	say "You can't reach it, and anyway it's fixed in place."

At 9:04 PM:
	say "Suddenly, the stark white light in the ceiling flickers out. The cell is pitch-black at first, but you can clearly hear the grating sound that your cell door makes when it retracts upward. The cooler air from the hall outside floods in.[paragraph break]Just as your eyes begin to adjust, an eerie red emergency light fades up. The dim light confirms what you heard and felt: the door is open. Above it, the camera blinks back on, and glimmers tauntingly as you stare at it.[paragraph break]You register a blaring alarm sound that must have started sometime in the past minute, but otherwise the facility is deathly still. It must be a power outage, or worse. Whatever the case, this is your chance to escape."

[I removed Hall2 for time, which is why it skips to Hall3 later]
[[********** Hall1 **********]]
Hall1 is a room. "The hall is flooded with red light and the sound of alarms. Your cell is one of many [cells] that branches off of it, and every door down the length of the hall is now open. To the south, you know there are branching hallways that lead deeper into this wing of the facility, and to the north is the main corridor that runs through the complex." The printed name of Hall1 is "South Hall". North of Hall1 is Intersection. The cells are inside Hall1. The cells are fixed in place.
Instead of going south from Hall1:
	say "It would be unwise to stay in this area. Guards will arrive soon to lock it down, as it has the highest concentration of prisoners."
Instead of examining the cells:
	say "You peer into some, but they all appear empty: beds made, windows locked. Did you pass out when the lights when out? Surely there must have been some commotion, with everyone trying to make a break for it at once. You can't think about it for too long, though. You need to get out of here."

[********** Intersection **********]
Intersection is a room. "Here, the narrow central hall of your cell's wing meets a wider corridor. The alarms are still blaring, and the light still dim, but you've been this way before (albeit under close supervision). The corridor runs from east to west, and though you can't see far in either direction, you don't hear or see anyone else." West of Intersection is CorridorB. East of Intersection is CorridorA. Intersection parents Data Mining. Intersection parents Visitation.
Before going east from Intersection:
	If Visitation is explored:
		say "A strange impulse tells you not to go that way.";
		stop the action.
Before going west from Intersection:
	If Data Mining is explored:
		say "A strange impulse tells you not to go that way.";
		stop the action.

Chapter 2 - choice 1 to choice 2a
[this section contains everything from CorridorB up to and including Data Mining]

[********** CorridorB **********]
CorridorB is a room. "A wider hall with an arched ceiling. This is where you pass through regularly to get to other parts of the facility, so despite the lack of light you can navigate it easily. On the north wall is the entrance to a small alcove. After that, corridor curves around slightly, ending at an unassuming door to the northwest." The printed name of CorridorB is "Corridor (west)". North of CorridorB is Alcove. Northwest of CorridorB is Waiting Room.
Before going east from CorridorB:
	say "A strange impulse tells you not to go that way.";
	stop the action.

[********** Alcove **********]
Alcove is a room. "This cramped room, if you can even call it that, overlooks the facility's yard. The sun set long ago, but the emergency lights on building exteriors illuminate it plenty. From here, you can see the east and west wings of the building, which face each other. Combined with the south wing, which you are in right now, the whole facility forms a U-shape. The yard is enclosed within this shape, and in its center stands the simple yet elegant control tower.[paragraph break]Leaning against the wall of the alcove is a [hatchet], and the archway south of you leads back into the corridor."
Inside the alcove is the hatchet.
Instead of examining the hatchet:
	say "The standard model that's found alongside fire extinguishers in glass cases throughout the facility. It's odd that the hatchet is just lying around, but perhaps a careless guard thought it was needed in the chaos of the power outage, and stashed it here without thinking once the initial shock had faded."

[********** Waiting Room **********]
Waiting Room is a room. "You've sat in the neat rows of [seats] many times, waiting for your shift to start in the room northwest of here. The door is locked, seeing as it's after hours, but unlike most in the facility it is a plain [wooden door]. No one would go in there voluntarily, so there isn't much danger of break-ins."
Inside the waiting room is the seats and the wooden door. The seats is fixed in place. The wooden door is an open door. The wooden door is northwest of Waiting Room and southeast of Data Mining. The wooden door can be broken.
Instead of examining the seats:
	say "Metal chairs with thin cushions, bolted to the floor."
Instead of examining the wooden door:
	say "A wooden door painted blue, outfitted with a heavy metal bolt. You could probably break it with the right implement."
Breaking it with is an action applying to two things.
Understand "break [something] with [something]" as breaking it with.
Instead of breaking the wooden door with the hatchet:
	now the wooden door is broken;
	say "It takes several chops, but slowly you're able to hack through the door (at least, enough to fit through its splintered remains)."
Check attacking the wooden door:
	say "You can't exactly punch through with your bare fist." instead.
Before going northwest from the waiting room:
	If the wooden door is not broken:
		say "The wooden door stands in your way";
		stop the action.

[********** Data Mining **********]
Data Mining is a room. "This is where you've spent most of your out-of-cell time. Sleek white [booths] are installed around the perimeter of the room. All of them are locked shut; they are kept under tight control during off hours. [Cameras] are embedded in each corner, and blink in the same familiar way as the one in your cell.[paragraph break]A [spiral staircase] leads up to a wide balcony that rings the room high above. You've only been to the second floor a few times, but you know there's an exit there that guards come and go from. Back on ground level, a heavy-looking door in the north wall marks another exit."Above Data Mining is Data Mining2. North of Data Mining is Trackway. Data Mining parents Vehicle Bay.
Inside Data Mining is the booths, the spiral staircase, and the cameras. The booths, the spiral staircase, and the cameras are fixed in place.
Instead of examining the booths:
	say "In these booths, the prisoners' most important work takes place. Although they are locked right now, their interiors are almost ingrained in your sense memory.[paragraph break]Each is equipped with a hardbacked chair facing a large screen. Like the photobooths from your childhood, but more sinister. From a control room who knows where, you are assigned a task for the next few hours. When you're lucky, you might be categorizing images of road signs or transcribing handwritten diary entries. When you're unlucky... well, it's no good to dwell on the videos that have been etched into your conscience from those screens. You already see them when you try to sleep at night."
Instead of examining the cameras:
	say "Their blue lights fluctuate in brightness. Somewhere, someone is probably watching you."
Instead of examining the spiral staircase:
	say "The metal steps ascend in a spiral to the 2nd floor of the data mining center."
Before going up from Data Mining:
	If Control Room is explored:
		say "A strange impulse tells you not to go that way.";
		stop the action.
Before going north from Data Mining:
	If Vehicle Bay is explored:
		say "A strange impulse tells you not to go that way.";
		stop the action.


Chapter 3 - choice 1 to choice 2b
[this section contains everything from CorridorA up to and including Visitation]

[********** CorridorA **********]
CorridorA is a room. "A wider hall with an arched ceiling. This is where you pass through regularly to get to other parts of the facility, so despite the lack of light you can navigate it easily. On the south wall, there is a small door that you have walked past often but never entered. The corridor continues to the east." The printed name of CorridorA is "Corridor (east)". East of CorridorA is Dead End. South of CorridorA is Storage Room.
Before going west from CorridorA:
	say "A strange impulse tells you not to go that way.";
	stop the action.

[********** Storage Room **********]
Storage Room is a room. "Dark and cluttered. Most of the boxes here are sealed; you probably shouldn't waste time looking through them. A [ladder] stands in the corner. On top of a pile of junk, there is one [open box]. The storage room's door is in the north wall."
Inside Storage Room is the ladder and the open box. Inside the open box is the screwdriver and the duct tape.
Instead of examining the ladder:
	say "A normal ladder."
Instead of examining the box:
	say "It contains a screwdriver and a roll of duct tape."
Instead of examining the screwdriver:
	say "A Phillips head screwdriver."
Instead of examining the duct tape:
	say "Plain gray duct tape."

[********** Dead End **********]
Dead End is a room. "The corridor curves around toward the northeast, but it ends in a door which seems firmly shut. Up above your head is a large air vent, part of the facility's ventilation system." [North of Dead End is Camera Feed.] Above Dead End is Air Vent.
Before going up from the Dead End:
	If the player has the ladder:
		If the player has the screwdriver:
			say "You place the ladder in front of the door and climb up to the air vent. It has a metal grate covering it, but you unscrew the corners with your screwdriver and let it clatter to the ground. It's a tight fit, but you squeeze yourself into the vent.";
		Otherwise:
			say "You place your ladder and climb up, but the air vent is covered by a grate that is screwed into place.";
			stop the action;
	Otherwise:
		say "The air vent is too far above you to jump up, and the walls are too smooth to climb.";
		stop the action.

[Camera Feed is a room.]

[********** Air Vent **********]
Air Vent is a room. "A cramped space with cold air rushing through. The vent continues to the northeast." Northeast of Air Vent is Air Vent2.

[********** Air Vent2 **********]
Air Vent2 is a room. "From here, the vent ends to the northeast and branches off to the south. The grate to the northeast has wide enough bars that you could reach through and unscrew it, and the drop to the floor doesn't look too bad." The printed name of Air Vent2 is "Air Vent (intersection)". South of Air Vent2 is Mess Hall Overlook. Northeast of Air Vent2 is Visitation.

[********** Mess Hall Overlook **********]
Mess Hall Overlook is a room. "This branch of the air vent ends in another grate. Far below, you can see the enormous mess hall, austere and empty. It is of course familiar; you've checked in thousands of times and grabbed thousands of cold steel trays of food. Although you could unscrew this grate too, the drop down into the mess hall would surely be fatal. Back north is the main air vent."

[********** Visitation **********]
Visitation is a room. "Although it's as cold and empty as the rest of the facility right now, and looks foreboding under the red light, this room is the only one that can be downright joyous at times. Here, you can greet friends and family, even if the pane of polished glass bisecting the room prevents real contact. The pane is dotted with two-way [speakers], separated by plastic dividers for a measly amount of privacy.[paragraph break]A door at the southeast, with a [check-in machine] next to it, leads to the phone bank (which is much more familiar to you than visitation). And although it's normally locked, the door in the glass divider hangs open, giving you access to two more doors on the northeast and northwest walls." Northwest of Visitation is Guard Room. Southeast of Visitation is Phone Room. Northeast of Visitation is Hall3. Visitation parents Power Source.
Inside Visitation is the speakers and the check-in machine. The speakers and check-in machine are fixed in place.
Instead of examining the speakers:
	say "The speakers are simple. You only used them once, when you first got here, but you remember their tinny sound. In a socket at the center of each speaker is one of the familiar cameras, keeping a record of the faces that come up to each side of the glass and the words that pass through."
Instead of examining the check-in machine:
	say "Normally, a guard is stationed here to prevent prisoners from entering visitation without a fingerprint scan. The scan, of course, is necessary both for record-keeping and to charge the Visitation Fee to your account."
Before going northwest from Visitation:
	If Control Room is explored:
		say "A strange impulse tells you not to go that way.";
		stop the action.
Before going northeast from Visitation:
	If Power Source is explored:
		say "A strange impulse tells you not to go that way.";
		stop the action.

Chapter 4 - choice 2a to choice 3a
[this section includes everything from Data Mining2 up to and including the Control Room]

[********** Data Mining2 **********]
Data Mining2 is a room. "There are a few empty guard posts here, normally ensuring that the prisoners below stay in line. The second floor is essentially just a balcony, but to the northeast of the part you're on now, a catwalk spans over the center." The printed name of Data Mining2 is "Data Mining (second floor)". Northeast of Data Mining2 is Catwalk2.
Before going down from Data Mining2:
	say "A strange impulse tells you not to go that way.";
	stop the action.

[Catwalk is a room. Northeast of Catwalk is Catwalk2.]

[********** Catwalk2 **********]
Catwalk2 is a room. "You stride quickly across the catwalk to the opposite side of the second floor, not bothering to look down. It continues to the northeast, entering an area outside of the data mining center. You keep following it until you reach a breathtaking view.[paragraph break]Here, the catwalk emerges from the wall of the facility, and connects to a great network of catwalks traversing the space above the central yard. The one you're on runs northeast, straight across the expanse to the facility's central control tower." The printed name of Catwalk2 is "Catwalk (Data Mining)". [Northwest of Catwalk2 is Records.] Northeast of Catwalk2 is Catwalk4.

[Records is a room.]

[Catwalk3 is a room. North of Catwalk3 is Catwalk4.]

[********** Catwalk4 **********]
Catwalk4 is a room. "The catwalk is narrow and creaky. Far below, the yard is deserted, lit by emergency lights on the exterior of the facility and the control tower. Branching off of the catwalk to the west is a small platform. To the northeast is the control tower." The printed name of Catwalk4 is "Catwalk (above the yard))". West of Catwalk4 is Turret. Northeast of Catwalk4 is Control Tower.

[********** Turret **********]
Turret is a room. "This small balcony is attached precariously to the catwalk, and houses a deadly-looking weapons system. It's turned off, but you've seen it used before when there's any sign of trouble in the yard. When the guards are having a good day, they'll set it to stun. The catwalk meets up with this platform on the east side."

[********** Control Tower **********]
Control Tower is a room. "This is it, the literal and metaphorical center of the facility. All polished glass and shiny metal, with catwalks jutting out at odd angles. The heavy door in front of you doesn't budge when you try it, but one seems to be standing slightly ajar a few floors below. No doubt the work of some hasty guard. It looks like there's a route down, if you drop from catwalk to catwalk without falling to your death." Below Control Tower is Control Room. 
Before going down from Control Tower:
	say "You drop to the first catwalk below without much difficulty. The next one takes a bit of a swinging leap, and with the final drop you feel a sharp pain in your ankle. Nevertheless, this might be your best chance to get out, and you step through the door, closing it behind you."

[********** Control Room **********]
Control Room is a room. "You've never been here before, but you know exactly where you are. Here, near the top of an intimidating tower at the center of the facility, is the control room. Even before you were locked up, these sparkling achievements of technological advancement were known to you; they are admired by many outside of the facility (and even some inside it).[paragraph break]As the door swings shut behind you, all ambient sound is abruptly cut off. The lack of blaring alarms is deafening. In the center of the room, an elaborate [panel] with neat rows of buttons, switches, and keypads provides more illumination than the emergency lights overhead. Attached to it, like an obscenely large laptop, is a [screen] wider than your armspan.[paragraph break]On the west and north walls are metal doors." North of Control Room is Secret Hall. West of Control Room is Staircase1. Control Room parents Chapel. Control Room parents Freedom.
Inside Control Room is the panel and the screen. The panel and screen are fixed in place.
Instead of examining the panel:
	say "A dizzying array of controls. You're almost afraid to touch it. Since its conception, the simple control room setup has been discussed extensively. Detractors claimed that putting so much faith in technology would never pan out well, but their arguments became less and less relevant as it proved an effective and efficient solution. Really, with so little oversight needed, the panel is mostly a formality. Running your hands over the dials and levers, you wonder if anyone has even touched it before now."
Instead of examining the screen:
	say "You can't access anything without a passcode, which you of course don't know. The 'sleep' screen of this overgrown computer is an abstracted map of the facility, scattered with rooms, halls, and doors with little numbers next to them.[if Data Mining parents Control Room]Intriguingly, the [otherwise]The [end if]yard seems to be criss-crossed with paths that don't correspond to the catwalks.[if Visitation parents the Control Room] You recognize them as the tunnel system you took to get here."
[[using this: https://intfiction.org/t/i-just-want-to-create-a-door-with-a-password-answered/2273/3]
Before going north from the Control Room when the security door is locked:
	now the command prompt is "Please enter the passcode. >";
After reading a command when the command prompt is "Please enter the passcode. >":
	increment the turn count;
	if the player's command matches "721":
		now the security door is unlocked;
		say "Door successfully unlocked.";
		now the command prompt is ">";
	otherwise:
		say "That is incorrect.";
		now the command prompt is ">";]
Before going north from Control Room:
	If Freedom is explored:
		say "A strange impulse tells you not to go that way.";
		stop the action.
Before going west from Control Room:
	If Chapel is explored:
		say "A strange impulse tells you not to go that way.";
		stop the action.

Chapter 5 - choice 2b to choice 3a
[this section includes everything from the Guard Room up to and not including the Control Room]
[the full details of the Control Room are in the previous section]

[********** Guard Room **********]
Guard room is a room. "Little more than a human-sized box with a TV in the corner that shows the security feeds from the visitation room. Of course, right now the feeds show nothing interesting.[paragraph break]Strangely, a ladder with metal rungs is bolted into the corner, where it descends downward." Below Guard Room is Tunnel.
Before going southeast from Guard Room:
	say "A strange impulse tells you not to go that way.";
	stop the action.

[********** Tunnel **********]
Tunnel is a room. "You never knew that tunnels existed beneath the facility. The walls are rough stone, and it is just tall enough to stand without hunching over. Over the years, names and symbols have been gouged into the walls by bored facility guards. The tunnel continues to the northwest." Northwest of Tunnel is Tunnel3.

[Tunnel2 is a room. North of Tunnel2 is Tunnel3. Southwest of Tunnel2 is Storage Room2.

Storage Room2 is a room.]

[********** Tunnel3 **********]
Tunnel3 is a room. "You walk for several minutes, the tunnel occasionally turning slightly. Finally, you reach a door that is slightly open, and leads to the west." The printed name of Tunnel3 is "Tunnel (continued)". West of Tunnel3 is Control Tower Base.

[********** Control Tower Base **********]
Control Tower Base is a room. "A circular room with grand door on the north wall. The door you emerged from is a smaller one on the east side, and you realize that the tunnel must have been sloping upward throughout your journey, since this appears to be ground level.[paragraph break]An unoccupied security checkpoint is set up in front of the main door, and a spiral staircase leads upward." Above Control Tower Base is Control Room.
Instead of going north from the control tower base:
	say "You push and pull on the large door, to no avail. The guards aren't completely incompetent at locking up."

Chapter 6 - choice 2b to choice 3b
[this section includes everything from Hall3 up to and including the Power Source]

[********** Hall3 **********]
Hall3 is a room. "Yay more undefined rooms. Go north from here." [North of Hall3 is Hall4.]
Before going southwest from Hall3:
	say "A strange impulse tells you not to go that way.";
	stop the action.

[Hall4 is a room.] North of Hall3 is Power Source. [East of Hall4 is Power Overlook.

Power Overlook is a room.]

[********** Power Source **********]
Power Source is a room. "The lights here are so far overhead and so sparse that the room is barely navigable. It seems very quiet and still, other than the constant alarms, and the various machines that generate power for the facility don't seem to be functioning. It confirms what you thought from the beginning: this must be a power outage. There are doors to the northeast and west." Northeast of Power Source is Power1. West of Power Source is Hall5. Power Source parents YardW. Power Source parents Runoff.
Instead of going northeast from Power Source:
	say "Sorry, but this area is still under construction. Unfortunately, this means that you might not have major choices for a decent section of the game, depending on the path you took to get here. Hopefully it's still enjoyable!"
Before going west from Power Source:
	If YardW is explored:
		say "A strange impulse tells you not to go that way.";
		stop the action.
	
Chapter 7 - choice 2a to ending 1
[this section includes everything from Trackway up to and including Vehicle Bay]

[********** Trackway **********]
Trackway is a room. "Here, a small platform sits at the side of an indoor tunnel. [Tracks] for the security cars extend north. This system loops around the facility, and guards can access most important rooms from it; right now the tracks are safe to walk on, as the cars only run at certain hours." The printed name of Trackway is "Trackway (south)". North of Trackway is Tracks2.
Inside Trackway is the tracks. The tracks are fixed in place.
Instead of examining the tracks:
	say "Short metal ridges laid into the ground of the tunnel. Security cars have special grooves that allow them to speed along the tracks."
Before going south from Trackway:
	say "A strange impulse tells you not to go that way.";
	stop the action.

[********** Tracks2 **********]
Tracks2 is a room. "Although the tracks continue past this point, the west wall has another platform, which opens out to where you really want to go." The printed name of Tracks2 is "Trackway (north)". West of Tracks2 is Vehicle Bay.

[Entry is a room. North of Entry is Traffic Control. West of Entry is Vehicle Bay.

Traffic Control is a room.]

[********** Vehicle Bay **********]
Vehicle Bay is a room. "You step tentatively through the doorway. This is a vast covered parking lot, dotted with plug-in spots for cars. Family and friends arrive here when they have scheduled visitations with prisoners. You scan the area, stomach slowly sinking further and further as you confirm the worst: there are no vehicles that you could use to make a getaway.[paragraph break]Then, over the sound of the alarms, you hear an engine roar growing louder. A headlight precedes a motorcycle, and then another, and then another.[paragraph break]'Hey, look!' a voice echoes around the lot, and before you know it the motorcycles are in front of you, three guards are dismounting, and you're being wrestled to the ground.[paragraph break]A pins-and-needles feeling envelopes you, and your vision goes dark." Vehicle Bay is an ending.

Chapter 8 - choice 3a to ending 2
[this section includes everything from Staircase1 up to and including the Chapel]

[********** Staircase1 **********]
Staircase1 is a room. "The top of a short staircase. Further down, you suspect you'll reach the facility chapel." The printed name of Staircase1 is "Staircase". Below Staircase1 is Chapel Annex.
Before going east from Staircase1:
	say "A strange impulse tells you not to go that way.";
	stop the action.
	
[********** Chapel Annex **********]
Chapel Annex is a room. "I didn't get around to this room haha. Go north." [East of Chapel Annex is Behind the Stained Glass.] North of Chapel Annex is Chapel.

[Behind the Stained Glass is a room.]

[********** Chapel **********]
Chapel is a room. "You haven't been religious in a long time. During timeslots when most other prisoners are attending services, you angle for the better-paying data mine positions. It never hurts to have some extra credits on hand for unplanned phone calls or dessert at the mess hall.[paragraph break]Today though, despite the simplicity of the building, its underwhelming non-denominational altar, and the red light bathing everything, you feel comforted. You sit in a pew near the front, aware that you might never find your way out of this place. Rage is replaced by a hollow calmness.[paragraph break]You barely notice the main doors to the chapel slam open behind you, and you sit stoically as bright lights strobe over the room and guards stream in, holding down the perimeter. Someone grabs your arms and drags you backwards.[paragraph break]A pins-and-needles feeling envelopes you, and your vision goes dark." Chapel is an ending.

Chapter 9 - choice 3a to ending 3
[this section includes everything from Secret Hall up to and including Freedom (outside the prison)]

[********** Secret Hall **********]
Secret Hall is a room. "The hallway winds downward for ages. Eventually, you arrive at the entrance to a tunnel[if Visitation parents Control Room], similar to the one you took to get to the tower[end if].[if Data Mining parents Control Room] The walls are rough stone, and it is just tall enough to stand without hunching over. Over the years, names and symbols have been gouged into the walls by bored facility guards.[end if] The tunnel continues to the east." East of Secret Hall is Secret Tunnel.
Before going south from Secret Hall:
	say "A strange impulse tells you not to go that way.";
	stop the action.

[********** Secret Tunnel **********]
Secret Tunnel is a room. "For a while longer, you walk east. You don't know where this tunnel leads, or what your fate will be when you get there. Lost in musings, and no longer feeling hurried, you don't see the ladder until you're practically right in front of it. The ladder goes upward." Above Secret Tunnel is Freedom.[East of Secret Tunnel is Side Room. North of Secret Tunnel is Secret Tunnel2.

Side Room is a room.

Secret Tunnel2 is a room. Above Secret Tunnel2 is Freedom.]

[********** Freedom **********]
Freedom is a room. "You ascend out of the tunnel and are overcome with emotion. This is it. The first air you've breathed outside the prison for years. Above, a few stars poke through gloomy clouds. Behind you, tall concrete walls obscure all of the prison except the control tower, which rises elegantly upward. Ahead, a few sets of barely visible tire tracks cut through scraggly grass, and a grove of trees stands in silhouette in the distance.[paragraph break]Before you take your first step out of the stairway and onto firm ground, you're blinded by a spotlight from above. Squinting, and ears still ringing from the emergency alarms, you see a helicopter hovering overhead, eerily silent. As your eyes adjust, two trucks barrel toward you. Guards leap out, their boots crunching over grass which is sharply illuminated in a circle around you. Gloved hands grab your arms.[paragraph break]A pins-and-needles feeling envelopes you, and your vision goes dark." Freedom is an ending.

Chapter 10 - choice 3b to ending 4
[this section includes everything from Hall5 up to and including YardW]

[********** Hall5 **********]
Hall5 is a room. "This hallway heads west, toward the center of the facility. It ends at a doorway that leads west. Through it, you can feel a cool breeze." The printed name of Hall5 is "Hallway". West of Hall5 is YardE. [Northeast of Hall5 is Side Room2. North of Hall5 is Hall6.]
Before going east from Hall5:
	say "A strange impulse tells you not to go that way.";
	stop the action.

[Side Room2 is a room.

Hall6 is a room. West of Hall6 is YardE.]

[********** YardE **********]
YardE is a room. "The facility yard. This is where recreation takes place, though you haven't come through the main entrance for prisoners. Usually, the amount of credits you'd need to spend on rec slots is infuriating, but tonight the breath of fresh air is free. You stand against the facility wall, staying out of the better-lit yard area.[paragraph break]This section is fenced off, but you could definitely climb the chain-link to the west. Beyond that, it would be a clean dash to the main entrance of the facility. Now you just have to step away from the wall." The printed name of YardE is "Yard (east)". West of YardE is YardW.

[********** YardW **********]
YardW is a room. "Heart pounding, you dash away from the relative cover of the wall. You reach the chain-link fence that partitions the yard and start climbing easily enough. You're only halfway up when a floodlight turns on, and you instinctively shield your eyes.[paragraph break]Rapid footsteps thud toward you from several directions. By the time you lower your hand, guards are yanking you down and you land painfully on the ground. Heavy boots fill your field of vision.[paragraph break]A pins-and-needles feeling envelopes you, and your vision goes dark." The printed name of YardW is "Yard (west)". YardW is an ending.

Chapter 11 - choice 3b to ending 5
[this section includes everything from Power1 up to and including Runoff]

[********** Power1 **********]
Power1 is a room. Southeast of Power1 is Power2.

[********** Power2 **********]
Power2 is a room. East of Power2 is Power3.

[********** Power3 **********]
Power3 is a room. Southeast of Power3 is Runoff.

[********** Runoff **********]
Runoff is a room. "With a quiet splash, you drop into the water. It only rises to your waist, but the current is strong and cold; you adopt a half-walking, half-swimming method as you inch toward the maintenance walkway on the opposite side of the culvert. There are no alarms installed here, but your ears still ring.[paragraph break]From around the curve, you hear the echoes of rapid footsteps on the maintenance walkway. You know what it means, but the adrenaline insulates you from the inevitable, right up until you reach the walkway and gloved hands yank you upward. The guards snap you into cuffs, and you collapse against the wall.[paragraph break]A pins-and-needles feeling envelopes you, and your vision goes dark." Runoff is an ending. Runoff is visited.

Chapter 12 - the end
[the final scene]

[********** End Room **********]
End Room is a room. "The room is bright and expansive, lined wall-to-wall with server stacks. Its sole occupant, a disheveled late-shift worker, is sitting between the stacks taking a nap. A pleasant chime from the overhead speakers jolts him awake.[paragraph break]'Done already? Good girl,' he mutters, patting the nearest machine. He scratches his mostly bald head, then makes his way to a desk in one corner.[paragraph break]Sitting in front of a portly computer, he drags a new file labeled 'Power Outage' to the 'Simulations' folder. Briefly consulting a to-do list, he searches through the computer with rapid keystrokes, then hits enter with a bit of flair.[paragraph break]'Earthquake simulation initialized,' a pleasant robotic voice says over the speakers. The man plods back to the stacks and resumes his nap." The printed name of End Room is "Memory Bank".
After reading a command when the player is in End Room:
	end the story.

[ * * * * * * * * * * * * * * * * * * * * coding * * * * * * * * * * * * * * * * * * * * ]

[this recursive function takes a room r and traces it to all possible endings to determine
whether the player has explored it]
To decide if (r - a room) is explored:
	[base case: r is an ending room which has either been visited or not]
	If r is an ending:
		If r is visited:
			decide yes;
		Otherwise:
			decide no;
	[non-base case: r is not an ending, and for each room it parents we need to know whether
	the child room has been explored (i.e. we use this function recursively on those rooms)]
	Otherwise:
		[create a list of rooms parented by r]
		Let L be the list of the rooms which r relates to by the lineage relation;
		Let X be entry 1 of L;
		[this is a bit cheesy, but in the case of this game there is a maximum of two children
		for each parent room, so we can use an if statement & avoid more complex code]
		If the number of entries in L is 2:
			Let Y be entry 2 of L;
			[if both X and Y are explored, then r is explored. if either is not, r is not]
			If X is explored:
				If Y is explored:
					decide yes;
				Otherwise:
					decide no;
			Otherwise:
				decide no;
		[use a similar if-statement based just on X, if it is the only child]
		Otherwise:
			If X is explored:
				decide yes;
			Otherwise:
				decide no.

[this function takes an ending room and decides where the player should be reset to]		
[it's hardcoded/cheesy because there's only 3 layers]
To decide which room is the target room:
	Let P be the location of the player;
	Let Q be the parent of P;
	If Q is explored:
		If the parent of Q is explored:
			[if all endings have been reached, we go to the final scene]
			If Intersection is explored:
				decide on End Room;
			Otherwise:
				decide on Intersection;
		Otherwise:
			decide on the parent of Q;
	Otherwise:
		decide on Q.

[yay for helper functions!]
After reading a command when the player is in an ending:
	now the player is in the target room;
	reject the player's command.
