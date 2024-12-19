local speed = 2.5 --change the speed if you want

function onEvent(n, v1, v2)
	x = 1400
	if n=='Move Arrows' then
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
	noteTweenX("NoteMove5", 4, v1, speed, v2)
	noteTweenX("NoteMove6", 5, v1 + 110, speed, v2)
	noteTweenX("NoteMove7", 6, v1 + 220, speed, v2)
	noteTweenX("NoteMove8", 7, v1 + 330, speed, v2)
	end
end