parede={}
bola={}
gol={}
player={}
pontos1=0
pontos2=0
nx=0
z={0,0,0,0,0,0}
require("fisicasj1")
require("objetos")
require("controles")
require('texto')
    function love.load(dt)
        love.physics.setMeter(32) 
		world = love.physics.newWorld(0, 0,600, 600, 0, 10,"true" )	
		world : setCallbacks ( beginContact , endContact , preSolve , postSolve )
        objeto(dt)
    end
    function love.update(dt)
	    world:update(dt)
        controle(dt)
        fisica()
    end 
    function love.draw()
        printando()
     end
