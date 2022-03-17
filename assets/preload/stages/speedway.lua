local ffi = require("ffi")  -- LuaJIT Extension
local user32 = ffi.load("user32")   -- LuaJIT User32 DLL Handler Function

ffi.cdef([[
enum{
    MB_OK = 0x00000000L,
	MB_OKCANCEL = 0x00000001L,
    MB_ABORTRETRYIGNORE = 0x00000002L,
    MB_YESNOCANCEL = 0x00000003L,
    MB_YESNO = 0x00000004L,
    MB_RETRYCANCEL = 0x00000005L,
    MB_CANCELTRYCONTINUE = 0x00000006L,
    MB_ICONINFORMATION = 0x00000040L,
};

typedef void* HANDLE;
typedef HANDLE HWND;
typedef const char* LPCSTR;
typedef unsigned UINT;

int MessageBoxA(HWND, LPCSTR, LPCSTR, UINT);
int MessageBoxW(HWND, LPCSTR, LPCSTR, UINT);
]])

local xx = 100;
local yy = 600;
local xx2 = 800;
local yy2 = 600;
local ofs = 50;
local ofs2 = 50;
local followchars = true;
local del = 0;
local del2 = 0;
-- local allowCountdown = false


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
	
	makeAnimatedLuaSprite('sonic', 'sonic', 1250, 470)
	addAnimationByPrefix('sonic', 'idle', 'sonic bg anim', 24, true);
	
	
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