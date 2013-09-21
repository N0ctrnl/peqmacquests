function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say(string.format("Yes. yes. yes.  Hail to you. too, %s.  Now, quit bugging me!",e.other:GetName()));
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.trade, {item1 = 18855})) then
		e.self:Say("Welcome, friend. I see more than a slight glimmer of hate in your eyes. Good... for we have much work to do.");
		e.other:SummonItem(13565);
		e.other:Ding();
		e.other:Faction(86,10,0);
		e.other:Faction(184,-15,0);
		e.other:Faction(235,10,0);
		e.other:AddEXP(100);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-- END of FILE Zone:freporte  ID:10121 -- Heneva_Jexsped


