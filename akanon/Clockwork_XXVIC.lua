function event_trade(e)
	local item_lib = require("items");
	if (item_lib.check_turn_in(e.trade, {item1 = 13844})) then
		e.self:Say("Tick.. Pop.. Access granted.");
		e.other:Faction(176,1,0);
		e.other:Faction(91,1,0);
		e.other:Faction(115,1,0);
		e.other:Faction(71,-1,0);
		e.other:Faction(209,-1,0);
		e.other:QuestReward(e.self,0,0,0,0,13211,10);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
