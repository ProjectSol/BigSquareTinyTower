require 'blocks'
function love.load()

end

function love.update(dt)
  world:update(dt)
end

function love.draw()
  for i = 1,#blocktree do
    love.graphics.polygon("line", blocktree[i].b:getWorldPoints(blocktree[i].s:getPoints()))
  end
end
