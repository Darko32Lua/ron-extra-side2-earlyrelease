function onEvent(name,value1,value2)
	if name == 'Hide_HealthBar' then 

			--setProperty('healthBarBG.visible', false)
			--setProperty('healthBar.visible', false)
            doTweenAlpha('tween','healthBar',0,1,cubeInOut)
	end
end
	
function onUpdatePost()
			setProperty('iconP1.visible', true)
			setProperty('iconP2.visible', true)
end