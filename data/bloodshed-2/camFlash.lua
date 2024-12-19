local isPlayed = false
local notPlayed = true

function camFlash(length)
makeLuaSprite('flash', 'effects/flash', 0, 0)
addLuaSprite('flash', true)
setProperty('flash.camera', instanceArg('camOther'), false, true)
doTweenAlpha("cameraflash", 'flash', 0, length, linear)
end

function onUpdatePost()
angle = getProperty('rSlashHesMad2.angle')
setProperty('rSlashHesMad2.angle', angle + 15)
	if curStep >= 246 and curBeat >= 66 and notPlayed then
	camFlash(1)
	notPlayed = false
	end
	if curStep >= 1444 and curBeat >= 361 and not isPlayed then
	camFlash(1)
	isPlayed = true
	end
end