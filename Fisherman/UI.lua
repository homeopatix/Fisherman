------------------------------------------------------------------------------------------
-- UI file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
-- create the window
------------------------------------------------------------------------------------------

function GenerateWindow()
		local horizontalPosition = 50 ;
		local verticalPosition = 50;
		local windowWidth = 220;
		local windowHeight = 120;
		local totalSlots = 0;

		FishermanWindow=Turbine.UI.Lotro.GoldWindow(); 
		FishermanWindow:SetSize(windowWidth, windowHeight); 
		FishermanWindow:SetText(Strings.PluginName); 

		FishermanWindow.Message=Turbine.UI.Label(); 
		FishermanWindow.Message:SetParent(FishermanWindow); 
		FishermanWindow.Message:SetSize(150,10); 
		FishermanWindow.Message:SetPosition(windowWidth/2 - 75, windowHeight - 20 ); 
		FishermanWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		FishermanWindow.Message:SetText(Strings.PluginText); 

		FishermanWindow:SetZOrder(0);
		FishermanWindow:SetWantsKeyEvents(true);
		FishermanWindow:SetWantsUpdates(true);

		FishermanWindow:SetPosition(settings["windowPosition"]["xPos"], settings["windowPosition"]["yPos"]);

		------------------------------------------------------------------------------------------
		-- center window --
		------------------------------------------------------------------------------------------
		if(settings["isFishingRodEquiped"]["value"] == true)then
			centerWindow = Turbine.UI.Extensions.SimpleWindow();
			centerWindow:SetSize( 36 , 36 );
			centerWindow:SetParent( FishermanWindow );
			centerWindow:SetPosition( horizontalPosition , verticalPosition);
			centerWindow:SetVisible( true );
			centerWindow:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

			centerLabel = Turbine.UI.Label();
			centerLabel:SetParent(centerWindow);
			centerLabel:SetPosition( 0, 0 );
			centerLabel:SetSize( 36, 36  );
			centerLabel:SetText( "" );
			centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			centerLabel:SetZOrder(-1);
			centerLabel:SetMouseVisible(false);

			centerQS1 = Turbine.UI.Lotro.Quickslot();
			centerQS1:SetParent( centerWindow );
			centerQS1:SetPosition( 0, 0 );
			centerQS1:SetSize( 35, 35 );
			centerQS1:SetUseOnRightClick(false);

			centerWindow2 = Turbine.UI.Extensions.SimpleWindow();
			centerWindow2:SetSize( 36 , 36 );
			centerWindow2:SetParent( FishermanWindow );
			centerWindow2:SetPosition( 92 , verticalPosition);
			centerWindow2:SetVisible( true );
			centerWindow2:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

			centerLabel = Turbine.UI.Label();
			centerLabel:SetParent(centerWindow2);
			centerLabel:SetPosition( 0, 0 );
			centerLabel:SetSize( 36, 36  );
			centerLabel:SetText( "" );
			centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			centerLabel:SetZOrder(-1);
			centerLabel:SetMouseVisible(false);

			centerQS2 = Turbine.UI.Lotro.Quickslot();
			centerQS2:SetParent( centerWindow2 );
			centerQS2:SetPosition( 0, 0 );
			centerQS2:SetSize( 35, 35 );
			centerQS2:SetUseOnRightClick(false);

			centerWindow3 = Turbine.UI.Extensions.SimpleWindow();
			centerWindow3:SetSize( 36 , 36 );
			centerWindow3:SetParent( FishermanWindow );
			centerWindow3:SetPosition( 134 , verticalPosition);
			centerWindow3:SetVisible( true );
			centerWindow3:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

			centerLabel = Turbine.UI.Label();
			centerLabel:SetParent(centerWindow3);
			centerLabel:SetPosition( 0, 0 );
			centerLabel:SetSize( 36, 36  );
			centerLabel:SetText( "" );
			centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			centerLabel:SetZOrder(-1);
			centerLabel:SetMouseVisible(false);

			centerQS3 = Turbine.UI.Lotro.Quickslot();
			centerQS3:SetParent( centerWindow3 );
			centerQS3:SetPosition( 0, 0 );
			centerQS3:SetSize( 35, 35 );
			centerQS3:SetUseOnRightClick(false);
		else
			centerWindow = Turbine.UI.Extensions.SimpleWindow();
			centerWindow:SetSize( 36 , 36 );
			centerWindow:SetParent( FishermanWindow );
			centerWindow:SetPosition( horizontalPosition , verticalPosition);
			centerWindow:SetVisible( true );
			centerWindow:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

			centerLabel = Turbine.UI.Label();
			centerLabel:SetParent(centerWindow);
			centerLabel:SetPosition( 0, 0 );
			centerLabel:SetSize( 36, 36  );
			centerLabel:SetText( "" );
			centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			centerLabel:SetZOrder(-1);
			centerLabel:SetMouseVisible(false);

			centerQS1 = Turbine.UI.Lotro.Quickslot();
			centerQS1:SetParent( centerWindow );
			centerQS1:SetPosition( 0, 0 );
			centerQS1:SetSize( 35, 35 );
			centerQS1:SetUseOnRightClick(false);

			centerWindow2 = Turbine.UI.Extensions.SimpleWindow();
			centerWindow2:SetSize( 36 , 36 );
			centerWindow2:SetParent( FishermanWindow );
			centerWindow2:SetPosition( 92 , verticalPosition);
			centerWindow2:SetVisible( true );
			centerWindow2:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

			centerLabel = Turbine.UI.Label();
			centerLabel:SetParent(centerWindow2);
			centerLabel:SetPosition( 0, 0 );
			centerLabel:SetSize( 36, 36  );
			centerLabel:SetText( "" );
			centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			centerLabel:SetZOrder(-1);
			centerLabel:SetMouseVisible(false);

			centerQS2 = Turbine.UI.Lotro.Quickslot();
			centerQS2:SetParent( centerWindow2 );
			centerQS2:SetPosition( 0, 0 );
			centerQS2:SetSize( 35, 35 );
			centerQS2:SetUseOnRightClick(false);
		end

		ClosingTheWindow();
		DeleteShortCutes();
		MouseClickHandler();
		SettingTheShortCuts();
		EscapeKeyPressed();
end
------------------------------------------------------------------------------------------
-- setting the shortcuts	
------------------------------------------------------------------------------------------
function SettingTheShortCuts()		
		if(settings["isFishingRodEquiped"]["value"] == true)then
			Turbine.Shell.WriteLine("Fishing rod equiped = true");
			if(settings["shortcuts"]["Data1"] ~= "") then
				centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 9, settings["shortcuts"]["Data1"] ) );
			end
			if(settings["shortcuts"]["Data3"] ~= "") then
				centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut(2, settings["shortcuts"]["Data3"] ) );
			end
			if(settings["shortcuts"]["Data4"] ~= "") then
				centerQS3:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings["shortcuts"]["Data4"] ) );
			end
		else
			if(settings["shortcuts"]["Data1"] ~= "") then
				centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 9, settings["shortcuts"]["Data1"] ) );
			end
			if(settings["shortcuts"]["Data2"] ~= "") then
				centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings["shortcuts"]["Data2"] ) );
			end
		end

end
------------------------------------------------------------------------------------------
-- setting the shortcuts for drag and drop	
------------------------------------------------------------------------------------------
function DragAndDrop()
	centerQS1.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();

		tmp = centerQS1:GetShortcut();
		tmp = tmp:GetData();

		tmp2 = centerQS1:GetShortcut();
		tmp2 = tmp2:GetType();

		Turbine.Shell.WriteLine(tmp);
		Turbine.Shell.WriteLine(tmp2);

		SaveSettings();
	end
	centerQS2.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();

		tmp = centerQS2:GetShortcut();
		tmp = tmp:GetData();

		Turbine.Shell.WriteLine(tmp);

		SaveSettings();
	end
	centerQS3.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();

		tmp = centerQS3:GetShortcut();
		tmp = tmp:GetData();

		Turbine.Shell.WriteLine(tmp);

		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- delete the shortcut with mouse wheel
------------------------------------------------------------------------------------------
function DeleteShortCutes()
		centerQS1.MouseWheel = function(sender, args)
			settings["shortcuts"]["Data" .. i] = ""; 
			centerQS1:SetShortcut(Turbine.UI.Lotro.Shortcut());
			SaveSettings();
		end
		centerQS2.MouseWheel = function(sender, args)
			settings["shortcuts"]["Data" .. i] = ""; 
			centerQS2:SetShortcut(Turbine.UI.Lotro.Shortcut());
			SaveSettings();
		end
		centerQS3.MouseWheel = function(sender, args)
			settings["shortcuts"]["Data" .. i] = ""; 
			centerQS3:SetShortcut(Turbine.UI.Lotro.Shortcut());
			SaveSettings();
		end
end
------------------------------------------------------------------------------------------
-- MousCLick Handler
------------------------------------------------------------------------------------------
function MouseClickHandler()

end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingTheWindow()
	function FishermanWindow:Closing(sender, args)
		settings["isWindowVisible"]["isWindowVisible"] = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- updating the window
------------------------------------------------------------------------------------------
function UpdateWindow()
	GenerateWindow();
end