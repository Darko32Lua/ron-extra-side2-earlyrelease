local hD = 0.1

function opponentNoteHit() --basically this is when the opponent hits the note
	health = getProperty('health') --health property
	if health > hD then --gets the health then minus it by whatever idk
	setProperty('health', health- hD); --opponent hit notes health goes downy
	end
end

function onCreate()
doTweenAlpha('icP2', 'iconP2', 0.5, 0.0001)
end