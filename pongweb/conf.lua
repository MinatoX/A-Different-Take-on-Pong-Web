function love.conf(t)
	
	--Screen settings
	t.title = "A Different Take on Pong"
	t.screen.width = 1200
	t.screen.height = 750

	--t.screen.minwidth = 800
	--t.screen.minheight = 600

	--t.window.resizeable = true
	--t.window.borderless = false

	--Enables console for the game; extremely useful for bug fixing
	t.console = true

	--Modules; In case I need them
	t.modules.joystick = true
	t.modules.audio = true
	t.modules.keyboard = true
	t.modules.event = true
	t.modules.image = true
	t.modules.graphics = true
	t.modules.timer = true
	t.modules.mouse = true
	t.modules.sound = true
	t.modules.thread = true
	t.modules.physics = true
	

	t.identity = "A Different Take on Pong"
	t.author = "Ryan Roman"

end
