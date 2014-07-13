--Scripted By: Fatty Beerbelly, modified by Kilelen to finish Book of Turmoil

function event_say(e)
	
	if(e.message:findi("hail")) then
		e.self:Say("Greetings, " .. e.other:GetName() .. ", I am the Oracle of K'Aron. Do you quest for [knowledge] yourself, or do you offer that which I [seek].");
	end
	
	if(e.message:findi("knowledge")) then
		e.self:Say("I have lived long and have insight into many matters, yet I despise charity. To learn from me, you must first bring me that which I [seek].");
	end
	
	if(e.message:findi("seek")) then
		e.self:Say("I seek knowledge, which is superior to all things. And no knowledge is greater than that which is contained within the [Tome of Ages].");
	end
	
	if(e.message:findi("tome of ages")) then
		e.self:Say("The Tome of Ages has been compiled over the millennia by the Scribes of [Dal]. It was divided into seven distinct [books] by the scribes to keep the knowledge from one such as me. That said, with aid, I shall unite these books and the Tome of Ages shall be mine.");
	end
	
	if(e.message:findi("dal")) then
		e.self:Say("They were elves once, but now are Teir'Dal, and as evil as they are wise. Many tomes have they written, but none greater than the Tome of Ages.");
	end
	
	if(e.message:findi("books")) then
		e.self:Say("The seven books that make up the Tome of Ages are those of [Enlightenment], [Scale], [Turmoil], [Monuments], [Elders], [Blood], and the [Lost].");
	end
	
	if(e.message:findi("enlightenment")) then
		e.self:Say("I do not seek the Book of Enlightenment at this time, but I might have need of it in the future.");
	end
	
	if(e.message:findi("scale")) then
		e.self:Say("Ah, the Book of Scale.. It would be wondrous indeed if you could recover the Book of Scale for me. If you do manage to procure the Book of Scale, I will gladly part with an artifact of my own that may be of interest to you.");
	end
	
	if(e.message:findi("turmoil")) then
		e.self:Say("Ah, yes! The Book of Turmoil. I seek this book, and should you find it and return it to me, I will reward you with secret knowledge.");
	end
	
	if(e.message:findi("monuments")) then
		e.self:Say("I do not seek the Book of Monuments at this time, but I might have need of it in the future.");
	end
	
	if(e.message:findi("elders")) then
		e.self:Say("I do not seek the Book of Elders at this time, but I might have need of it in the future.");
	end
	
	if(e.message:findi("blood")) then
		e.self:Say("I do not seek the Book of Blood at this time, but I might have need of it in the future.");
	end
	
	if(e.message:findi("lost")) then
		e.self:Say("I do not seek the Lost Book at this time, but I might have need of it in the future.");
	end
	
	
end


function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.trade, {item1 = 18302})) then -- Book of Scale
		e.other:SummonItem(19072); -- Miragul's Phylactery
	end
	
	if(item_lib.check_turn_in(e.trade, {item1 = 18202})) then -- Book of Turmoil
		e.self:Say("Thank thee for this tome. Be sure to check back with me later, as I might have another task for thee.");
		e.other:SummonItem(10071); -- Glowing Torch
		e.other:Faction(236, 5);
		e.other:Faction(237, -10);
		e.other:AddEXP(72900); -- 10% of level 10 xp
	end
	
	item_lib.return_items(e.self, e.other, e.trade)
	
end


-- END of FILE Zone:oot  ID:69044 -- Oracle_ofK-Arnon.pl


-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
