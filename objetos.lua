
function objeto()
    function fplayer(world,x,y,comprimeto,altura)
			 local a = {}
			a.body = love.physics.newBody(world, x,y,"dynamic")
			a.shape = love.physics.newRectangleShape(comprimeto,altura)
			a.fixture = love.physics.newFixture(a.body,a.shape,10)
			a.fixture:setCategory(1)

			return a
		end
		function cenario2(world,x,y,comprimeto,altura)
			local a = {}
			a.body = love.physics.newBody(world, x,y)
			a.shape = love.physics.newRectangleShape(comprimeto,altura)
			a.fixture = love.physics.newFixture(a.body,a.shape,1000)
			a.fixture:setCategory(1)
			return a
		end
		function bol(world,x,y,r,type)
			local b={}
			b.body = love.physics.newBody( world, x, y, type )
			b.shape=love.physics.newCircleShape(r)
			b.fixture=love.physics.newFixture(b.body,b.shape,0,1)
			b.fixture:setCategory(1)
			return b
		end
		---------------------------------corpos-------------------------
	gol[1]=cenario2(world,5,300,30,150)
	gol[2]=cenario2(world,795,300,30,150)
	player[1]=fplayer(world,200,300,20,60)
	player[2]=fplayer(world,600,300,20,60)	
	bola1=bol(world,400,300,10,"dynamic")
	parede[1]=cenario2(world,0,300,30,600)
	parede[2]=cenario2(world,800,300,30,600)
	parede[3]=cenario2(world,400,0,800,30)
	parede[4]=cenario2(world,400,600,800,30)
	bola1.body:setBullet(true)
	player[1].body:setBullet(true)
	player[1].fixture:setFriction(0.0)
	player[2].body:setBullet(true)
end
function printando()
	love.graphics.setColor(math.random(), math.random(), math.random())
		love.graphics.circle( "line", 400,300, 50 )
		love.graphics.line(400,0,400,600)
		function desenhoplayer(n)
			if n==2 then
			love.graphics.setColor(0,0, 255)
			else 
				love.graphics.setColor(0,255, 0)
			end
			love.graphics.polygon("line", player[n].body:getWorldPoints(player[n].shape:getPoints()))
		end
		function desenhocenario2(n)
	
			love.graphics.setColor(math.random(), math.random(), math.random()) 
			love.graphics.polygon("line", parede[n].body:getWorldPoints(parede[n].shape:getPoints()))
		end
		function desenhegol(n)
			love.graphics.setColor(0, 0, 0) 
			love.graphics.polygon("fill", gol[n].body:getWorldPoints(gol[n].shape:getPoints()))
		end
			love.graphics.setColor(math.random(), math.random(), math.random()) 
			love.graphics.circle("fill",bola1.body:getX(),bola1.body:getY(),bola1.shape:getRadius())
	desenhocenario2(1)
	desenhocenario2(2)
	desenhocenario2(3)
	desenhocenario2(4)
	desenhoplayer(1)
	desenhoplayer(2)
	desenhegol(1)
	desenhegol(2)
	love.graphics.setColor(0, 255, 0, 255)
	love.graphics.print(pontos1, 30, 200)
	love.graphics.setColor(0, 255, 0, 255)
	love.graphics.print(pontos2, 770, 200)
	love.graphics.setColor(0, 255, 0, 255)
end	