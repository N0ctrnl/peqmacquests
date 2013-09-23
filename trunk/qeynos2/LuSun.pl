sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Ah.. Greetings.. I am Lu'Sun, Guild Master of the Silent Fist Clan. Here, our goal is to train our body, mind, and soul to the peak of perfection.");
	}
	if ($text=~/tomer instogle/i) {
		quest::say("Tomer? I think Seta needs someone to go find him.. Go ask her.");
	}
}

sub EVENT_ITEM {
	if(plugin::check_handin(\%itemcount, 18712 => 1)) { #Note with Fist Insignia
		quest::say("Greetings, and welcome to the Silent Fist Clan. Don our guild tunic, purge your mind and soul, and begin your lifelong devotion to the Clan. Brother Esrinap will introduce you to our lifestyle and begin your training. Be sound, allow your spirit to open up and guide you.");
		quest::summonitem(13507);  # Torn Cloth Tunic*
		quest::ding();
		quest::faction(300,10);  # Silent Fist Clan faction
		quest::faction(135,10);  # Guards of Qeynos faction
		quest::faction(12,10); # Ashen Order faction
		quest::exp(100);
	}
	#do all other handins first with plugin, then let it do disciplines
	plugin::try_tome_handins(\%itemcount, $class, 'Monk');
	plugin::return_items(\%itemcount);
}

#END of FILE Zone:qeynos2  ID:2077 -- LuSun