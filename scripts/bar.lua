local barX = getProperty('strumLineNotes.members[4].x')

function onCreate()
makeLuaSprite('bar', '', barX, 0)
makeGraphic('bar', 460, 1000, 'black')
addLuaSprite('bar', false)
setProperty('bar.camera', instanceArg('camHUD'), false, true)
doTweenAlpha("setBarAlpha", 'bar', 0.6, 0.0000000001, linear)
end

function onUpdatePost(elapsed)
barX = getProperty('strumLineNotes.members[4].x') - 5
doTweenX('barMoveX', 'bar', barX, 0.0000000001, linear)
end