function clearLoveCallbacks()
	love.draw = nil
	love.joystickpressed = nil
	love.joysticreleased = nil
	love.keypressed = nil
	--load = nil
	love.mousepressed = nil
	love.mousereleased = nil
	love.update = nil
	
end
function loadState(name)
	state = {}
	clearLoveCallbacks()
	local path = "states/" .. name
	require(path .. "/main")
	love.audio.stop()
	load()
end
function load()
end
function love.load()
	 love.graphics.setBackgroundColor(128,0,255,255)
	 
	boutonSoloDjembe = love.graphics.newImage("textures/boutonSoloDjembe.png")
	boutonSoloFlute = love.graphics.newImage("textures/boutonSoloRecorder.png")
	boutonMultiLocal = love.graphics.newImage("textures/boutonLocalMulti.png")
	flutePJ = love.graphics.newImage("textures/flutePJ.png")
	fluteJ = love.graphics.newImage("textures/fluteJ.png")
	tamtamPJ = love.graphics.newImage("textures/tamtamPJ.png")
	tamtamJG = love.graphics.newImage("textures/tamtamJG.png")
	tamtamJD = love.graphics.newImage("textures/tamtamJD.png")
	cocheOui = love.graphics.newImage("textures/cocheOui.png")
	cocheNon = love.graphics.newImage("textures/cocheNon.png")
	musiqueIcone = love.graphics.newImage("textures/musique.png")
	titre = love.graphics.newImage("textures/title.png")
	musique1 = love.audio.newSource("audio/fluteCaca.ogg")
	musique2 = love.audio.newSource("audio/djembeCaca.ogg")
	musiqueMenu = love.audio.newSource("audio/unPeuCaca.ogg")
	audioTamtamMG = love.audio.newSource("audio/tamtamMG.ogg")
	audioTamtamMD = love.audio.newSource("audio/tamtamMD.ogg")
	fluteDo = love.audio.newSource("audio/flute/fluteDo.ogg")
	fluteRe = love.audio.newSource("audio/flute/fluteRe.ogg")
	fluteMi = love.audio.newSource("audio/flute/fluteMi.ogg")
	fluteFa = love.audio.newSource("audio/flute/fluteFa.ogg")
	fluteSol = love.audio.newSource("audio/flute/fluteSol.ogg")
	fluteLa = love.audio.newSource("audio/flute/fluteLa.ogg")
	fluteSi = love.audio.newSource("audio/flute/fluteSi.ogg")
	fluteDo2 = love.audio.newSource("audio/flute/fluteDo2.ogg")
	fluteRe2 = love.audio.newSource("audio/flute/fluteRe2.ogg")
	musiqueNiveau = true
	love.audio.play(musiqueMenu)
end
function love.draw()
	local mx = love.mouse.getX()
	local my = love.mouse.getY()
	love.graphics.draw(boutonSoloDjembe, 400-128, 100)
	love.graphics.draw(boutonSoloFlute, 400-128, 300)
	love.graphics.draw(boutonMultiLocal,400-128, 200)
	love.graphics.draw(tamtamPJ, 64,100)
	love.graphics.draw(fluteJ,656,100)
	love.graphics.draw(titre,144,450)
	love.graphics.draw(musiqueIcone,64+32,16)
	if (400+128 > mx ) and ( mx > 262) and (164 > my) and ( my >= 100) and love.mouse.isDown(1) then
		loadState("soloDjembe")
		if	musiqueNiveau then 
			love.audio.play(musique1) 
		end
	end
	if (400+128 > mx ) and ( mx> 262) and (364 > my) and ( my >= 300) and love.mouse.isDown(1) then
		loadState("soloFlute")
		if musiqueNiveau then
			love.audio.play(musique2)
		end
	end
	if (400+128 > mx ) and ( mx> 262) and (264 > my) and ( my >= 200) and love.mouse.isDown(1) then
		loadState("combo")
	end
	if (musiqueNiveau == true) then
		love.graphics.draw(cocheOui,16,16)
	elseif (musiqueNiveau == false) then
		love.graphics.draw(cocheNon,16,16)
	end

end
function love.mousepressed()
	local mx = love.mouse.getX()
	local my = love.mouse.getY()
	if (16+64 > mx ) and ( mx> 16) and (16+64 > my) and( my >= 16) then
		musiqueNiveau = not musiqueNiveau
		love.audio.rewind()
		if (musiqueNiveau == true) then
			love.audio.play(musiqueMenu)
		else 
			love.audio.stop()
		end	
	end
end
