ResourcePath = "Homeopatix/Fisherman/Resources/";

Images = {
	MinimizedIcon = ResourcePath .. "Fisherman.tga",
};

function CreateLocalizationInfo()
	Strings = {};

	if Turbine.Engine.GetLanguage() == Turbine.Language.German then
		Strings.PluginName = "Fish";
		Strings.PluginText = "Von Homeopatix";
		Strings.PluginLoisir = "Wirf die Angel";
		Strings.PluginPrimary = "Prim\195\164r";
		Strings.PluginSecondary = "Sekund\195\164r";
		Strings.PluginCanneapeche = "Angelrute";
		Strings.PluginValidate = "Speichern";
		Strings.PluginAltEnable = "Alt-Taste aktiviert";
		Strings.PluginAltDesable = "Alt-Taste deaktiviert";
		Strings.PluginOptionShowWindow = "Optionen werden angezeigt";
		Strings.PluginClear = "Alle Verkn\195\188pfungen gel\195\182scht!";
		Strings.PluginWindowShow = "Fenster wird angezeigt";
		Strings.PluginWindowHide = "Fenster wird ausgeblendet";
		Strings.PluginHelp = " *** Fisherman Hilfe ***\n\n" ..
		"/fish show - Zeigt das Fenster an.\n" ..
		"/fish hide - Blendet das Fenster aus.\n" ..
		"/fish alt - Alt-Taste gedr\195\188ckt halten, um das Symbol zu verschieben.\n" ..
		"/fish clear - L\195\182scht alle Verkn\195\188pfungen.\n" ..
		"/fish esc - Aktiviert/Deaktiviert die Escape-Taste, um das Fenster zu schlie\195\159en.\n" ..
		"/fish options - Zeigt die Optionen an.\n" ..
		"/fish toggle - Fenster anzeigen/ausblenden.\n\n" ..
		"Du kannst deine Angelrute auf den rechten Platz ziehen und ablegen.";

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
		"/fish show affiche Fisherman\n" ..
		"/fish hide cache Fisherman\n" ..
		"/fish alt - Active ou d\195\169sactive la touche alt pour le d\195\169placement de l'icon.\n" ..
		"/fish esc - active ou desactive la touche escape\n" ..
		"/fish options - Affiche la fen\195\170tre d'options\n" ..
		"/fish toggle - Affiche ou cache la fenetre.\n\n" ..
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
		"/fish show Display Fisherman\n" ..
		"/fish hide Hide Fisherman\n" ..
		"/fish alt - Activate or deactivate the alt key to move the icon.\n" ..
		"/fish esc - activate or deactivate the escape key\n" ..
		"/fish options - Display the option window\n" ..
		"/fish toggle - Display or hide the window.\n\n" ..
		"You can drag and drop your fishing rod in the icon on the right";
	end
end
