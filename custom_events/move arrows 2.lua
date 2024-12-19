local speed = 2 --change the speed if you want
local code = false

function onEvent(n, v1, v2)
	x = 1400
	if n=='move arrows 2' then
	code = {}
	code[1] = true
	code[2] = v2
	noteTweenAngle("noteangle1", 0, 360, speed, v2)
	noteTweenAngle("noteangle2", 1, 360, speed, v2)
	noteTweenAngle("noteangle3", 2, 360, speed, v2)
	noteTweenAngle("noteangle4", 3, 360, speed, v2)
	noteTweenAngle("noteangle5", 4, -360, speed, v2)
	noteTweenAngle("noteangle6", 5, -360, speed, v2)
	noteTweenAngle("noteangle7", 6, -360, speed, v2)
	noteTweenAngle("noteangle8", 7, -360, speed, v2)
	noteTweenX("NoteMove1", 0, x, speed, v2)
	noteTweenX("NoteMove2", 1, x + 110, speed, v2)
	noteTweenX("NoteMove3", 2, x + 220, speed, v2)
	noteTweenX("NoteMove4", 3, x + 330, speed, v2)
	noteTweenX("NoteMove5", 4, 0, speed, v2)
	noteTweenX("NoteMove6", 5, 110, speed, v2)
	noteTweenX("NoteMove7", 6, defaultPlayerStrumX2 + 110, speed, v2)
	noteTweenX("NoteMove8", 7, defaultPlayerStrumX2 + 220, speed, v2)
	end
end

function onUpdatePost()
	if code[1] then
	startTween("barThing", 'bar.alpha', 0, speed, code[2])
	end
end