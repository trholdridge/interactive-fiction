"main project shell" by Tulasi Holdridge


[**********setup stuff**********]
Lineage relates one room (called parent) to various rooms. The verb to parent means the lineage relation.
A room can be an ending. A room can be a choice.

[Since two rooms lead to Choice3a, this workaround is needed]
Before going to Choice2a:
	If Choice3a has not been visited:
		now Choice2a parents Choice3a;
Before going to Choice2b:
	If Choice3a has not been visited:
		now Choice2b parents Choice3a;

[the player can't redo paths they've already taken]
Before going to a room (called N):
	If N is explored:
		say "Sorry, you've made this choice before.";
		stop the action.


[**********room stuff**********]
Cell is a room. North of the cell is Choice1.

Choice1 is a room. "Now at choice 1. Children: [list of the rooms which location relates to by the lineage relation]. Parent: [parent of location]." Northeast of Choice1 is Choice2a. Northwest of Choice1 is Choice2b. Choice1 parents Choice2a. Choice1 parents Choice2b. Choice1 is a choice.

Choice2a is a room. "Now at choice 2a. Children: [list of the rooms which location relates to by the lineage relation]. Parent: [parent of location]." Northeast of Choice2a is Ending1. Northwest of Choice2a is Choice3a. Choice2a parents Ending1.  Choice2a is a choice.

Choice2b is a room. "Now at choice 2b. Children: [list of the rooms which location relates to by the lineage relation]. Parent: [parent of location]." Northeast of Choice2b is Choice3a. Northwest of Choice2b is Choice3b. Choice2b parents Choice3b. Choice2b is a choice.

Choice3a is a room. "Now at choice 3a. Children: [list of the rooms which location relates to by the lineage relation]. Parent: [parent of location]." Northeast of Choice3a is Ending2. Northwest of Choice3a is Ending3. Choice3a parents Ending2. Choice3a parents Ending3. Choice3a is a choice.

Choice3b is a room. "Now at choice 3b. Children: [list of the rooms which location relates to by the lineage relation]. Parent: [parent of location]." Northeast of Choice3b is Ending4. Northwest of Choice3b is Ending5. Choice3b parents Ending4. Choice3b parents Ending5. Choice3b is a choice.

Ending1 is a room. "You have reached ending 1." Ending1 is an ending.
Ending2 is a room. "You have reached ending 2." Ending2 is an ending.
Ending3 is a room. "You have reached ending 3." Ending3 is an ending.
Ending4 is a room. "You have reached ending 4." Ending4 is an ending.
Ending5 is a room. "You have reached ending 5." Ending5 is an ending.


[**********wacky coding stuff**********]
[mostly drawing from Inform 7 for Programmers]
To decide if (r - a room) is explored:
	If r is an ending:
		If r is visited:
			decide yes;
		Otherwise:
			decide no;
	Otherwise:
		Let L be the list of the rooms which r relates to by the lineage relation;
		Let X be entry 1 of L;
		If the number of entries in L is 2:
			Let Y be entry 2 of L;
			If X is explored:
				If Y is explored:
					decide yes;
				Otherwise:
					decide no;
			Otherwise:
				decide no;
		Otherwise:
			If X is explored:
				decide yes;
			Otherwise:
				decide no.
		
[hardcoded because there's only 3 layers]
To decide which room is the target room:
	Let P be the location of the player;
	Let Q be the parent of P;
	If Q is explored:
		If the parent of Q is explored:
			decide on Choice1;
		Otherwise:
			decide on the parent of Q;
	Otherwise:
		decide on Q.

[yay for helper functions!]
Instead of listening:
	If the player is in an ending:
		now the player is in the target room.