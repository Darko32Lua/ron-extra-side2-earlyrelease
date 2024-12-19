-- Event Working
startValue = 0

function onCreate()
	-- Bar Sprites
	makeLuaSprite('topBar', 'empty', -1080, -420)
	makeGraphic('topBar', 4160, 360, '000000')
	setProperty('topBar.camera', instanceArg('camHUD'), false, true)
	addLuaSprite('topBar', false)

	makeLuaSprite('bottomBar', 'empty', -1080, 920)
	makeGraphic('bottomBar', 4160, 360, '000000')
	setProperty('bottomBar.camera', instanceArg('camHUD'), false, true)
	addLuaSprite('bottomBar', false)
end

function onUpdate()
	-- START
	if startValue == 1 then
		doTweenAlpha('TopBarAppear', 'topBar', 1, 0.5, 'sineOut')
		doTweenAlpha('BottomBarAppear', 'bottomBar', 1, 0.5, 'sineOut')
		doTweenY('TopBarStart', 'topBar', -200, 0.5, 'sineOut')
		doTweenY('BottomBarStart', 'bottomBar', 600, 0.5, 'sineOut')
	end

	if downscroll and startValue == 1 then
		doTweenAlpha('TopBarAppear', 'topBar', 1, 0.5, 'sineOut')
		doTweenAlpha('BottomBarAppear', 'bottomBar', 1, 0.5, 'sineOut')
		doTweenY('TopBarStart', 'topBar', -200, 0.5, 'sineOut')
		doTweenY('BottomBarStart', 'bottomBar', 600, 0.5, 'sineOut')
	end

	-- END
	if startValue == 2 then
		doTweenAlpha('TopBarVanish', 'topBar', 0, 0.5, 'sineOut')
		doTweenAlpha('BottomBarVanish', 'bottomBar', 0, 0.5, 'sineOut')
		doTweenY('TopBarEnd', 'topBar', -420, 0.5, 'sineOut')
		doTweenY('BottomBarEnd', 'bottomBar', 920, 0.5, 'sineOut')
	end

	if downscroll and startValue == 2 then
		doTweenAlpha('TopBarVanish', 'topBar', 0, 0.5, 'sineOut')
		doTweenAlpha('BottomBarVanish', 'bottomBar', 0, 0.5, 'sineOut')
		doTweenY('TopBarEnd', 'topBar', -420, 0.5, 'sineOut')
		doTweenY('BottomBarEnd', 'bottomBar', 920, 0.5, 'sineOut')
	end
end

function onEvent(name, value1)
	-- Event Working
	if name == 'Cinematic_Bars' then
		startValue = tonumber(value1)
	end
end
