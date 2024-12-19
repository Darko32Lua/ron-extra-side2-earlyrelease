--[[ change the video name here    ->  var filepath = Paths.video('name');    
--                                                                ^^^^^^^
-- or put the video whit name " name" on videos folder
luaDebugMode = true

function onCreate()

makeLuaSprite('black', '', 0, 0);

makeGraphic('black', 2500, 2500, '000000');

--setScrollFactor('black', 0, 0);
setProperty('black.camera', instanceArg('camHUD'), false, true);

setProperty('videoSprite.camera', instanceArg('camHUD'), false, true);

setObjectOrder('black', 99999);

screenCenter('black');

addLuaSprite('black', true);


    setProperty('skipCountdown', true)

    makeLuaSprite('videoSprite','',0,0)
    addLuaSprite('videoSprite')
    setObjectOrder('videoSprite', 100000);

    --[[addHaxeLibrary('MP4Handler','vlc')
    addHaxeLibrary('Event','openfl.events')

    runHaxeCode([[
        import hxvlc.flixel.FlxVideoSprite;
        import openfl.events.Event;
        var filepath = Paths.video('heneedsit');        
        var video = new FlxVideoSprite();
        video.playVideo(filepath);
        video.visible = false;
        setVar('video',video);
        FlxG.stage.removeEventListener('enterFrame', video.update); 
    )
end

function onUpdatePost()
    triggerEvent('Camera Follow Pos', '640', '360')

    runHaxeCode([[
        var video = getVar('video');
        game.getLuaObject('videoSprite').loadGraphic(video.bitmapData);
        video.volume = FlxG.sound.volume + 100;    
        if(game.paused)video.pause();
    )
end


function onResume()
    runHaxeCode([[
        var video = getVar('video');
        video.resume();
    )
end
function onCreatePost()
    getObjectOrder('videoSprite')
    setObjectOrder('videoSprite', 100000)
end

function onUpdate()
    triggerEvent('Camera Follow Pos', '640', '360')
end]]