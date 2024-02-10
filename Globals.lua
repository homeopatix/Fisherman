ResourcePath = "Homeopatix/Fisherman/Resources/";

Images = {
	MinimizedIcon = ResourcePath .. "Fisherman.tga",
};

function CreateLocalizationInfo()
	Strings = {};

	if Turbine.Engine.GetLanguage() == Turbine.Language.German then
		Strings.PluginName = "Fish";
		Strings.PluginText = "Von Homeopatix";
		Strings.PluginLoisir = "Wirf die Leine";
		Strings.PluginPrimary = "Prim\195\164r";
		Strings.PluginSecondary = "Sekund\195\164r";
		Strings.PluginCanneapeche = "Angelrute";
		Strings.PluginValidate = "Auswahl validieren";
		Strings.PluginAltEnable = "Alt-Taste aktiviert";
		Strings.PluginAltDesable = "Alt-Taste deaktiviert";
		Strings.PluginOptionShowWindow = "Zeigen Sie das Optionsfenster an";
		Strings.PluginClear = "L\195\182schen Sie die Verkn\195\188pfungen";
		Strings.PluginWindowShow = "Schaufenster.";
		Strings.PluginWindowHide = "Verstecke das Fenster.";
		Strings.PluginHelp = " *** Fisherman Hilfe ***\n\n" ..
		"/show Zeigen Fisherman an\n" ..
		"/hide Verstecke Fisherman\n" ..
		"/alt - Aktivieren oder deaktivieren Sie die alt-Taste um das Symbol zu verschieben.\n" ..
		"/esc - Aktivieren oder deaktivieren Sie die Escape-Taste\n" ..
		"/options - Zeigen Sie das Optionsfenster an\n" ..
		"/toggle - Fenster ein-oder ausblenden\n\n" ..
		"Sie k\195\182nnen Ihre Angelrute im Symbol rechts ziehen und ablegen";

elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
		Strings.PluginName = "Fish";
		Strings.PluginText = "Par Homeopatix";
		Strings.PluginLoisir = "Lancer la ligne";
		Strings.PluginPrimary = "Principale";
		Strings.PluginSecondary = "Secondaire";
		Strings.PluginCanneapeche = "Canne \195\160 p\195\170che";
		Strings.PluginValidate = "Valider Selection";
		Strings.PluginOptionShowWindow = "Affiche la fen\195\170tre d'options"
		Strings.PluginClear = "Efface les raccourcis";
		Strings.PluginAltEnable = "Touche Alt activ\195\169";
		Strings.PluginAltDesable = "Touche Alt desactiv\195\169";
		Strings.PluginWindowShow = "Affiche la fen\195\168tre.";
		Strings.PluginWindowHide = "Cache la fen\195\168tre.";
		Strings.PluginHelp = " *** Fisherman Aide ***\n\n" ..
		"/show affiche Fisherman\n" ..
		"/hide cache Fisherman\n" ..
		"/alt - Active ou d\195\169sactive la touche alt pour le d\195\169placement de l'icon.\n" ..
		"/esc - active ou desactive la touche escape\n" ..
		"/options - Affiche la fen\195\170tre d'options\n" ..
		"/toggle - Affiche ou cache la fenetre.\n\n" ..
		"Vous pouvez faire glisser et d\195\169poser votre canne a peche dans l'icon de droite";

elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
		Strings.PluginName = "Fish";
		Strings.PluginText = "By Homeopatix";
		Strings.PluginLoisir = "Throw the line";
		Strings.PluginPrimary = "Primary";
		Strings.PluginSecondary = "Secondary";
		Strings.PluginCanneapeche = "Fishing rod";
		Strings.PluginValidate = "Validate Selection";
		Strings.PluginOptionShowWindow = "Display the options window";
		Strings.PluginClear = "Delete the shortcuts";
		Strings.PluginAltEnable = "Alt key Activated";
		Strings.PluginAltDesable = "Alt key Desactivated";
		Strings.PluginWindowShow = "Show the window.";
		Strings.PluginWindowHide = "Hide the window.";
		Strings.PluginHelp = " *** Fisherman Help ***\n\n" ..
		"/show Display Fisherman\n" ..
		"/hide Hide Fisherman\n" ..
		"/alt - Activate or deactivate the alt key to move the icon.\n" ..
		"/esc - activate or deactivate the escape key\n" ..
		"/options - Display the option window\n" ..
		"/toggle - Display or hide the window.\n\n" ..
		"You can drag and drop your fishing rod in the icon on the right";
	end
end
