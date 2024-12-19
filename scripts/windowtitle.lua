local defaultName = "FNF Ron Extra Side" -- add your mod name here
local songCreator = ""
local toolCreator = "Astro" -- keep this in for credit or make sure to credit me in your mod!

function onCreate()
    setPropertyFromClass("openfl.Lib", "application.window.title", defaultName .. ": " .. songName .. " (" .. difficultyName .. ")"); -- feel free to remove parts you don't want
end

function onDestroy() -- can change to onSongEnd() if that works better for you (i don't recommend it though)
    setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin': Psych Engine");
end