--Quest Name: Necromancer Words - X`Ta Timpi
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("We three are the [Sisters Dark] - [Necromancy] is our Art - Bonded dead, they serve our will - No beat of heart, yet faithful still.");
	elseif(e.message:findi("sisters dark")) then
		e.self:Say("We three are the Sisters Dark - Keepers of the shadowed Dread - [Lore of Death]. we research now - Join with us and serve [the Dead].");
	elseif(e.message:findi("lore of death")) then
		e.self:Say("The Lore of Death is shadow bound - Its [words] are [hid]. yet shall be found - Through our research into the dark - Old hexes found and parchment marked.");
	elseif(e.message:findi("the dead")) then
		e.self:Say("The Dead are the shadowknights and necromancers of Neriak. They were formed by Queen Cristanos herself. Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate. I have heard they take orders only from the queen.");
	elseif(e.message:findi("necromancy")) then
		e.self:Say("Necromancy - Art of the Dead - Binding bones to serve your will - We research now the [Lore of Death] - Ancient spells with power still.");
	elseif(e.message:findi("hid")) then
		e.self:Say("The Words are hid in tomes of old - Their yielded lore worth more than gold - Though we search both 'fore and 'hind - [Components] we can not yet find.");
	elseif(e.message:findi("components")) then
		e.self:Say("We need components for research - These are things that you could find - In return for [tasks] that you perform - Words of [reward] we have in mind.");
	elseif(e.message:findi("tasks") or e.message:findi("reward")) then
		e.self:Say("Bring us components for our research - We give [Word]s by tasks performed - [Possession], [Detachment], [Allure], [Haunting], [Rupturing], [Dark Paths], [Suffering], [Collection], [Obligation], [Requisition] and [Acquisition].");
	elseif(e.message:findi("words of detachment")) then
		e.self:Say("From the Estate of Unrest, bring dull bone chips - From Castle Mistmoore, a dagger charred - From a merchant bring a stone of blood - Words of Detachment will be your reward.");
	elseif(e.message:findi("words of rupturing")) then
		e.self:Say("From the Estate of Unrest, bring a festering cloak - From Castle Mistmoore, ebon wands - From a merchant bring a jasper stone - Then Words of Rupturing will to you be given.");
	elseif(e.message:findi("words of requisition")) then
		e.self:Say("From the Plane of Fear, bring an Eye of Fright and a Stone of the Wraith - From a merchant bring a pearl - Then Words of Requisition will to you be given.");
	elseif(e.message:findi("words of suffering")) then
		e.self:Say("From Befallen, bring Iced Bone Chips - From spectres, bring a Globe of Fear - From a merchant bring a Star Rose Quartz - Then Words of Suffering will to you be given.");
	elseif(e.message:findi("words of possession")or e.message:findi("words of allure") or e.message:findi("words of dark paths") or e.message:findi("words of haunting") or e.message:findi("words of obligation") or e.message:findi("words of collection") or e.message:findi("words of acquisition")) then
		e.self:Say("The answer to that question is held by another - Ask again of my sister...");
	end
end

function event_trade(e)
	local item_lib = require("items");

	--Words of Detachment
	--Requires: 1 Charred Dagger, 1 Bloodstone, 2 Dull Bone Chips
	if(item_lib.check_turn_in(e.trade, {item1 = 7036, item2 = 10019, item3 = 10517, item4 = 10517})) then
		e.self:Say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
		e.other:SummonItem(11835);
		e.other:Faction("322","10"); 	-- The Dead
		e.other:Faction("268","10"); 	-- Queen Cristanos Thex
		e.other:Faction("177","-10"); 	-- King Naythox Thex
		e.other:Faction("170","-10"); 	-- Keepers of the Art
		e.other:Faction("91","-10"); 	-- Eldritch Collective
		e.other:Faction("260","-10"); 	-- Primordial Malice
		e.other:AddEXP(62000); 			--Approx half a blue at level 31
		e.other:Ding();
	--Words of Rupturing
	--Requires: 1 Festering Cloak, 1 Jasper, 2 Ebon Wands
	elseif(item_lib.check_turn_in(e.trade, {item1 = 1343, item2 = 10020, item3 = 10515, item4 = 10515})) then
		e.self:Say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
		e.other:SummonItem(11837);
		e.other:Faction("322","10"); 	-- The Dead
		e.other:Faction("268","10"); 	-- Queen Cristanos Thex
		e.other:Faction("177","-10"); 	-- King Naythox Thex
		e.other:Faction("170","-10"); 	-- Keepers of the Art
		e.other:Faction("91","-10"); 	-- Eldritch Collective
		e.other:Faction("260","-10"); 	-- Primordial Malice
		e.other:AddEXP(62000); 			--Approx half a blue at level 31
		e.other:Ding();
	--Words of Requisition
	--Requires: 1 Eye of Fright, 1 Stone of the Wraith, 1 Pearl
	elseif(item_lib.check_turn_in(e.trade, {item1 = 13151, item2 = 10298, item3 = 10024})) then
		e.self:Say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
		e.other:SummonItem(11865);
		e.other:Faction("322","10"); 	-- The Dead
		e.other:Faction("268","10"); 	-- Queen Cristanos Thex
		e.other:Faction("177","-10"); 	-- King Naythox Thex
		e.other:Faction("170","-10"); 	-- Keepers of the Art
		e.other:Faction("91","-10"); 	-- Eldritch Collective
		e.other:Faction("260","-10"); 	-- Primordial Malice
		e.other:AddEXP(62000); 			--Approx half a blue at level 31
		e.other:Ding();
	--Words of the Suffering
	--Requires: 1 Globe of Fear, 1 Star Rose Quartz, 2 Iced Boned Chips
	elseif(item_lib.check_turn_in(e.trade, {item1 = 10521, item2 = 10021, item3 = 10519, item4 = 10519})) then
		e.self:Say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
		e.other:SummonItem(11851);
		e.other:Faction("322","10"); 	-- The Dead
		e.other:Faction("268","10"); 	-- Queen Cristanos Thex
		e.other:Faction("177","-10"); 	-- King Naythox Thex
		e.other:Faction("170","-10"); 	-- Keepers of the Art
		e.other:Faction("91","-10"); 	-- Eldritch Collective
		e.other:Faction("260","-10"); 	-- Primordial Malice
		e.other:AddEXP(62000); 			--Approx half a blue at level 31
		e.other:Ding();
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

--Author: Blaz
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
