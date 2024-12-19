local rotateInt = 0
local sinVar = 0
local rotateType = math.sin(sinVar)
local startX = 0
local startY = 25
local angle = 0
local spin = false
--[[DO NOT TOUCH ANY OF THESE BELOW IF YOU DONT KNOW WHAT YOURE DOING!!!

YOU HAVE BEEN WARNED!]]--

function onUpdatePost()
    if getSongPosition()/1000 > 79.57 then
	exitSong()
	end
	setPropertyFromClass('openfl.Lib', 'application.window.borderless', false)
	--setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', false)
	if curStep==128 then
	spin = true
	doTweenY('heMad0', 'rSlashHesMad1', 2100, 2, 'quadInOut')
	doTweenAlpha('heMad0.5', 'healthBar', 0, 2, 'quadInOut')
	rotateInt = 2.5
	end
	if curStep==256 then
	rotateInt = 10
	end
	if curStep==512 then
	spin = false
	doTweenAngle('heMad1', 'rSlashHesMad2', 0, 2, 'quadInOut')
	doTweenY('heMad3', 'rSlashHesMad1', -210, 2, 'quadInOut')
	rotateInt = 0
	end
	if curStep==640 then
	spin = true
	doTweenY('heMad4', 'rSlashHesMad1', 2100, 2, 'quadInOut')
	rotateInt = 5
	end
	if curStep==768 then
	startTween('ScaleTween', 'rSlashHesMad2.scale',  {x = 1.25, y = 1.25}, 5, {ease = 'elasticIn'})
	rotateInt = 20
	end
	hudSineTween(10,rotateInt)
end


function setWindowPos(var)
local x = var*math.sin(sinVar)
local y = var*math.cos(sinVar)
setPropertyFromClass('openfl.Lib', 'application.window.x', x+startX)
setPropertyFromClass('openfl.Lib', 'application.window.y', y+startY)
end

function hudSineTween(speed,sine)
removeLuaScript('scripts/healthDrain')
sinVar = sinVar + 45/curBpm
	angle = sine
	setWindowPos(sine*10) --people are gonna hate me for this
	setProperty('camHUD.angle', sine*math.sin(sinVar))
	--[[setProperty('camHUD.x', (sine*15)*math.sin(sinVar*2))
	setProperty('camHUD.y', (sine*15)*math.cos(sinVar*2))]]
	setProperty('camGame.angle', sine*math.sin(sinVar))
	theAngle = getProperty('rSlashHesMad2.angle')
	setProperty('rSlashHesMad2.angle', theAngle + angle)
	setProperty('healthBar.y', 79.2 + (sine*10)*math.sin(sinVar))
	setProperty('iconP2.y', 4.2 + (sine*10)*math.sin(sinVar))
	setProperty('iconP1.y', 4.2 + (sine*10)*math.sin(sinVar))
	setString("health", "")
end

function onSongStart()
doTweenColor('gflololol', 'gf', 'red', 1, quadOut)
doTweenAlpha('gfAAA', 'gf', 0, 2, quadOut)
end

function onGameOverStart()
setWindowPos(0)
close(true)
end

function newRotate(value)
sinVar = 0
rotateInt = value
end

function onDestroy()
setWindowPos(0)
end


function onCreate()
	doTweenColor('color', 'rSlashHesMad1', 'red', 2)
	doTweenColor('HEISMADTOOMUCHyoubitch', 'rSlashHesMad2', 'red', 2)
end
	--[[wait(2)
	return Function_Continue
end]]--

function wait(t) --use this if you want i dont care
startTime = os.clock
while os.clock >= startTime + t do
--do nothing
end
end

function setString(variable, value)
setProperty(variable..".text", value)
end