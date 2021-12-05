--Last Edited 10/12/21 by SaturnSpades
--Tricky mod credits will be put here temporarily until in-game credits can be modified within Lua
--Tricky Mod Developers: Banbuds, Rosebud, KadeDev, CVal, YingYang48, JADS, Moro
--Special Thanks: Tom Fulp, Krinkels, GWebDev, Tsuraran
function onCreate()
	--Create Background sprites
	makeLuaSprite('red', '', -1200, -650);
	luaSpriteMakeGraphic('red', 4000, 2000, '290c0c')
	setLuaSpriteScrollFactor('red', 0.9);
	
	makeLuaSprite('island_but_red', 'island_but_red', -3400, -800);
	scaleLuaSprite('island_but_red', 2, 2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		--Low Quality mode not yet implemented
	end

	addLuaSprite('red', false);
	addLuaSprite('island_but_red', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end