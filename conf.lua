function love.conf(t)
    t.modules.joystick = true   -- Enable the joystick module (boolean)
    t.modules.audio = true      -- Enable the audio module (boolean)
    t.modules.keyboard = true   -- Enable the keyboard module (boolean)
    t.modules.event = true      -- Enable the event module (boolean)
    t.modules.image = true      -- Enable the image module (boolean)
    t.modules.graphics = true   -- Enable the graphics module (boolean)
    t.modules.timer = true      -- Enable the timer module (boolean)
    t.modules.mouse = true      -- Enable the mouse module (boolean)
    t.modules.sound = true      -- Enable the sound module (boolean)
	t.modules.thread = true
    t.modules.physics = true    -- Enable the physics module (boolean)
    t.console = false         -- Attach a console (boolean, Windows only)
    t.title = "Awful Music Simulator"        -- The title of the window the game is in (string) 
    t.author = "Pouget Games"        -- The author of the game (string)
    t.window.fullwindow = false -- Enable fullwindow (boolean)
    t.window.vsync = false       -- Enable vertical sync (boolean)
    t.window.fsaa = 0           -- The number of FSAA-buffers (number)
    t.window.height = 600       -- The window height (number)
    t.window.width = 800        -- The window width (number)
    t.version = "0.10.1"
end
