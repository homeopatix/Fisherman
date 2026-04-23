------------------------------------------------------------------------------------------
-- import librarys
------------------------------------------------------------------------------------------
import "Homeopatix.Fisherman.Librarys";

Turbine.Shell.WriteLine("<rgb=#CC56DA>Fisherman</rgb> <rgb=#DDDDDD>".. plugin:GetVersion() .." par Homeo</rgb>")

CreateLocalizationInfo();
LoadSettings();

------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
CreatMainWindow();
GenerateOptionsWindow();

--
--if(settings.shortcutData_2 ~= "")then
--	FishermanWindow:SetVisible( true );
--	OptionsWindow:SetVisible( false ); 
--	settings.isWindowVisible = true ;
--	settings.isOptionsWindowVisible = false ;
--else
--	OptionsWindow:SetVisible( true ); 
--	FishermanWindow:SetVisible( false );
--	settings.isWindowVisible = false ;
--	settings.isOptionsWindowVisible = true ;
--end

if(settings.isOptionsWindowVisible == false)then
	OptionsWindow:SetVisible(false);
else
	OptionsWindow:SetVisible(true);
end
------------------------------------------------------------------------------------------
-- mouse enter handler
------------------------------------------------------------------------------------------
SetMouseEnter();

------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
ClosingWindow();
EscapeKeyHandler();
------------------------------------------------------------------------------------------
-- handle minimizeIcon
------------------------------------------------------------------------------------------
if(settings.isWindowVisible == "true") then
	MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, FishermanWindow:SetVisible(true));
else
	MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, FishermanWindow:SetVisible(false));
end
MainMinimizedIcon:SetPosition(settings.minimizeX, settings.minimizeY);
MainMinimizedIcon:SetZOrder(0);

MainMinimizedIcon.PositionChanged = function()
	settings.minimizeX = MainMinimizedIcon:GetLeft();
	settings.minimizeY = MainMinimizedIcon:GetTop();
	SaveSettings();
end
