function onUpdatePost(elapsed)
curHealth = getProperty('health')
doTweenAlpha('i1', 'iconP1', curHealth, 0.0001)
doTweenAlpha('i2', 'iconP2', 2-curHealth, 0.0001)
end