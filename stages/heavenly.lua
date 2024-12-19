function onCreate()
	makeLuaSprite('heaven1', 'backGrounds/heavenRon_ground',-430,-500);  --if it is in a separate folder use 'folder/image' for it	
	makeLuaSprite('heaven2', 'backGrounds/heavenlySatan', 215, 0);
	scaleObject('heaven2', 0.9, 0.9);
	scaleObject('heaven1', 2, 2);
	setScrollFactor('heaven2', 0.35, 1.0);
	addBg(true)
end

--[[function hideBg(bool)
	if bool then
	removeLuaSprite('rSlashHesMad1')
	removeLuaSprite('rSlashHesMad2')
	--add your bg sprites here
	end
end]]--

function addBg(bool2)
	if bool2 then
	addLuaSprite('heaven2', false)
	addLuaSprite('heaven1', false)
	--add your bg sprites here
	end
end

function onUpdate(pingMs)
beat = (getSongPosition()/10) / (60/bpm)
makeLuaSprite('ohNo', 'effects/explodeInHeaven', -650, -400)
addLuaSprite('ohNo', false)
setProperty('ohNo.camera', instanceArg('camOther'), false, true)
setProperty('ohNo.alpha', (0.85 - getProperty('health')/3) + math.sin(beat/75)/7.5)
scaleObject('ohNo', 1.0, 1.0)
end

function onGameOverStart() --fix lol
removeLuaSprite('ohNo')
close(true)
end