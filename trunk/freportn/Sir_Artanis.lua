function event_say(e)
	if(e.message:findi("befallen")) then
		e.self:Say("You did well to ride swiftly with this news. I must take this directly to Valeron Dushire. If you learn more about this plot that would unleash this monster upon Norrath or wish to someday soon aid the Knights of Truth in putting down this evil, then return to speak to me again at a later time.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.trade, {item1 = 31492})) then
		e.self:Say("It was a fine and valiant steed to serve its master beyond the grave, but it looks to be near its end. But I have a fine eye for horses, and I dare say it will serve you one more time.");
		e.other:SummonItem(31496);
		e.other:Ding();
		e.other:Faction(184,1,0);
		e.other:Faction(86,-3,0);
		e.other:Faction(105,-3,0);
		e.other:Faction(258,1,0);
		e.other:Faction(311,1,0);
		e.other:AddEXP(6400);
	elseif(item_lib.check_turn_in(e.trade, {item1 = 18474})) then
		e.self:Say("By Marr, what is this? .. Burning Dead .. .. Marnek! By my blade this must be stopped! Where did you find this?");
		e.other:Ding();
		e.other:Faction(184,1,0);
		e.other:Faction(86,-3,0);
		e.other:Faction(105,-3,0);
		e.other:Faction(258,1,0);
		e.other:Faction(311,1,0);
		e.other:AddEXP(6400);
		e.other:GiveCash(10,6,0,0);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
