#BeginFile lakerathe\Kazen_Fecae.pl
#Quest for Lake Rathetear - Kazen Fecae: Necromancer Epics (1.0, Pre & 1.5)

sub EVENT_SAY {
  if($text=~/hail/i) {
    quest::emote("'s eyes seem to glow as he turns to you and says, 'Leave me be if you have no reason to be here, mortal!'");
  }
  if($text=~/dark arts/i) {
    if($class eq "Necromancer" && $ulevel >= 50) {
      quest::emote("looks you up and down, his eyes glowing with a soft red light. After a moment he begins to speak though his lips do not move. 'You wish to study under me? Perhaps, if you prove yourself to follow the twisted path. If you prove to be as coldhearted as I then I will let you become my servant.'");
    }
    else {
      quest::say("Ha! You call yourself a Necromancer? Come back when you have tortured a few more souls!");
    }
  }
  if($text=~/prove/i) {
    quest::say("The wandering knight, Sir Edwin Motte, recently slew one of my lesser servants. This foolish knave travels from town to town pretending to be good. Separate his head from his body and return it to me so I may work my magics upon it. This fool will become another plaything for me, even in death.");
  }
  if($text=~/advance/i) {
    quest::say("I share great secrets with my more powerful servants who show me they are willing to serve without question. Tell my servant the name of any symbol he gives you and he will instruct you. If I give you a symbol, speak its name to me so I may instruct you.");
  }
  if($text=~/symbol of apprentice/i) {
    quest::say("You have a long way to go before I teach you the true secrets of life and death. Visit Venenzi Oberendi in the Nektulos Forest and show her the symbol. She is collecting reagents for one of my experiments and is taking far too long. I do not wish her dead, yet, I simply need the reagents soon. Retrieve the reagents and give them to my assistant Emkel Kabae. I do not wish to handle them myself.");
  }
  if($text=~/reagents/i) {
    quest::say("'The reagents are the same types the great sorcerer Miragul used to cheat death and become a lich. I do not wish to become a lich as Miragul did, I have greater aspirations than to simply live forever as a hollow shell. I will rise up a being of pirit only, with a will off my own.' Kazen's eyes glow sickly red as he stared off toward the horizon.");
  }
  if($text=~/symbol of testing/i) {
    quest::say("Show me that you can overcome larger obstacles and manipulate servants. Gather a force for of mercenaries if you like, or so-called friends, if you desire, and prepare for battle, my promising young student. Return to me with the symbol of testing when you are prepared for battle with my creations. Have no fear, I will not slay you myself. If you do live, tell me the name of the symbol you receive.");
  }
  if($text=~/symbol of insanity/i) {
    quest::say("It is time for you to meet my partner, so to speak. Drendico Metalbones is his name and I assure you he is quite mad. His mind has been rended by fright, dread, and terror in his trips to the planes and his heart is full of hatred now. He has a tome which I wish you to use. Show him your symbol slowly and listen to his rantings well, they hide great knowledge.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 20641 => 1)) { #Head of Sir Edwin Motte
    quest::say("'Excellent!' You watch Kazen hold the head by the hair and begin to cast a spell. A flash of darkness centers around the head, and the eyes of the dead knight open, a terrible scream emanating from its lips. 'This poor fool here - I think I will keep him in my bag from now on. You have done well, my new apprentice. Take this symbol and know that you can do other tasks to advance within my apprentice ranks.'");
    quest::exp(5000);
    quest::summonitem(20642); #Symbol of the Apprentice
  }
  elsif(plugin::check_handin(\%itemcount, 20647 => 1)) { #Symbol of Testing
    quest::say("As you hand Kazen the symbol, you hear him speak directly into your mind. 'Good luck, my student!' Kazen finishes an incantation and suddenly hands begin to reach up from the ground, as if they were pulling themselves from the grave all around you. A piercing scream fills the air as the creatures advance upon you!");
    quest::spawn2(51153,0,0,-1498.9,283.8,58.4,57.6); #a bone golem
  }
  elsif(plugin::check_handin(\%itemcount, 20653 => 1)) { #Prepared Reagent Box
    quest::emote("stares through you at the horizon, pausing as he reaches into his robes. Kazen pulls out a scythe with a shimmering black blade that seems too large to have been hidden there. As quickly and gracefully as it was displayed to you, it is returned to the void inside Kazen's robes. 'It is a creation of Miragul which was looted from his lair under the ice. Take this tome, it will be your final task for me as an apprentice.'");
    quest::exp(10000);
    quest::summonitem(18087); #Tome of Instruction
  }
  elsif(plugin::check_handin(\%itemcount, 20652 => 1)) { #Gkzzallk in a Box
    quest::emote("grins wildly and his eyes flare a deep red. The scythe he promised you flies through the air and into your hand. 'Enjoy your toy, I have no more need of you as a servant.'");
    quest::exp(10000);
    quest::summonitem(20544); #Scythe of the Shadowed Soul
  }
  plugin::return_items(\%itemcount);
}
#EndFile lakerathe\Kazen_Fecae.pl (51048)