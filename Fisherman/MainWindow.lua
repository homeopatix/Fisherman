------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
function CreatMainWindow()
	FishermanWindow=Turbine.UI.Lotro.GoldWindow(); 
	FishermanWindow:SetSize(180,120); 
	FishermanWindow:SetText(Strings.PluginName); 
	FishermanWindow.Message=Turbine.UI.Label(); 
	FishermanWindow.Message:SetParent(FishermanWindow); 
	FishermanWindow.Message:SetSize(150,15); 
	FishermanWindow.Message:SetPosition(FishermanWindow:GetWidth()/2 - 75, FishermanWindow:GetHeight()/2 + 40); 
	FishermanWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	FishermanWindow.Message:SetText(Strings.PluginText); 
	FishermanWindow:SetWantsKeyEvents(true);
	if(settings.isWindowVisible == true)then
		FishermanWindow:SetVisible( true );
	else
		FishermanWindow:SetVisible( false );
	end

	FishermanWindow:SetPosition(settings.positionX, settings.positionY);
------------------------------------------------------------------------------------------
-- yel helper center window
------------------------------------------------------------------------------------------

	if(settings.isPrimaryWeaponEquiped == true) then
		centerWindow = Turbine.UI.Extensions.SimpleWindow();
		centerWindow:SetSize( 40 , 40 );
		centerWindow:SetParent( FishermanWindow );
		centerWindow:SetPosition( 40 ,FishermanWindow:GetHeight()/2 - 12);
		centerWindow:SetVisible( true );
		centerWindow:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

		centerWindow2 = Turbine.UI.Extensions.SimpleWindow();				
		centerWindow2:SetSize( 40 , 40 );
		centerWindow2:SetParent( FishermanWindow );
		centerWindow2:SetPosition( 100 ,FishermanWindow:GetHeight()/2 - 12);
		centerWindow2:SetVisible( true );
		centerWindow2:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
		centerWindow2:SetZOrder(1000);

		centerWindow3 = Turbine.UI.Extensions.SimpleWindow();
		centerWindow3:SetSize( 40 , 40 );
		centerWindow3:SetParent( FishermanWindow );
		centerWindow3:SetPosition( 136 ,FishermanWindow:GetHeight()/2 - 12);
		centerWindow3:SetVisible( false );
		centerWindow3:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
	else
		centerWindow = Turbine.UI.Extensions.SimpleWindow();
		centerWindow:SetSize( 40 , 40 );
		centerWindow:SetParent( FishermanWindow );
		centerWindow:SetPosition( 20 ,FishermanWindow:GetHeight()/2 - 12);
		centerWindow:SetVisible( true );
		centerWindow:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );

		centerWindow2 = Turbine.UI.Extensions.SimpleWindow();
		centerWindow2:SetSize( 40 , 40 );
		centerWindow2:SetParent( FishermanWindow );
		centerWindow2:SetPosition( 70 ,FishermanWindow:GetHeight()/2 - 12);
		centerWindow2:SetVisible( true );
		centerWindow2:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
		centerWindow2:SetZOrder(1000);

		centerWindow3 = Turbine.UI.Extensions.SimpleWindow();
		centerWindow3:SetSize( 40 , 40 );
		centerWindow3:SetParent( FishermanWindow );
		centerWindow3:SetPosition( 120 ,FishermanWindow:GetHeight()/2 - 12);
		centerWindow3:SetVisible( true );
		centerWindow3:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
	end

	centerQS1 = Turbine.UI.Lotro.Quickslot();
	centerQS1:SetParent( centerWindow );
	centerQS1:SetPosition( 1, 1 );
	centerQS1:SetSize( 36, 36 );
	centerQS1:SetUseOnRightClick(false);
	settings.shortcutData_1 = "0x7000EE1E"; -- fishing
	centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 9, settings.shortcutData_1 ) );
	centerQS1:SetAllowDrop(false);

	centerQS2 = Turbine.UI.Lotro.Quickslot();
	centerQS2:SetParent( centerWindow2 );
	centerQS2:SetPosition( 1, 1 );
	centerQS2:SetSize( 36, 36 );
	centerQS2:SetUseOnRightClick(false);
	centerQS2:SetZOrder(1000);
	centerQS2:SetAllowDrop(false);

	if(settings.isPrimaryWeaponEquiped == true) then
		centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( settings.shortcutType_2, settings.shortcutData_2 ) );
	else
		centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( settings.shortcutType_3, settings.shortcutData_3 ) );
	end

	centerQS3 = Turbine.UI.Lotro.Quickslot();
	centerQS3:SetParent( centerWindow3 );
	centerQS3:SetPosition( 1, 1 );
	centerQS3:SetSize( 36, 36 );
	centerQS3:SetUseOnRightClick(false);
	centerQS3:SetAllowDrop(false);

	if(settings.isSecondaryWeaponEquiped == false) then
		centerQS3:SetShortcut( Turbine.UI.Lotro.Shortcut( settings.shortcutType_4, settings.shortcutData_4 ) );
	else
		centerQS3:SetShortcut( Turbine.UI.Lotro.Shortcut() );
	end

	centerQS2.MouseClick = function(sender, args)
		if(settings.shortcutType_2 ~= "")then
			if(settings.isFishRodEquiped == false) then
				settings.isFishRodEquiped = true;
				settings.isPrimaryWeaponEquiped = false;
				settings.isSecondaryWeaponEquiped = false;
				SaveSettings();
				CreatMainWindow();
			else
				if(settings.isSecondaryWeaponEquiped == true)then
					settings.isPrimaryWeaponEquiped = true;
					settings.isFishRodEquiped = false;
					SaveSettings();
					CreatMainWindow();
				end
			end
		end
	end

	centerQS3.MouseClick = function(sender, args)
		settings.isSecondaryWeaponEquiped = true;
		SaveSettings();
		CreatMainWindow();
	end

	SetMouseEnter();
	PositionChanged();
end
------------------------------------------------------------------------------------------
-- if the position changes, save the new window location
------------------------------------------------------------------------------------------
function PositionChanged()
	FishermanWindow.PositionChanged = function( sender, args )
		local x,y = FishermanWindow:GetPosition();
		settings.positionX = x;
		settings.positionY = y;
		SaveSettings();
	end
end
