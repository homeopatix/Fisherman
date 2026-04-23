------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingWindow()
	function FishermanWindow:Closing(sender, args)
		settings.isWindowVisible = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- mouse enter handler
------------------------------------------------------------------------------------------
function SetMouseEnter()
	centerQS1.MouseEnter = function(sender, args)
		FishermanWindow.Message:SetText(""); 
		FishermanWindow.Message:SetText(Strings.PluginLoisir); 
	end

	centerQS2.MouseEnter = function(sender, args)
		FishermanWindow.Message:SetText("");
		FishermanWindow.Message:SetText(Strings.PluginCanneapeche); 
	end

	centerQS1.MouseLeave = function(sender, args)
		FishermanWindow.Message:SetText(Strings.PluginText);
	end

	centerQS2.MouseLeave = function(sender, args)
		FishermanWindow.Message:SetText(Strings.PluginText);
	end
end

------------------------------------------------------------------------------------------
-- event handling
------------------------------------------------------------------------------------------
function EscapeKeyHandler()
	FishermanWindow.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			FishermanWindow:SetVisible(false);
			settings.isWindowVisible = false;
			OptionsWindow:SetVisible(false);
			settings.isOptionsWindowVisible = false;
			SaveSettings();
		end
	
		-- https://www.lotro.com/forums/showthread.php?493466-How-to-hide-a-window-on-F12&p=6581962#post6581962
		if ( args.Action == 268435635 ) then
			hudVisible=not hudVisible;
			if hudVisible then
				FishermanWindow:SetVisible(false);
				MainMinimizedIcon:SetVisible(false);
				OptionsWindow:SetVisible(false);
				settings.isWindowVisible = false ;
				settings.isOptionsWindowVisible = false;
			else
				FishermanWindow:SetVisible(settings.isWindowVisible);
				OptionsWindow:SetVisible(false);
				MainMinimizedIcon:SetVisible(true);
			end
		end
	end
end