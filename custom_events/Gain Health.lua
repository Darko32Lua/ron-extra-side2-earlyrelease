function onEvent(n, v1, v2)
	if n=Gain Health then
	getProperty('health')
	setProperty('health', health + v1)
	end
end