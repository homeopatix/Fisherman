
FishermanCommand = Turbine.ShellCommand();

------------------------------------------------------------------------------------------
-- commands
------------------------------------------------------------------------------------------
function FishermanCommand:Execute( command, arguments )

	if ( arguments == "help" ) then
		Turbine.Shell.WriteLine(Strings.PluginHelp);
	elseif ( arguments == "show" ) then
		--Turbine.Shell.WriteLine("Show the Fisherman Window");
		FishermanWindow:SetVisible(true);
		settings.isWindowVisible = true;
		SaveSettings();
	elseif ( arguments == "hide" ) then
		--Turbine.Shell.WriteLine("Hide the Fisherman Window");
		FishermanWindow:SetVisible(false);
		settings.isWindowVisible = false;
		SaveSettings();
	elseif ( arguments == "options" ) then
		Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginOptionShowWindow);
		OptionsWindow:SetVisible(true);
		FishermanWindow:SetVisible(false);
		settings.isWindowVisible = false;
		settings.isOptionsWindowVisible = true;
------------------------------------------------------------------------------------------
-- alt command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "alt" ) then
		if(settings.altEnable == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginAltDesable);
			settings.altEnable = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginAltEnable);
			settings.altEnable = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- toggle command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "toggle" ) then
		if(settings.isWindowVisible == true)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowHide);
			FishermanWindow:SetVisible(false);
			settings.isWindowVisible = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowShow);
			FishermanWindow:SetVisible(true);
			settings.isWindowVisible = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- clear command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "clear" ) then
		Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginClear);
		settings.shortcutData_2 = tostring(""); 
		settings.shortcutData_3 = tostring(""); 
		settings.shortcutData_4 = tostring(""); 
		settings.shortcutType_2 = tostring("0");
		settings.shortcutType_3 = tostring("0");
		settings.shortcutType_4 = tostring("0");
		centerQS2:SetShortcut(Turbine.UI.Lotro.Shortcut()); 
		centerQS3:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQSWeapon:SetShortcut(Turbine.UI.Lotro.Shortcut()); 
		centerQSShield:SetShortcut(Turbine.UI.Lotro.Shortcut()); 
		centerQSFishingRod:SetShortcut(Turbine.UI.Lotro.Shortcut()); 
		SaveSettings();
	end
end

Turbine.Shell.AddCommand( "Fish;Fisherman", FishermanCommand );