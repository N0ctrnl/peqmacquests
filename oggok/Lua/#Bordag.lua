function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.trade, {item1 = 18846})) then --A tattered note
		e.self:Say("You strong and mean like bear!  You wear bear fur so all know you beastlord o' da Feerrott!  Talk to Grapok and get to work!");
		e.other:SummonItem(13575); 	--Bear Fur Tunic
		e.other:Ding();
		e.other:Faction(295,15); 	-- Shaman of War
		e.other:AddEXP(100);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------