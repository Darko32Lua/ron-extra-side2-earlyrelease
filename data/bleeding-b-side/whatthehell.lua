local songPosition = 0

function onUpdatePost(elapsed)
setProperty('botplayTxt.text', "hi i am bad at fnf.")
speed = 0.2
streng = 150
songPosition = songPosition + (5/curBpm)
for i=0,3 do --dad note hide
noteTweenX("opponentnotelolz"..i, i, defaultOpponentStrumX0 + ((i+1)* -1438297431907810) + streng*math.sin((songPosition + i*5)*10), speed, circInOut)
end
for i=4,7 do --bf note x
setPropertyFromGroup('notes', i, 'x', 0)
noteTweenX("whatthehell"..i, i, 420 + ((i-4)*110) + streng*math.sin((songPosition + i*5)*20), speed, circInOut)
end
setProperty('defaultCamZoom', 1)
if curStep < 125 then
setProperty('defaultCamZoom', 1.5)
end
--bf note y
noteTweenY("whatthehell10", 4, defaultPlayerStrumY0 + streng*math.cos(songPosition*10), speed, quadOut)
noteTweenY("whatthehell11", 5, defaultPlayerStrumY1 + streng*math.cos((songPosition+7.5)*10), speed, quadOut)
noteTweenY("whatthehell12", 6, defaultPlayerStrumY2 + streng*math.cos((songPosition+15)*10), speed, quadOut)
noteTweenY("whatthehell13", 7, defaultPlayerStrumY3 + streng*math.cos((songPosition+22.5)*10), speed, quadOut)
end

function onUpdate(pingMs) --vignette sprite i think
beat = (getSongPosition()/10) / (60/bpm)
setProperty('fpsCounter.text', "no")
makeLuaSprite('ohNo', 'effects/explode', -150, 0)
addLuaSprite('ohNo', false)
setProperty('ohNo.camera', instanceArg('camOther'), false, true)
setProperty('ohNo.alpha', 0.85 - getProperty('health')/3 + math.sin(beat/75)/7.5)
scaleObject('ohNo', 1.0, 1.5)
end

function onGameOverStart() --fix lol
removeLuaSprite('ohNo')
doTweenAngle("lol", 'camHUD', 0, 1.5, 'elasticInOut')
doTweenX("ayaya", 'camHUD', -500, 1.5, 'elasticInOut')
doTweenAngle("lolz", 'camGame', 0, 1.5, 'elasticInOut')
close(true)
end