require 'blocks'
function love.load()

end

function love.update(dt)
  world:update(dt)
  for i = 1,#blocktree do
      blocktree[i].b:setAngle(0)
  end
end

function love.draw()
  for i = 1,#blocktree do
    love.graphics.polygon("line", blocktree[i].b:getWorldPoints(blocktree[i].s:getPoints()))
    love.graphics.print(blocktree[i].b:getAngle(), blocktree[i].b:getX()+20, blocktree[i].b:getY()-5)
  end

  if debug then
		love.graphics.setColor(255, 255, 255)
		fps = tostring(love.timer.getFPS())
		love.graphics.print("Current FPS: "..fps, 9, 10)
	end
end
