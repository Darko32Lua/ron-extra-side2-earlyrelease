function onUpdatePost(elapsed) --switch to onUpdate(elapsed) if you want (not recommended
	--PUT YOUR SCORETXT TEXT HERE
	local scoreText = '  \n  Score:'..score..'\n  Misses:'..misses..'\n  Accuracy:'..ratingNew..' ('..roundRating(bru(rating,100), 2)..'%) - '..ratingFC..'\n  Combo: '..playerCombo..' ('..maxCombo..')\n  Notes Hit:'..totalHits..'\n  Song: '..songName..'\n  Time: '..round(getSongPosition()/1000)..'/'..round(getProperty('songLength')/1000)..''
	setTextAlignment('scoreTxt', 'left') --scoreTxt alignment (can be center, left, right or justify)
	checkMaxCombo(playerCombo) --max combo thing
	setProperty('scoreTxt.text', scoreText)
		if ratingName == "?" then
		ratingNew = N/A
		else
		ratingNew = ratingName
		end
end

--VERY NESSECARY FUNCTIONS!!!!
function goodNoteHit(id, direction, noteType, isSustainNote)
	if not botPlay and not isSustainNote then
	totalHits = totalHits + 1
	playerCombo = playerCombo + 1
	end
end

function bru(val1,val2)
return val1*val2
end

function roundRating(x, n)
  n = math.pow(10, n or 0)
  x = x * n
  if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
  return x / n
end

function checkMaxCombo(check)
if check >= maxCombo then
maxCombo = playerCombo
end
end