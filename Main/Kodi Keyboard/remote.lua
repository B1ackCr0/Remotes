local keyboard = libs.keyboard;

--@help Launch Kodi application
actions.launch = function()
	if OS_WINDOWS then
		os.start("%programfiles(x86)%\\Kodi\\Kodi.exe"); 
	elseif OS_OSX then
		os.script("tell application \"Kodi\" to activate");
	end
end

--@help Start playback
actions.play = function()
	keyboard.stroke("space");
end

--@help Pause playback
actions.pause = function()
	keyboard.stroke("space");
end

--@help Toggle play/pause
actions.play_pause = function()
	keyboard.stroke("space");
end

--@help Raise volume
actions.volume_up = function()
	if (OS_WINDOWS) then
		keyboard.stroke("F10");
	else
		keyboard.stroke("plus");
	end
end

--@help Lower volume
actions.volume_down = function()
	if (OS_WINDOWS) then
		keyboard.stroke("F9");
	else
		keyboard.stroke("minus");
	end
end

--@help Toggle mute volume
actions.volume_mute = function()
	if (OS_WINDOWS) then
		keyboard.stroke("F8");
	else
		keyboard.stroke("volume_mute");
	end
end

--@help Navigate up
actions.up = function()
	keyboard.stroke("up");
end

--@help Navigate left
actions.left = function()
	keyboard.stroke("left");
end

--@help Navigate down
actions.down = function()
	keyboard.stroke("down");
end

--@help Navigate right
actions.right = function()
	keyboard.stroke("right");
end

--@help Select current item
actions.select = function()
	keyboard.stroke("return");
end

--@help Stop playback
actions.stop = function()
	keyboard.stroke("X");
end

--@help Play previous item
actions.previous = function()
	keyboard.stroke("oem_comma");
end

--@help Play next item
actions.next = function()
	keyboard.stroke("oem_period");
end

--@help Rewind
actions.rewind = function()
	keyboard.stroke("R");
end

--@help Fast forward
actions.fast_forward = function()
	keyboard.stroke("F");
end

--@help Navigate back
actions.back = function()
	keyboard.stroke("esc");
end

