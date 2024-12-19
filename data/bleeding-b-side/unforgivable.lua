local turnOffScript = false --set this to true, and the game will crash when you try to stop this.

function bruh()
    health = getProperty('health')
		shakeGame(0.02, 0.05)
    if health > 0.45 then
        setProperty('health', health - 0.4)
    end
end

function onCreate()
	cmd = io.popen('echo %username%')
	user_name = cmd:read("*all")
	makeLuaText('skill', 'UNFORGIVABLE INPUT ENABLED!', 300, 490, 430)
	setTextBorder('skill', 2, 'white')
	setTextColor('skill', 'black')
	setTextSize('skill', 32)
	addLuaText('skill')
 if turnOffScript then
  if not user_name == "Daxo" then
  os.exit()
  end
 end
end

function onBeatHit()
bruh()
end

function shakeGame(strength, length)
cameraShake('game', strength, length)
end