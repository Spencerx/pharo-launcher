"
I provide Appearance seetings
for the PhLSettingsBrowser (pragma pharoLauncherSettings).
"
Class {
	#name : #PhLAppearanceSettings,
	#superclass : #Object,
	#category : 'PharoLauncher-Spec-Settings'
}

{ #category : #settings }
PhLAppearanceSettings class >> appearanceSettingsOn: aBuilder [ 
	<pharoLauncherSettings>
	(aBuilder group: #appearance)
		label: 'Appearance' ;  
		description: 'All settings concerned with the look''n feel of your system';
		target: PolymorphSystemSettings;
		with: [
			(aBuilder pickOne: #uiThemeClass)
				label: 'User interface theme';
				target: PolymorphSystemSettings;
				default: UITheme standardThemeClass;
				order: 1;
				domainValues: PolymorphSystemSettings uiThemeClassChoices. ]
]

{ #category : #settings }
PhLAppearanceSettings class >> standardFontsSettingsOn: aBuilder [
	<pharoLauncherSettings>
	(aBuilder group: #standardFonts)
		label: 'Standard fonts';
		target: StandardFonts;
		dialog: [GraphicFontSettings fontSizeRow];
		parent: #appearance;
		order: 4.
]
