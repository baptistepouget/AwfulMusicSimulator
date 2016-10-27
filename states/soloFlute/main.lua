function love.load()
xPerso = 300
yPerso = 144
	
end
function love.draw()

if love.keyboard.isDown("q") then
	love.audio.play(fluteDo)
	love.graphics.draw(fluteJ,300,144,0,1,1,0,0)
elseif love.keyboard.isDown("w") then
	love.audio.play(fluteRe)
	love.graphics.draw(fluteJ,300,144,0,1,1,0,0)
elseif love.keyboard.isDown("e") then
	love.audio.play(fluteMi)
	love.graphics.draw(fluteJ,300,144,0,1,1,0,0)
elseif love.keyboard.isDown("r") then
	love.audio.play(fluteFa)
	love.graphics.draw(fluteJ,300,144,0,1,1,0,0)
elseif love.keyboard.isDown("t") then
	love.audio.play(fluteSol)
	love.graphics.draw(fluteJ,300,144,0,1,1,0,0)
elseif love.keyboard.isDown("y") then
	love.audio.play(fluteLa)
	love.graphics.draw(fluteJ,300,144,0,1,1,0,0)
elseif love.keyboard.isDown("u") then
	love.audio.play(fluteSi)
	love.graphics.draw(fluteJ,300,144,0,1,1,0,0)
elseif love.keyboard.isDown("i") then
	love.audio.play(fluteDo2)
	love.graphics.draw(fluteJ,300,144,0,1,1,0,0)
elseif love.keyboard.isDown("o") then
	love.audio.play(fluteRe2)
	love.graphics.draw(fluteJ,300,144,0,1,1,0,0)
else
	love.graphics.draw(flutePJ,300,144,0,1,1,0,0)

end
end
function love.update(dt)

end
function love.keypressed(key, isrepeat)

end
