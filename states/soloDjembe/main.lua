function love.load()
	love.audio.play(musique1)
	
end
function love.draw()

if love.keyboard.isDown("right") then
	
	love.graphics.setColor(255,255,255,255)
	love.graphics.draw(tamtamJD,300,144,0,1,1,0,0)
	love.audio.play(audioTamtamMD)
elseif love.keyboard.isDown("left") then
	
	love.graphics.setColor(255,255,255,255)
	love.graphics.draw(tamtamJG,300,144,0,1,1,0,0)
	love.audio.play(audioTamtamMG)
	
else
	love.graphics.setColor(255,255,255,255)
	love.graphics.draw(tamtamPJ,300,144,0,1,1,0,0)
end

end
function love.update(dt)

end
function love.keypressed(key, isrepeat)

end