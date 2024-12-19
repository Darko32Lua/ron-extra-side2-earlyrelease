function onCreate()
	makeLuaSprite('rSlashHesMad1', 'backGrounds/madRonV1_ground',-430,-210);  --if it is in a separate folder use 'folder/image' for it	
	makeLuaSprite('rSlashHesMad2', 'backGrounds/madRonV1_sky', -215, 0);
	scaleObject('rSlashHesMad2', 0.9, 0.9);
	scaleObject('rSlashHesMad1', 1.1, 1.1);
	setScrollFactor('rSlashHesMad2', 1.1, 1.0);
	addBg(true)
end

function hideBg(bool)
	if bool then
	removeLuaSprite('rSlashHesMad1')
	removeLuaSprite('rSlashHesMad2')
	--add your bg sprites here
	end
end

function addBg(bool2)
	if bool2 then
	addLuaSprite('rSlashHesMad2', false)
	addLuaSprite('rSlashHesMad1', false)
	--add your bg sprites here too
	end
end