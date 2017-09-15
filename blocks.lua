blocks = {}

world = love.physics.newWorld(0, 9.8^2, true)
--[[static = {}
    static.b = love.physics.newBody(world, 400,400, "static") -- "static" makes it not move
    static.s = love.physics.newRectangleShape(5,5)         -- set size to 200,50 (x,y)
    static.f = love.physics.newFixture(static.b, static.s)
    static.f:setUserData("Block")]]

function createBasicBlock(x,y,w,h,status)
  local this = {}
    --local x,y,w,h,status = nil,nil,nil,nil,nil
    local defaultx,defaulty,defaultw,defaulth,defaultStatus = 400,400,5,5,"static"
    local inputX,inputY,inputStatus,inputW,inputH = x,y,status,w,h
    if x then
      inputX = x
    else
      inputX = defaultx
    end
    if y then
      inputY = y
    else
      inputY = defaulty
    end
    if status then
      inputStatus = status
    else
      inputStatus = defaultStatus
    end
    if w then
      inputW = w
    else
      inputW = defaultw
    end
    if h then
      inputH = h
    else
      inputH = defaulth
    end

    this.b = love.physics.newBody(world, inputX,inputY, inputStatus)
    this.s = love.physics.newRectangleShape(inputW,inputH)         -- set size to 200,50 (x,y)
    this.f = love.physics.newFixture(this.b, this.s)
    this.f:setUserData("Block")
  return this
end

blocktree = {}
function makeBasicBlock(x,y,w,h,status)
  local block = createBasicBlock(x,y,w,h,status)
  table.insert(blocktree, block)
end
makeBasicBlock(426,10,5,5,'dynamic')
makeBasicBlock(430,430,5,5,'static')
makeBasicBlock(410,450,5,5, 'static')
makeBasicBlock(love.graphics:getWidth()/2,love.graphics:getHeight()-2.5, love.graphics:getWidth(), 5)


function blocks:drawBase()


end
