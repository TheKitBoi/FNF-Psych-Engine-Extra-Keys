--Last Edited 10/12/21 by SaturnSpades
--Tricky mod credits will be put here temporarily until in-game credits can be modified within Lua
--Tricky Mod Developers: Banbuds, Rosebud, KadeDev, CVal, YingYang48, JADS, Moro
--Special Thanks: Tom Fulp, Krinkels, GWebDev, Tsuraran
function onCreate()
	--Create Background sprites
	makeLuaSprite('bg', 'bg', -1100, -650);
	setLuaSpriteScrollFactor('bg', 0.9);
	scaleLuaSprite('bg', 1.4, 1.4);
	
	makeLuaSprite('island_but_dumb', 'island_but_dumb', -1900, -800);
	scaleLuaSprite('island_but_dumb', 1.4, 1.4);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		--Low Quality mode not yet implemented
	end

	addLuaSprite('bg', false);
	addLuaSprite('island_but_dumb', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end