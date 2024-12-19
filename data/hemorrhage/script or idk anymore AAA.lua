function onUpdatePost()
theTime = mathfloor(curStep/8)
--debugPrint(theTime)
lol()
if theTime < 16 then
hideBg(true)
doTweenAlpha('tweenAlphaDad', 'dad', 0, 0.000001, easeOut)
doTweenAlpha('tweenAlphaBf', 'boyfriend', 0, 0.000001, easeOut)
doTweenAlpha('tweenAlphaGf', 'gf', 0, 0.000001, easeOut)
end
 if theTime > 15 then
 addBg(true)
 doTweenAlpha('tweenAlphaDad', 'dad', 1, 0.000001, easeOut)
 doTweenAlpha('tweenAlphaBf', 'boyfriend', 1, 0.000001, easeOut)
 doTweenAlpha('tweenAlphaGf', 'gf', 0, 0.000001, easeOut)
 end
end

function round(a)
return math.floor(a+0.5)
end

function mathfloor(b)
return math.floor(b)
end

function lol()
timeLol = round((141000 - getSongPosition())/1000)
setProperty('timeTxt.text', "UNFORGIVABLE SCRIPT 2 ON")
scaleObject('healthBar', 2, 1)
setProperty('healthBar.x', -275)
setProperty('healthBar.y', 65)
setProperty('iconP1.x', 1130)
setProperty('iconP2.x', 0)
setTextWidth('timeTxt', 900)
setProperty('timeTxt.x', 180)
setProperty('timeTxt.y', 676)
--debugPrint(getProperty('healthBar.y')) --another debug
	if getProperty('health') > 0.15 then
	setProperty('health', getProperty('health') + -0.1)
	end
end

function hideBg(bool)
	if bool then
	removeLuaSprite('rSlashHesMad1')
	removeLuaSprite('rSlashHesMad2')
	--add your bg sprites here
	end
end

function addBg(bool2)
	if bool2 then
	makeLuaSprite('rSlashHesMad1', 'backGrounds/madRonV1_ground',-430,-210);  --if it is in a separate folder use 'folder/image' for it	
	makeLuaSprite('rSlashHesMad2', 'backGrounds/madRonV1_sky', 215, 0);
	scaleObject('rSlashHesMad2', 0.9, 0.9);
	scaleObject('rSlashHesMad1', 1.1, 1.1);
	setScrollFactor('rSlashHesMad2', 0.35, 1.0);
	addLuaSprite('rSlashHesMad2', false)
	addLuaSprite('rSlashHesMad1', false)
	--add your bg sprites here too
	end
end

function setHealth(math_operation, amount) --here have a unused script lol
if math_operation==set then
setProperty('health', amount)
elseif math_operation==subt then
setProperty('health', getProperty('health') - amount)
elseif math_operation==add then
setProperty('health', getProperty('health') + amount)
end
end

function onCountdownTick(count)
end