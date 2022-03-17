function onCreate()
	-- background shit
	makeLuaSprite('sky', 'sky', -800, -400);
	setScrollFactor('sky', 0.9, 0.9);
	
	makeLuaSprite('floor', 'floor', -1100, 800);
	scaleObject('floor', 1.0, 1.0);
	
	makeLuaSprite('foreground', 'foreground', -850, 900);
    scaleObject('foreground', 1.1, 1.0);


	makeLuaSprite('runbg', 'run bg', -950, -1);
    scaleObject('runbg', 1.1, 1.0);
	
	makeLuaSprite('buildings', 'buildings', -1000, 150);
	setScrollFactor('buildings', 0.9, 0.9);
	
	makeLuaSprite('buildingsback', 'buildingsback', -1000, 0);
	setScrollFactor('buildingsback', 0.9, 0.9);
	
	makeLuaSprite('eggback', 'egg back', -130, 0);
	setScrollFactor('eggback', 0.9, 0.9);
	
	makeAnimatedLuaSprite('eggman', 'eggman', -350, 0)
	addAnimationByPrefix('eggman', 'idle', 'eggmannnnn', 24, true);
	
	makeAnimatedLuaSprite('lights', 'lights', -500, -290)
	addAnimationByPrefix('lights', 'idle', 'lights', 24, false);
	
	makeAnimatedLuaSprite('sonic', 'sonic', 1150, 470)
	addAnimationByPrefix('sonic', 'idle', 'bf bg dancin', 24, true);
	
	
	addLuaSprite('sky', false);
	addLuaSprite('eggback', false);
	addLuaSprite('buildings', false);
	addLuaSprite('runbg', false);
	addLuaSprite('eggman', false);
	addLuaSprite('lights', false);
	addLuaSprite('floor', false);
	addLuaSprite('foreground', false);
	addLuaSprite('sonic', false);
	
	
end

function onUpdate()
	
	if del > 0 then
		del = del - 1
	end
	
	if del2 > 0 then
		del2 = del2 - 1
	end
    
	if followchars == true then
		
        if mustHitSection == false then
           
			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end

			if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end

			if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
            
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end

			if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end
           
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end

			if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos', '', '')
            end

            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
		
        else
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
           
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end

            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
		
        end
    
        triggerEvent('Camera Follow Pos','','')
    
	end
    
end
