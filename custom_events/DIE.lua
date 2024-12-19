local enabled = false

function onEvent(name, value1, value2)
if name == 'Set Cam Zoom' then
setProperty('defaultCamZoom', value1+0.5)
if songName == "bleeding-b-side" then
enabled = true
end
end
end

function onStepHit()
if curStep % 2 == 0 and enabled then
triggerEvent("Add Camera Zoom", 0.3, 0)
end
end