function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hail, young adventurer! I'm the chief overseer o' the Shamans o' Justice. We serve the will o' the Tribunal. Justice is our way. Within Halas, there are none who are above the scales o' justice. There are still some who have defied our laws. We wish to [apprehend the fugitives].");
	elseif(e.message:findi("apprehend the fugitives")) then
		e.self:Say("Maybe so, however, there are some who may be too much fer ye to handle. I'll need to know if ye're a [young shaman] or a [standin' member of the court].");
	elseif(e.message:findi("young shaman")) then
		e.self:Say("We seek a former member who dared to curse the righteousness of the Tribunal. We'll have his head for that remark. His name is Granin O'Gill and he has run to the wastelands of Everfrost seeking safe haven. Find him. Return his head to me. Do so, and earn the ninth circle spell, Spirit o' the Bear. Go at once!");
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.trade, {item1 = 13729})) then 								--Barbarian Head
		e.self:Say("We can now rest assured that justice has been served. Ye'll be a valuable asset to our court.");
		e.other:AddEXP(1600);
		e.other:Ding();
		e.other:GiveCash(math.random(99),math.random(99),eq.ChooseRandom(3,4,5),0);
		e.other:Faction(213,2); 															--Merchants of Halas
		e.other:Faction(294,2); 															--Shamen of Justice
		e.other:Faction(33,-3); 															--Circle of Unseen Hands
		e.other:Faction(48,-3); 															--Coalition of Tradefolk Underground
		e.other:Faction(137,-3); 															--Hall of the Ebon Mask
		if(e.other:Class() == "Shaman" or e.other:Class() == "Beastlord") then
			-- : Drowsy : Frost Rift : Sicken : Fleting Fury : Spirit of Bear : Cure Blindness : Spirit Sight : In that order
			local spellreward = eq.ChooseRandom(15270,15275,15075,15271,15279,15212,15079);
			local dialog0;
			local dialog1 = "Drowsy ";
			local dialog2 = "Frost Rift";
			local dialog3 = "Sicken";
			local dialog4 = "Fleeting Fury";
			local dialog5 = "Spirit o' the Bear"; --check dialog with alla or live
			local dialog6 = "Cure Blindness";
			local dialog7 = "Spirit Sight";
			if(spellreward == 15270) then
				dialog0 = dialog1;
			elseif(spellreward == 15275) then
				dialog0 = dialog2;
			elseif(spellreward == 15075) then
				dialog0 = dialog3;
			elseif(spellreward == 15271) then
				dialog0 = dialog4;
			elseif(spellreward == 15279) then
				dialog0 = dialog5;
			elseif(spellreward == 15212) then
				dialog0 = dialog6;
			elseif(spellreward == 15079) then
				dialog0 = dialog7;
			end
			e.self:Say("Take and remember this spell, " .. dialog0 .. ", I hope ye've attained the necessary skills to scribe it.  If not, I'm sure ye soon will. Go now, and serve justice.");
			e.other:SummonItem(spellreward);
		end
	end
	if(item_lib.check_turn_in(e.trade, {item1 = 18761})) then
		e.self:Say("Welcome t' the Church o' the Tribunal. Here, we practice the will o' the Six Hammers. This is our guild tunic - wear it with pride and represent us well.");
		e.other:Ding();
		e.other:Faction(294, 100);   														-- Shamen of Justice
		e.other:Faction(213, 15);   														-- Merchants of Halas
		e.other:Faction(33, -15);   														-- Circle of Unseen Hands
		e.other:Faction(48, -15);   														-- Coalition of Tradefolk Underground
		e.other:Faction(90, -20);   														-- Ebon Mask
		e.other:SummonItem(13512); 															-- Faded Blue Tunic
		e.other:AddEXP(100);        														-- Give exp for turning in quest
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-- modified by Speedz
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
