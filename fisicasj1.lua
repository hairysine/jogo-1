function fisica()
    if contador1==7 or contador2==7 then
		love.window.close( )
	end
	------CONTADOR DE PONTOS E RETORNO DA BOLA---
	gol1=bola1.body:isTouching ( gol[1].body )
	if  gol1 then
		pontos2=pontos2+1	
		bola1.body:setX(400 )
		bola1.body:setY(300)
	end
	gol2=bola1.body:isTouching ( gol[2].body ) 
	if gol2 then
		pontos1=pontos1+1
		bola1.body:setX(400 )
		bola1.body:setY(300)
	end
    toque=parede[1].body:isTouching(bola1.body)
	if toque then
		z[1]=1
	end
	if z[1]==1 then
		bola1.body:applyForce(10000,0)
		z[1]=0	
	end	
	toque1=parede[2].body:isTouching(bola1.body)
	if toque1 then
		z[2]=1
	end
	if z[2]==1 then
		bola1.body:applyForce(-10000,0)
		z[2]=0	
	end	
	toque2=parede[3].body:isTouching(bola1.body)
	if toque2 then
		z[3]=1
	end
	if z[3]==1 then
		bola1.body:applyForce(0,10000)
		z[3]=0	
	end	
	toque3=parede[4].body:isTouching(bola1.body)
	if toque3 then
		z[4]=1
	end
	if z[4]==1 then
		bola1.body:applyForce(0,-10000)
		z[4]=0	
	end	
	toque=player[1].body:isTouching(bola1.body)
	if toque then
	nx,ny = bola1.body:getLinearVelocity(  )
	bola1.body:applyForce(50*nx,50*ny)
    end
    toque=player[2].body:isTouching(bola1.body)
	if toque then
	nx,ny = bola1.body:getLinearVelocity(  )
    bola1.body:applyForce(50*nx,50*ny)
    end
end