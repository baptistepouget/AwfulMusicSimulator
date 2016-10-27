function load()
love.audio.play(musiqueMenu)
end
function love.load()
end
function love.draw()
local mx = love.mouse.getX()
local my = love.mouse.getY()
love.graphics.draw(boutonSoloDjembe, 400-128, 100)
love.graphics.draw(boutonSoloFlute, 400-128, 300)
love.graphics.draw(tamtamPJ, 64,100)
if (400 > mx ) and ( mx> 262) and (164 > my) and ( my >= 100) and love.mouse.isDown("l") then
loadState(soloDjembe)
end
end
function love.update(dt)

end
function love.keypressed(key, isrepeat)

end