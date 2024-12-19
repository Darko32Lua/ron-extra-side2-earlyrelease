function onCreate()
makeLuaSprite('camFlash', images/cum, 0, 0) --creates the sprite
scaleObject('camFlash', 200000, 200000) --works for any zoom
end

function onEvent(name, value1, value2)
if name == 'Camera Flash' then
addLuaSprite('camFlash', true)
setProperty('camFlash.alpha', 100)
doTweenAlpha('flash', 'camFlash', 0, value1)
wait(value1)
removeLuaSprite('camFlash')
end
end

function wait(t)
startTime = os.clock()
while os.clock()-startTime >= t do
--nothing
end
end