local maxCombo = 0
local totalHits = 0
local playerCombo = 0
local ratingNew = "N/A"
local nps = 0
local botTxt = 'Skill Issue'

function onUpdatePost(elapsed)
setProperty('timeTxt.y', 1000)
setProperty('timeBar.y', 1000)
makeLuaText('ping', "Ping:"..(elapsed*1000).." miliseconds", 900, 700, 15)
setTextSize('ping', 15)
addLuaText('ping')
setTextBorder('ping', 0.25, 'white')
	timeTxt = getProperty('timeTxt')
	setTextSize('scoreTxt', 20)
	setTextFont('scoreTxt', 'pixel-latin.ttf')
	setTextAlignment('scoreTxt', 'left') --aligns scoretxt
	setTextFont('botplayTxt', 'pixel-latin.ttf')
	setTextBorder('botplayTxt', 0, 'white')
	setProperty('botplayTxt.text', botTxt) --sets the botplay text
	setProperty('botplayTxt.y', '10') --sets the botplay text y poz
	setProperty('scoreTxt.text','  \n  Score:'..score..'\n  Misses:'..misses..'\n  Accuracy:'..ratingNew..' ('..roundRating(bru(rating,100), 2)..'%) - '..ratingFC..'\n  Combo: '..playerCombo..' ('..maxCombo..')\n  Notes Hit:'..totalHits..'\n  Song: '..songName..'\n  Time: '..convertTime(nonegative(round(getSongPosition()/1000)))..'/'..convertTime(round(getProperty('songLength')/1000))..'')--sets the goofy ahh score text
	checkMaxCombo(playerCombo)
	if ratingName == "?" then
	ratingNew = N/A
	else
	ratingNew = ratingName
	end
end

function checkMaxCombo(check)
if check >= maxCombo then
maxCombo = playerCombo
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

function goodNoteHit(id, direction, noteType, isSustainNote)
if isSustainNote then
health = getProperty('health')
setProperty('health', health + 0.1)
end
if not botPlay and not isSustainNote then
totalHits = totalHits + 1
playerCombo = playerCombo + 1
end
end

function noteMiss()
playerCombo = 0
end

function round(a)
return math.floor(a)
end

function nonegative(num)
return num
end
--[[time converter

exp. something is 79 seconds and it'll be converted to be 1:19
cool right?]]
function convertTime(numb)
convertedMin = tostring(math.floor(numb/60))
convertedSec = tostring(numb - 60 * convertedMin)
if string.len(convertedSec) == 1 then
convertedSec = tostring("0"..numb - 60 * convertedMin)
end
if convertedMin == 0 then
return convertedSec
else
return convertedMin..":"..convertedSec
end
end