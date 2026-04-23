------------------------------------------------------------------------------------------
-- create or load the settings
------------------------------------------------------------------------------------------
function LoadSettings()
	settings = PatchDataLoad(Turbine.DataScope.Character, "Fisherman_Settings", settings);

	if ( type( settings ) ~= "table" ) then
		settings = { };
	end

	if ( not settings.positionX) then		
		settings.positionX = ( Turbine.UI.Display:GetWidth()/2 - 200);		
	end
	
	if ( not settings.positionY) then	
		settings.positionY = ( Turbine.UI.Display.GetHeight()/2 - 200);
	end
	
	if ( not settings.shortcutData_1) then	
		settings.shortcutData_1 = tostring("");
	end	
	
	if ( not settings.shortcutData_2) then	
		settings.shortcutData_2 = tostring("");
	end	
	if ( not settings.shortcutData_3) then	
		settings.shortcutData_3 = tostring("");
	end	
	if ( not settings.shortcutData_4) then	
		settings.shortcutData_4 = tostring("");
	end	

	if ( not settings.shortcutType_1) then	
		settings.shortcutType_1 = 9;
	end
	
	if ( not settings.shortcutType_2) then	
		settings.shortcutType_2 = tostring("0");
	end

	if ( not settings.shortcutType_3) then	
		settings.shortcutType_3 = tostring("0");
	end

	if ( not settings.shortcutType_4) then	
		settings.shortcutType_4 = tostring("0");
	end
		
	if ( not settings.minimizeX) then	
		settings.minimizeX = 500;
	end

	if ( not settings.minimizeY) then	
		settings.minimizeY = 500;
	end
	
	if ( not settings.isMinimizeEnabled) then	
		settings.isMinimizeEnabled = true;
	end

	if ( not settings.isWindowVisible) then	
		settings.isWindowVisible = true;
	end

	if ( not settings.altEnable) then	
		settings.altEnable = false;
	end

	if ( not settings.isOptionsWindowVisible) then	
		settings.isOptionsWindowVisible = false;
	end
	
	if ( not settings.isFishRodEquiped) then	
		settings.isFishRodEquiped = false;
	end

	if ( not settings.isPrimaryWeaponEquiped) then	
		settings.isPrimaryWeaponEquiped = true;
	end

	if ( not settings.isSecondaryWeaponEquiped) then	
		settings.isSecondaryWeaponEquiped = true;
	end

	------------------------------------------------------------------------------------------
-- RGB color codes --
------------------------------------------------------------------------------------------
rgb = {
    start = "<rgb=#DAA520>",
    gold = "<rgb=#FFD700>",
    error = "<rgb=#FF0000>",
    clear = "</rgb>"
};
end
------------------------------------------------------------------------------------------
-- create the save settings
------------------------------------------------------------------------------------------
function SaveSettings()
	settings.positionX = tostring(settings.positionX);
   	settings.positionY = tostring(settings.positionY);
	settings.minimizeX = tostring(settings.minimizeX);
   	settings.minimizeY = tostring(settings.minimizeY);
	settings.isWindowVisible = settings.isWindowVisible;
	settings.isOptionsWindowVisible = settings.isOptionsWindowVisible;
	settings.shortcutData_1 = tostring(settings.shortcutData_1);
   	settings.shortcutData_2 = tostring(settings.shortcutData_2);
	settings.shortcutData_3 = tostring(settings.shortcutData_3);
	settings.shortcutData_4 = tostring(settings.shortcutData_4);
	settings.shortcutType_1 = settings.shortcutType_1;
	settings.shortcutType_2 = settings.shortcutType_2;
	settings.shortcutType_3 = settings.shortcutType_3;
	settings.shortcutType_4 = settings.shortcutType_4;
   	settings.isFishRodEquiped = settings.isFishRodEquiped;
	settings.isPrimaryWeaponEquiped = settings.isPrimaryWeaponEquiped;
	settings.isSecondaryWeaponEquiped = settings.isSecondaryWeaponEquiped;
	settings.altEnable = settings.altEnable;
   		
   -- save the settings
	PatchDataSave( Turbine.DataScope.Character, "Fisherman_Settings", settings);
end