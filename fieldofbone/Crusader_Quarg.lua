--Quests covered in this file:
--Shaman Skull Quest 3
--Shaman Skull Quest 4
function event_say(e)
	--Shaman Skull Quest No.3 Event_Say
	if(e.message:findi("collect the Crusaders of Rok Nilok?") and e.other:GetFaction(e.self) < 6 and tonumber(qglobals.shmskullquest) > 5) then
		e.self:Say("Seek out Mystic Dovan in the swamp garrison, he will have information of the Crusaders.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	--give Crusader Quarg the note that Hierphant Zand gave to you
	if(item_lib.check_turn_in(e.trade, {item1 = 18054}) and e.other:GetFaction(e.self) < 6 and tonumber(qglobals.shmskullquest) > 3) then
		e.self:Say("Ah, i see you have proven yourself to Zand and he wishes to see more of your prowess.  go to the Tower of Kurn and bring him the Skulls of the Caste of Bone Brethren, a caste of powerful shamans who perished fighting undead in the Field of Bone several decades ago.");
		e.other:Faction(282, 10); --Scaled Mystics
		e.other:Faction(193, 10); --Legion of Cabilis
		e.other:QuestReward(e.self,0,0,0,0,17034,10000); --Give the player a six slot container to combine the 5 skulls with an "X" in
		eq.set_global("shmskullquest","5",5,"F"); --set a global flag so that user can do shm skull quest part 3.3
	--turn in the Full C.O.B.B. Chest and your Iron Cudgel of the Seer
	elseif(item_lib.check_turn_in(e.trade, {item1 = 12735, item2 = 5142}) and e.other:GetFaction(e.self) < 6 and shmskullquest > 4) then
		e.self:Say("The temple shall be pleased. As instructed by the Hierophants, here is your Iron Cudgel of the Mystic. You have done well that I must ask you to [collect the Crusaders of Rok Nilok]. Take this chest. Inside you shall combine the skull of their leader and at least five of the caste members. You then will go to the Swamp Garrison and deliver the full chest and your Iron Cudgel of the Mystic to Mystic Dovan. Go to him now and inquire of the Crusaders of Rok Nolok.");
		e.other:Faction(282, 10); --Scaled Mystics
		e.other:Faction(193, 10); --Legion of Cabilis
		e.other:SummonItem(5143); --Give the player the Iron Cudgel of the Mystic
		e.other:QuestReward(e.self,0,0,0,0,17035,100000); --Give the player A Skull Chest (C.O.R.N. Chest) to combine Tiny Glowing Skulls in
		eq.set_global("shmskullquest","6",5,"F"); --set a global flag so that user can do shm skull quest part 4
	end
	item_lib.return_items(e.self, e.other, e.trade) --return items if not the ones required
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
