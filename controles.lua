function controle(dt)
    if love.keyboard.isDown("up") then
		player[2].body:setLinearVelocity(0,-10000*dt)
	end
	if not love.keyboard.isDown("up") then
		player[2].body:setLinearVelocity(0,0)
	end
	if love.keyboard.isDown("down") then
		player[2].body:applyForce(0,10000000*dt)
	end
	if  love.keyboard.isDown("left") then
	player[2].body:applyForce(-10000000*dt,0)
	end
	if love.keyboard.isDown("right") then
		player[2].body:applyForce(10000000*dt,0)	
	end
	if  love.keyboard.isDown("1") then
		x=player[2].body: getAngle (  )
		player[2].body:setAngle(x +20*(dt)  )
	end
	if love.keyboard.isDown("2") then
		x=player[2].body: getAngle (  )
		player[2].body:setAngle(x -20*(dt)  )
	end
	if love.keyboard.isDown("3") then
		player[2].body:setAngle( 0)
	end
	if love.keyboard.isDown("4") then
		player[2].body:setX(700)
	end
	if not love.keyboard.isDown("e") then
		x=player[2].body: getAngle (  )
		player[1].body:setAngle(x)
	end
-----------------------------------------------player 1------------------------------------------------------------
	if love.keyboard.isDown("w") then
	
		player[1].body:setLinearVelocity(0,-10000*dt)
	end
	if not love.keyboard.isDown("w") then
		player[1].body:setLinearVelocity(0,0)		
	end
	if love.keyboard.isDown("s") then
		player[1].body:applyForce(0,10000000*dt)
	end
	if  love.keyboard.isDown("a") then
	player[1].body:applyForce(-10000000*dt,0)
	end
	if love.keyboard.isDown("d") then
		player[1].body:applyForce(10000000*dt,0)
	end
	if  love.keyboard.isDown("q") then
		x=player[1].body: getAngle (  )
		player[1].body:setAngle(x +20*(dt)  )
	end
	if love.keyboard.isDown("e") then
		x=player[1].body: getAngle (  )
		player[1].body:setAngle(x -20*(dt)  )
	end
	if love.keyboard.isDown("f") then
		player[1].body:setAngle( 0)
		if not love.keyboard.isDown("e") then
			x=player[1].body: getAngle (  )
			player[1].body:setAngle(x)
		end
	end
end