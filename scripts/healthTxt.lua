function onCreate()
makeLuaText('healthTxt', "text", 900, getProperty('botplayTxt.x')*1.5, 150)
setTextSize('healthTxt', 20)
addLuaText('healthTxt')
hideBg(true)
end

function onUpdatePost()
setProperty('healthTxt.text', "Health:"..health(getProperty('health')))
--setProperty('healthTxt.text', getProperty('sicks'))
setTextFont('healthTxt', 'pixel-latin.ttf')
fnfTime = getProperty('timeTxt.text')
if fnfTime == "UNFORGIVABLE SCRIPT 2 ON" then
setProperty('healthTxt.text', "fuck you")
end
end

function health(a)
return a*50
end