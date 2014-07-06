function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hello. I would shake your hand, but it would [hurt]. Ooooh! Owwy!");
	elseif(e.message:findi("hurt")) then
		--Bandages for Honeybugger (START)
		e.self:Say("I was attacked by the bixies. They swarmed on me!! I think I got too near their queen. I need that honey to make a living! Get me a bandage and I will tell you where all their worker bee's buzz around.");
	elseif(e.message:findi("I need the honeycomb")) then
		e.self:Say("If you're looking for the honeycombs, I don't have any right now. I have been unable to get any since I was attacked by the little [buggers]. I will tell you where to get some if you will only get me a bandage for my bites.");
	elseif(e.message:findi("what buggers")) then
		e.self:Say("I was attacked by the bixies. They swarmed on me!! I think I got too near their queen. I need that honey to make a living! Get me a bandage and I will tell you where all their worker bees buzz around.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	local bandage = 0;
	--Handin: Bandage
	if(item_lib.check_turn_in(e.trade, {item1 = 13009, item2 = 13009, item3 = 13009, item4 = 13009})) then
		bandage=4;
	end
	if(item_lib.check_turn_in(e.trade, {item1 = 13009, item2 = 13009, item3 = 13009})) then
		bandage=3;
	end
	if(item_lib.check_turn_in(e.trade, {item1 = 13009, item2 = 13009})) then
		bandage=2;
	end
	if(item_lib.check_turn_in(e.trade, {item1 = 13009})) then
		bandage=1;
	end
	if(bandage > 0) then
		for i = 1, bandage do
			--Bandages for Honeybugger (END)
			e.self:Say("Oh thank you, " .. e.other:GetName() .. ". If you are ever going to gather bixie honeycomb's pray you do not run into the queen. The only way I know of collecting the honey is by intercepting the drone's and taking the honeycomb's they sometime's carry. Good luck!!");
			e.other:AddEXP(10);
			e.other:Faction(77,10);   -- +Deeppockets
			e.other:Faction(133,10);  -- +Guardians of the Vale
			e.other:Faction(208,10);  -- +Mayor Gubbin
			e.other:Faction(218,10);  -- +Merchants of Rivervale
			e.other:Faction(369,-10); -- -Coalition of Trade Folk III
			e.other:Ding();
		end
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
