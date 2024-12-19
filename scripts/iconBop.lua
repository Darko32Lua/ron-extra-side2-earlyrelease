function onStepHit()
    if curStep % 4 == 0 then
        setProperty('iconP2.angle', -180);
        doTweenAngle('bip', 'iconP2', 0,0.3,'quadOut')
        --setProperty('iconP1.angle', -10); no
        doTweenAngle('bop', 'iconP1', 0,0.2,'cubinOut')
		doTweenAlpha('trying', '', 0.25, 0.5, 'quadOut')
	end
    if curStep % 8 == 0 then
        setProperty('iconP2.angle', -180);
        doTweenAngle('bip', 'iconP2', 0,0.3,'quadOut');
        --setProperty('iconP1.angle', 10); no
        doTweenAngle('bop', 'iconP1', 0,0.2,'cubinOut');
    end
end