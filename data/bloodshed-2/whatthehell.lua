local songPosition = 0 --sin and cos
--SETUP--
local tweenhud = false
local allowCountdown = false
local seenCutscene = false

--CUTSCENE--
--not working :(
-----------

--TWEEN CODE--
function onUpdatePost(elapsed)
setProperty('botplayTxt.text', "people don't respect ron if\nthey use botplay lol")
speed = 0.5
streng = 240
songPosition = songPosition + (3/curBpm)
if curStep >= 246 and curBeat >= 66 then
for i=0,3 do --dad note hide
noteTweenX("opponentnotelolz"..i, i, -100 - ((5-i)*110), 2, quadIn)
end
for i=4,7 do --bf note x
--noteTweenY("whatthehell"..i-4, i, defaultPlayerStrumY.. + streng*math.cos((songPosition)*5), speed, quadOut)
noteTweenX("whatthehell"..i, i, 420 + ((i-4)*110) + streng*math.sin(songPosition*5), speed, circInOut)
end
--bf note y
end
if tweenhud == true then
noteTweenY("whatthehell10", 4, defaultPlayerStrumY0 + streng*math.cos(songPosition*5), speed, quadOut)
noteTweenY("whatthehell11", 5, defaultPlayerStrumY1 + streng*math.cos((songPosition+10)*5), speed, quadOut)
noteTweenY("whatthehell12", 6, defaultPlayerStrumY2 + streng*math.cos((songPosition+20)*5), speed, quadOut)
noteTweenY("whatthehell13", 7, defaultPlayerStrumY3 + streng*math.cos((songPosition+30)*5), speed, quadOut)
doTweenAngle('cameraHud', 'camHUD', 7.5*math.sin(songPosition*2), speed/2, quadOut)
end
--[[if curStep >= 880 and curBeat >= 220 and curStep <= 912 and curBeat <= 228 then
doTweenZoom("zoomieng", 'game', 3.4, 1.7, 'linear')
elseif curStep == 912 and curBeat == 228 then
doTweenZoom("zoomBeck", 'game', 1, 1, 'quadInOut')
end]]--
end

 --vignette sprite i think--
 
function onUpdate(pingMs)
local setBack = true
if not closefunction then
if curStep >= 246 and curBeat >= 66 then
tweenhud = false
doTweenAngle("cameraHudBack", 'camHUD', 360, 0.5, circInOut)
end
makeLuaSprite('ohNo', 'effects/explode', -150, 0)
addLuaSprite('ohNo', false)
setProperty('ohNo.camera', instanceArg('camOther'), false, true)
setProperty('ohNo.alpha', 1 - setProperty('ohNo.alpha', 0.85 - getProperty('health')/3 + math.sin(beat/75)/7.5))
scaleObject('ohNo', 1.0, 1.5)
end
if getSongPosition() / 1000 >= 31 and setBack then
doTweenAngle("cameraHudLol", 'camHUD', 0, 0.000000000000000000000000000000000000001, circInOut)
setBack = false
end
end

function onGameOverStart() --fix lol
removeLuaSprite('ohNo')
close(true)
end

--SETUP 2--

function onCountdownTick(number)
if number == 4 then
tweenhud = true
end
end

--zoom--

function onBeatHit(beat)
doTweenZoom('testZoomTween', 'game', 1.05, 0.0000000000001, 'linear')
doTweenZoom('testZoomTween2', 'game', 1, 0.4, 'quadOut')
if getProperty('health') > tonumber(negative(getProperty('camHUD.angle')/15)) and tweenhud then
setProperty('health', getProperty('health') - tonumber(negative(getProperty('camHUD.angle')/15)))
end
end

function negative(num)
if stringStartsWith(tostring(num), "0") then
return tostring(num)
else
return "-"..tostring(num)
end
end

function closeFunction(boolVar)
closefunction = boolVar
end

function onCreate()
doTweenZoom('testZoomTween3', 'game', 1, 0.000000000000000000000000000000000000001, 'quadOut')
end