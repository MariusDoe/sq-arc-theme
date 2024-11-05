Class {
	#name : #ArcDarkTheme,
	#superclass : #UserInterfaceTheme,
	#category : #ArcTheme
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'tobe 5/15/2024 10:02'
}
ArcDarkTheme class >> accent [

	^ Color r: 0.158 g: 0.513 b: 0.946
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'tobe 5/15/2024 11:28'
}
ArcDarkTheme class >> addButtons: theme [

	theme
		set: #borderColor for: #PluggableButtonMorph to: (Color transparent);
		set: #borderWidth for: #PluggableButtonMorph to: 0;
		set: #borderStyle for: #PluggableButtonMorph to: BorderStyle simple;
		set: #color for: #PluggableButtonMorph to: (Color gray: 0.216);
		
		set: #font for: #PluggableButtonMorph to: [Preferences standardButtonFont];
		set: #textColor for: #PluggableButtonMorph to: Color white;

		set: #selectionModifier for: #PluggableButtonMorph to: [ [:c | c adjustBrightness: -0.2] ];
		set: #hoverModifier for: #PluggableButtonMorph to: [ [:c | c adjustBrightness: 0.08] ];
		set: #feedbackModifier for: #PluggableButtonMorph to: [ [:c | c adjustBrightness: 0.3] ].
	
	"And the plus-version."
	theme
		set: #disabledColor for: #PluggableButtonMorphPlus to: Color transparent;
		set: #disabledTextColor for: #PluggableButtonMorphPlus to: (Color gray: 0.6).

	"And the three-phase button."
	theme
		derive: #color for: #ThreePhaseButtonMorph from: #PluggableButtonMorph at: #textColor;
		derive: #font for: #ThreePhaseButtonMorph from: #PluggableButtonMorph;
		derive: #textColor for: #ThreePhaseButtonMorph from: #PluggableButtonMorph.
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'tobe 5/15/2024 10:46'
}
ArcDarkTheme class >> addDialogs: theme [
	"self create apply."
	
	theme
		set: #borderColor for: #DialogWindow to: Color gray;
		set: #borderWidth for: #DialogWindow to: 1;
		set: #borderStyle for: #DialogWindow to: BorderStyle simple;
		set: #color for: #DialogWindow to: (Color gray: 0.098);

		set: #titleBorderColor for: #DialogWindow to: Color gray;
		set: #titleBorderWidth for: #DialogWindow to: 0;
		set: #titleBorderStyle for: #DialogWindow to: BorderStyle default;
		set: #titleColor for: #DialogWindow to: (Color transparent);
		set: #titleFont for: #DialogWindow to: [Preferences windowTitleFont];
		set: #titleTextColor for: #DialogWindow to: (Color gray: 0.89);
		
		set: #font for: #DialogWindow to: [Preferences standardSystemFont];
		set: #textColor for: #DialogWindow to: (Color gray: 0.89);
		
		set: #okColor for: #DialogWindow to: (Color r: 0.426 g: 0.762 b: 0.401) darker;
		set: #cancelColor for: #DialogWindow to: (Color r: 0.952 g: 0.405 b: 0.393) darker;
		set: #buttonColor for: #DialogWindow to: (Color gray: 0.5);
		set: #selectionModifier for: #DialogWindow to: [ [:c | self accent ] ].
	
	"The List Chooser is a dialog, too."
	theme
		derive: #okColor for: #ListChooser from: #DialogWindow;
		derive: #cancelColor for: #ListChooser from: #DialogWindow;
		set: #addColor for: #ListChooser to: Color blue muchLighter;
		set: #disabledColor for: #ListChooser to: Color gray.

	"And the mulitple list chooser."
	theme
		derive: #okColor for: #ListMultipleChooser from: #DialogWindow;
		derive: #cancelColor for: #ListMultipleChooser from: #DialogWindow.
		
	"And the system progress bar."
	theme
		derive: #borderColor for: #SystemProgressMorph from: #MenuMorph;
		derive: #borderWidth for: #SystemProgressMorph from: #MenuMorph;
		derive: #borderStyle for: #SystemProgressMorph from: #MenuMorph;
		derive: #color for: #SystemProgressMorph from: #MenuMorph;
		derive: #font for: #SystemProgressMorph from: #MenuItemMorph;
		derive: #textColor for: #SystemProgressMorph from: #MenuItemMorph;
		
		set: #borderColor for: #SystemProgressBarMorph to: Color transparent;
		set: #borderWidth for: #SystemProgressBarMorph to: 0;
		set: #borderStyle for: #SystemProgressBarMorph to: BorderStyle default;
		set: #color for: #SystemProgressBarMorph to: (Color gray: 0.85);
		set: #barColor for: #SystemProgressBarMorph to: (self accent).
		
	"And the balloon morphs."
	theme
		set: #borderColor for: #NewBalloonMorph to: (Color gray: 0.05);
		set: #borderWidth for: #NewBalloonMorph to: 1;
		set: #color for: #NewBalloonMorph to:(Color gray: 0.1);
		set: #font for: #NewBalloonMorph to: [Preferences standardBalloonHelpFont];
		set: #textColor for: #NewBalloonMorph to: Color white.
		
	theme
		derive: #borderColor for: #BalloonMorph from: #NewBalloonMorph;
		set: #borderWidth for: #BalloonMorph to: 0;
		derive: #color for: #BalloonMorph from: #NewBalloonMorph;
		derive: #font for: #BalloonMorph from: #NewBalloonMorph;
		derive: #textColor for: #BalloonMorph from: #NewBalloonMorph.
	
	"And the transfer morphs."
	theme
		derive: #borderColor for: #TransferMorph from: #NewBalloonMorph;
		derive: #borderWidth for: #TransferMorph from: #NewBalloonMorph;
		set: #color for: #TransferMorph to: Color white;
		derive: #font for: #TransferMorph from: #NewBalloonMorph;
		set: #textColor for: #TransferMorph to: Color black.	
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'mt 2/28/2022 15:30'
}
ArcDarkTheme class >> addFonts: theme [

	theme
		set: #standardSystemFont to: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 10.5);
		set: #standardFixedFont to: (TTCFont familyName: #BitstreamVeraSansMonoForSqueak pointSize: 10.5);

		set: #standardCodeFont to: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 10.5);
		set: #standardListFont to: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 10.5);
		set: #standardButtonFont to: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7.5);
		set: #standardMenuFont to: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 10.5);
		set: #standardFlapFont to: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7.5 emphasized: TextEmphasis bold emphasisCode);

		set: #windowTitleFont to: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 10.5 emphasized: TextEmphasis bold emphasisCode);
		set: #balloonHelpFont to: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7.5);
		set: #haloLabelFont to: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 10.5);

		set: #wizardStandardFont to: (StrikeFont familyName: 'Darkmap DejaVu Sans' pointSize: 14.5);
		set: #wizardButtonFont to: (StrikeFont familyName: 'Darkmap DejaVu Sans' pointSize: 14.5);
		set: #wizardHelpFont to: (StrikeFont familyName: 'Darkmap DejaVu Sans' pointSize: 10.5);
		set: #wizardTitleFont to: (StrikeFont familyName: 'Darkmap DejaVu Sans' pointSize: 23.5).
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'mt 8/24/2016 13:38'
}
ArcDarkTheme class >> addMVC: theme [
	"
	self create apply.
	"
	theme
		derive: #color for: #ListView from: #PluggableListMorph;
		derive: #borderColor for: #ListView from: #PluggableListMorph at: #textColor;
		
		derive: #color for: #StringHolderView from: #PluggableTextMorph;
		derive: #borderColor for: #StringHolderView from: #PluggableTextMorph at: #textColor;
		
		derive: #color for: #PluggableButtonView from: #PluggableButtonMorph;
		derive: #borderColor for: #PluggableButtonView from: #PluggableButtonMorph at: #textColor;
		derive: #font for: #PluggableButtonView from: #PluggableButtonMorph;
		
		derive: #color for: #PopUpMenu from: #MenuMorph;
		derive: #borderColor for: #PopUpMenu from: #MenuMorph;
		derive: #textColor for: #PopUpMenu from: #MenuItemMorph;
		derive: #lineColor for: #PopUpMenu from: #MenuMorph at: #borderColor;
		
		set: #borderColorModifier for: #StandardSystemView to: [ [:c | c adjustBrightness: -0.5] ].
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'tobe 5/15/2024 11:14'
}
ArcDarkTheme class >> addMenusAndDockingBars: theme [

	theme
		set: #borderColor for: #MenuMorph to: (Color gray: 0.1);
		set: #borderWidth for: #MenuMorph to: 1;
		set: #borderStyle for: #MenuMorph to: BorderStyle simple;
		set: #color for: #MenuMorph to: (Color gray: 0.12);

		set: #titleBorderColor for: #MenuMorph to: (Color r: 0.6 g: 0.7 b: 1);
		set: #titleBorderWidth for: #MenuMorph to: 0;
		set: #titleBorderStyle for: #MenuMorph to: BorderStyle simple;
		set: #titleColor for: #MenuMorph to: Color transparent;
		set: #titleFont for: #MenuMorph to: [Preferences windowTitleFont];
		set: #titleTextColor for: #MenuMorph to: Color white;
		
		set: #lineColor for: #MenuMorph to: (Color gray: 0.3);
		set: #lineStyle for: #MenuMorph to: BorderStyle simple;
		set: #lineWidth for: #MenuMorph to: 1.
		
	theme
		set: #font for: #MenuItemMorph to: [Preferences standardMenuFont];
		set: #textColor for: #MenuItemMorph to: (Color gray: 0.863);
		set: #disabledTextColor for: #MenuItemMorph to: Color gray;
		set: #selectionColor for: #MenuItemMorph to: (self accent);
		set: #selectionTextColor for: #MenuItemMorph to: Color white.
		
	"Derive some stuff for the docking bar morph, which looks mostly like a menu morph."
	theme
		set: #borderWidth for: #DockingBarMorph to: 0;
		derive: #borderColor for: #DockingBarMorph from: #MenuMorph;
		derive: #borderStyle for: #DockingBarMorph from: #MenuMorph;
		"derive: #color for: #DockingBarMorph from: #MenuMorph;"
		set: #color for: #DockingBarMorph to: (Color transparent);
	
		derive: #lineColor for: #DockingBarMorph from: #MenuMorph;
		derive: #lineStyle for: #DockingBarMorph from: #MenuMorph;
		derive: #lineWidth for: #DockingBarMorph from: #MenuMorph.
		
	"The world main docking bar."
	theme
		derive: #font for: #TheWorldMainDockingBar from: #MenuItemMorph;
		derive: #textColor for: #TheWorldMainDockingBar from: #MenuItemMorph;
		set: #logoColor for: #TheWorldMainDockingBar to: Color white;
		set: #selectionLogoColor for: #TheWorldMainDockingBar to: Color white.
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'tobe 5/15/2024 15:30'
}
ArcDarkTheme class >> addScrollables: theme [
	"self create apply"
	
	"Sliders"
	theme
		set: #borderColor for: #Slider to: Color gray;
		set: #borderWidth for: #Slider to: 1;
		set: #color for: #Slider to: Color lightGray;
		set: #thumbBorderColor for: #Slider to: [Color gray: 0.6];
		set: #thumbBorderWidth for: #Slider to: 0;
		set: #thumbColor for: #Slider to: Color veryVeryLightGray;
		set: #thumbShadowModifier for: #Slider to: [ [:c | c alpha: 0.7] ].
				
	"Scroll bars"
	theme
		set: #thumbBorderWidth for: #ScrollBar to: 1;
		set: #thumbColorModifier for: #ScrollBar to: [ [:c | c adjustBrightness: 0.1] ];
		set: #pagingAreaColorModifier for: #ScrollBar to: [ [:c | c darker alpha: 0.35] ];
		set: #borderColorModifier for: #ScrollBar to: [ [:c | c adjustBrightness: -0.3] ].
	
	"Scroll panes (includes generic stuff for list widgets, tree widgets, and text widgets."
	theme
		set: #borderColor for: #ScrollPane to: (Color transparent);
		set: #borderWidth for: #ScrollPane to: 0;
		set: #borderStyle for: #ScrollPane to: BorderStyle simple;
		set: #color for: #ScrollPane to: (Color transparent).
		
	"List widgets"
	theme
		set: #font for: #PluggableListMorph to: [Preferences standardListFont];
		set: #textColor for: #PluggableListMorph to: (Color gray: 0.992);
		set: #selectionColor for: #PluggableListMorph to: (self accent);
		derive: #multiSelectionColor for: #PluggableListMorph from: #PluggableListMorph at: #selectionColor do: [:c | c lighter];
		set: #selectionTextColor for: #PluggableListMorph to: Color white;
		set: #filterColor for: #PluggableListMorph to: Color yellow;
		set: #filterTextColor for: #PluggableListMorph to: Color black;
		set: #preSelectionModifier for: #PluggableListMorph to: [ [:c | Color gray: 0.9] ];
		set: #hoverSelectionModifier for: #PluggableListMorph to: [ [:c | c darker alpha: 0.3] ].
		
	"Tree widgets"
	theme
		derive: #font for: #SimpleHierarchicalListMorph from: #PluggableListMorph;
		derive: #textColor for: #SimpleHierarchicalListMorph from: #PluggableListMorph;
		derive: #selectionColor for: #SimpleHierarchicalListMorph from: #PluggableListMorph;
		derive: #selectionTextColor for: #SimpleHierarchicalListMorph from: #PluggableListMorph;
		derive: #filterColor for: #SimpleHierarchicalListMorph from: #PluggableListMorph;
		derive: #filterTextColor for: #SimpleHierarchicalListMorph from: #PluggableListMorph;
		derive: #hoverSelectionModifier for: #SimpleHierarchicalListMorph from: #PluggableListMorph;
		
		set: #highlightTextColor for: #SimpleHierarchicalListMorph to: Color fern;
		set: #lineColor for: #SimpleHierarchicalListMorph to: Color veryLightGray.
	
	"Text widgets"
	theme
		set: #font for: #PluggableTextMorph to: [TextStyle defaultFont];
		set: #textStyle for: #PluggableTextMorph to: [TextStyle default];
		set: #textStyleFixed for: #PluggableTextMorph to: [TextStyle defaultFixed];
		set: #color for: #PluggableTextMorph to: (Color transparent);
		set: #textColor for: #PluggableTextMorph to: (Color gray: 0.9);
		set: #caretColor for: #PluggableTextMorph to: Color red;
		set: #selectionColor for: #PluggableTextMorph to: (self accent alpha: 0.6);
		set: #unfocusedSelectionModifier for: #PluggableTextMorph to: [ [:c | Color gray: 0.3] ];
		set: #adornmentReadOnly for: #PluggableTextMorph to: Color black;
		set: #adornmentRefuse for: #PluggableTextMorph to: Color tan;
		set: #adornmentConflict for: #PluggableTextMorph to: Color red;
		set: #adornmentDiff for: #PluggableTextMorph to: Color green;
		set: #adornmentNormalEdit for: #PluggableTextMorph to: (Color r: 0.958 g: 0.751 b: 0.356);
		set: #adornmentDiffEdit for: #PluggableTextMorph to: Color yellow;
		set: #frameAdornmentWidth for: #PluggableTextMorph to: 1.
	theme
		set: #balloonTextColor for: #PluggableTextMorphPlus to: (Color gray: 0.7);
		derive: #balloonTextFont for: #PluggableTextMorphPlus from: #PluggableTextMorph at: #font.
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'tobe 5/15/2024 11:00'
}
ArcDarkTheme class >> addSyntaxHighlighting: theme [
	"This was the former sub-dued highlighting.
	self create apply.
	"
	
	| brown green red literalGreen purple blue darkBlue lightGreen fg secondaryFg strongVar weakVar |
	red := (Color r: 0.807 g: 0.569 b: 0.47).
	green := (Color r: 0.415 g: 0.6 b: 0.333).
	brown := (Color r: 0.863 g: 0.863 b: 0.667).
	blue := (Color r: 0.612 g: 0.863 b: 0.996).
	purple := (Color r: 0.772 g: 0.526 b: 0.753).
	darkBlue := (Color r: 0.337 g: 0.612 b: 0.84).
	literalGreen := (Color r: 0.71 g: 0.807 b: 0.659).
	lightGreen := (Color r: 0.306 g: 0.788 b: 0.69).
	fg :=(Color r: 0.831 g: 0.831 b: 0.831).
	secondaryFg := (Color r: 0.337 g: 0.612 b: 0.84).
	
	strongVar := (Color r: 0.31 g: 0.757 b: 1).
	weakVar := (Color r: 0.612 g: 0.863 b: 0.996).
	
	theme
		set: #color for: #TextAction to: (self accent);
		
		set: #default for: #SHTextStylerST80 to: {fg};
		set: #invalid for: #SHTextStylerST80 to: {Color red};
		set: #excessCode for: #SHTextStylerST80 to: {Color red};
		set: #comment for: #SHTextStylerST80 to: {green};
		set: #unfinishedComment for: #SHTextStylerST80 to: {Color red muchDarker. TextEmphasis italic};
		set: #'$' for: #SHTextStylerST80 to: {lightGreen};
		set: #character for: #SHTextStylerST80 to: {literalGreen};
		set: #integer for: #SHTextStylerST80 to: {literalGreen};
		set: #number for: #SHTextStylerST80 to: {literalGreen};	
		set: #- for: #SHTextStylerST80 to: {literalGreen};
		set: #symbol for: #SHTextStylerST80 to: {lightGreen};	
		set: #stringSymbol for: #SHTextStylerST80 to: {literalGreen};	
		set: #literalArray for: #SHTextStylerST80 to: {literalGreen};
		set: #string for: #SHTextStylerST80 to: {red. TextEmphasis normal};
		set: #unfinishedString for: #SHTextStylerST80 to: {Color red. TextEmphasis normal};
		set: #assignment for: #SHTextStylerST80 to: {fg. TextEmphasis bold};
		set: #ansiAssignment for: #SHTextStylerST80 to: {fg. TextEmphasis bold};
		set: #literal for: #SHTextStylerST80 to: {fg. TextEmphasis italic};
		set: #keyword for: #SHTextStylerST80 to: {brown};
		set: #binary for: #SHTextStylerST80 to: {brown};	
		set: #unary for: #SHTextStylerST80 to: {brown};
		set: #incompleteKeyword for: #SHTextStylerST80 to: {fg. TextEmphasis underlined};
		set: #incompleteBinary for: #SHTextStylerST80 to: {fg. TextEmphasis underlined};	
		set: #incompleteUnary for: #SHTextStylerST80 to: {fg. TextEmphasis underlined};
		set: #undefinedKeyword for: #SHTextStylerST80 to: {Color red};
		set: #undefinedBinary for: #SHTextStylerST80 to: {Color red};	
		set: #undefinedUnary for: #SHTextStylerST80 to: {Color red};													
		set: #patternKeyword for: #SHTextStylerST80 to: {fg. TextEmphasis bold};
		set: #patternBinary for: #SHTextStylerST80 to: {fg. TextEmphasis bold};
		set: #patternUnary for: #SHTextStylerST80 to: {fg. TextEmphasis bold};	
		set: #self for: #SHTextStylerST80 to: {purple};
		set: #super for: #SHTextStylerST80 to: {purple}; 
		set: #true for: #SHTextStylerST80 to: {purple};
		set: #false for: #SHTextStylerST80 to: {purple};
		set: #nil for: #SHTextStylerST80 to: {purple};
		set: #thisContext for: #SHTextStylerST80 to: {purple};
		set: #return for: #SHTextStylerST80 to: {Color white};
		set: #patternArg for: #SHTextStylerST80 to: {darkBlue};	
		set: #methodArg for: #SHTextStylerST80 to: {darkBlue};
		set: #blockPatternArg for: #SHTextStylerST80 to: {darkBlue};
		set: #blockArg for: #SHTextStylerST80 to: {darkBlue};
		set: #argument for: #SHTextStylerST80 to: {darkBlue};
		set: #blockArgColon for: #SHTextStylerST80 to: {fg}; 
		set: #leftParenthesis for: #SHTextStylerST80 to: {fg}; 
		set: #rightParenthesis for: #SHTextStylerST80 to: {fg}; 
		set: #leftParenthesis1 for: #SHTextStylerST80 to: {Color green muchDarker}; 
		set: #rightParenthesis1 for: #SHTextStylerST80 to: {Color green muchDarker}; 
		set: #leftParenthesis2 for: #SHTextStylerST80 to: {Color magenta muchDarker}; 
		set: #rightParenthesis2 for: #SHTextStylerST80 to: {Color magenta muchDarker}; 
		set: #leftParenthesis3 for: #SHTextStylerST80 to: {Color red muchDarker}; 
		set: #rightParenthesis3 for: #SHTextStylerST80 to: {Color red muchDarker}; 
		set: #leftParenthesis4 for: #SHTextStylerST80 to: {Color green darker}; 
		set: #rightParenthesis4 for: #SHTextStylerST80 to: {Color green darker}; 
		set: #leftParenthesis5 for: #SHTextStylerST80 to: {Color orange darker}; 
		set: #rightParenthesis5 for: #SHTextStylerST80 to: {Color orange darker}; 
		set: #leftParenthesis6 for: #SHTextStylerST80 to: {Color magenta darker}; 
		set: #rightParenthesis6 for: #SHTextStylerST80 to: {Color magenta darker}; 
		set: #leftParenthesis7 for: #SHTextStylerST80 to: {Color blue}; 
		set: #rightParenthesis7 for: #SHTextStylerST80 to: {Color blue}; 
		set: #blockStart for: #SHTextStylerST80 to: {fg}; 
		set: #blockEnd for: #SHTextStylerST80 to: {fg}; 
		set: #blockStart1 for: #SHTextStylerST80 to: {Color green muchDarker}; 
		set: #blockEnd1 for: #SHTextStylerST80 to: {Color green muchDarker}; 
		set: #blockStart2 for: #SHTextStylerST80 to: {Color magenta muchDarker}; 
		set: #blockEnd2 for: #SHTextStylerST80 to: {Color magenta muchDarker}; 
		set: #blockStart3 for: #SHTextStylerST80 to: {Color red muchDarker}; 
		set: #blockEnd3 for: #SHTextStylerST80 to: {Color red muchDarker}; 
		set: #blockStart4 for: #SHTextStylerST80 to: {Color green darker}; 
		set: #blockEnd4 for: #SHTextStylerST80 to: {Color green darker}; 
		set: #blockStart5 for: #SHTextStylerST80 to: {Color orange darker}; 
		set: #blockEnd5 for: #SHTextStylerST80 to: {Color orange darker}; 
		set: #blockStart6 for: #SHTextStylerST80 to: {Color magenta darker}; 
		set: #blockEnd6 for: #SHTextStylerST80 to: {Color magenta darker}; 
		set: #blockStart7 for: #SHTextStylerST80 to: {Color blue}; 
		set: #blockEnd7 for: #SHTextStylerST80 to: {Color blue}; 																																																		
		set: #arrayStart for: #SHTextStylerST80 to: {fg}; 
		set: #arrayEnd for: #SHTextStylerST80 to: {fg}; 
		set: #arrayStart1 for: #SHTextStylerST80 to: {fg}; 
		set: #arrayEnd1 for: #SHTextStylerST80 to: {fg}; 
		set: #byteArrayStart for: #SHTextStylerST80 to: {fg}; 
		set: #byteArrayEnd for: #SHTextStylerST80 to: {fg}; 
		set: #byteArrayStart1 for: #SHTextStylerST80 to: {fg}; 
		set: #byteArrayEnd1 for: #SHTextStylerST80 to: {fg}; 
		set: #leftBrace for: #SHTextStylerST80 to: {fg}; 
		set: #rightBrace for: #SHTextStylerST80 to: {fg}; 
		set: #cascadeSeparator for: #SHTextStylerST80 to: {fg}; 
		set: #statementSeparator for: #SHTextStylerST80 to: {fg}; 
		set: #externalCallType for: #SHTextStylerST80 to: {fg}; 
		set: #externalCallTypePointerIndicator for: #SHTextStylerST80 to: {fg}; 
		set: #primitiveOrExternalCallStart for: #SHTextStylerST80 to: {fg}; 
		set: #primitiveOrExternalCallEnd for: #SHTextStylerST80 to: {fg};
		set: #methodTempBar for: #SHTextStylerST80 to: {weakVar}; 
		set: #blockTempBar for: #SHTextStylerST80 to: {fg};
		set: #blockArgsBar for: #SHTextStylerST80 to: {fg};
		
		set: #primitive for: #SHTextStylerST80 to: {blue. TextEmphasis bold};
		set: #pragmaKeyword for: #SHTextStylerST80 to: {blue. TextEmphasis bold};
		set: #pragmaUnary for: #SHTextStylerST80 to: {blue. TextEmphasis bold};
		set: #pragmaBinary for: #SHTextStylerST80 to: {blue. TextEmphasis bold};									
		set: #externalFunctionCallingConvention for: #SHTextStylerST80 to: {blue. TextEmphasis bold}; 
		set: #module for: #SHTextStylerST80 to: {blue. TextEmphasis bold};
		
		set: #blockTempVar for: #SHTextStylerST80 to: {weakVar};
		set: #blockPatternTempVar for: #SHTextStylerST80 to: {fg};
		set: #instVar for: #SHTextStylerST80 to: {strongVar};
		set: #workspaceVar for: #SHTextStylerST80 to: {strongVar};
		set: #undefinedIdentifier for: #SHTextStylerST80 to: {Color red};
		set: #incompleteIdentifier for: #SHTextStylerST80 to: {fg. {TextEmphasis italic. TextEmphasis underlined}};
		set: #tempVar for: #SHTextStylerST80 to: {weakVar};
		set: #patternTempVar for: #SHTextStylerST80 to: {weakVar};
		set: #poolConstant for: #SHTextStylerST80 to: {strongVar};
		set: #classVar for: #SHTextStylerST80 to: {strongVar};
		set: #globalVar for: #SHTextStylerST80 to: {strongVar}.
		
	"And the text differ"
	theme	
		set: #insertTextAttributes for: #TextDiffBuilder to: { TextColor color: green };
		set: #removeTextAttributes for: #TextDiffBuilder to: { TextEmphasis struckOut. TextColor color: red };
		set: #normalTextAttributes for: #TextDiffBuilder to: { TextColor color: fg. TextEmphasis normal }.
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'tobe 5/14/2024 16:42'
}
ArcDarkTheme class >> addToolColors: theme [
	"Tool-specific colors."
	
	"SUnit's TestRunner."
	theme 
		set: #failureColor for: #TestRunner to: (Color r: 0.958 g: 0.751 b: 0.356);
		set: #errorColor for: #TestRunner to: (Color r: 0.952 g: 0.405 b: 0.393);
		set: #passColor for: #TestRunner to: (Color r: 0.426 g: 0.762 b: 0.401);
		
		derive: #failureTextColor for: #TestRunner from: #PluggableTextMorph at: #textColor;
		derive: #errorTextColor for: #TestRunner from: #PluggableTextMorph at: #textColor;
		derive: #passTextColor for: #TestRunner from: #PluggableTextMorph at: #textColor.
		
	"Monticello Tools."
	theme
		set: #revertedOperationAttributes for: #MCOperationsBrowser to: {TextEmphasis struckOut};
		set: #ignoredOperationAttributes for: #MCOperationsBrowser to: {TextColor color: Color gray}.
		"set: #rejectedOperationAttributes for: #MCOperationsBrowser to: {TextEmphasis struckOut};
		set: #acceptedOperationAttributes for: #MCOperationsBrowser to: {TextEmphasis underlined};
		set: #conflictingOperationAttributes for: #MCOperationsBrowser to: {TextEmphasis bold}."
		
	"Halos."
	theme
		derive: #borderColor for: #HaloMorph from: #MenuItemMorph at: #selectionColor do: [:c | c alpha: 0.8];
		derive: #borderColor for: #SelectionMorph from: #MenuItemMorph at: #selectionColor do: [:c | c twiceDarker alpha: 0.75];
		derive: #color for: #SelectionMorph from: #MenuItemMorph at: #selectionColor do: [:c | c alpha: 0.08].
	
	"Code-browsing tools."
	theme
		set: #noClassCommentColor for: #Browser to: Color red;
		set: #deprecatedMessageAttributes for: #CodeHolder to: { TextEmphasis struckOut. TextColor gray }.

	"Objects Tool."
	theme
		derive: #borderWidth for: #ObjectsTool from: #MenuMorph;
		derive: #borderColor for: #ObjectsTool from: #MenuMorph;
		derive: #borderStyle for: #ObjectsTool from: #MenuMorph;
		derive: #color for: #ObjectsTool from: #MenuMorph;
		derive: #textColor for: #ObjectsTool from: #MenuItemMorph;
		derive: #selectionTextColor for: #ObjectsTool from: #MenuItemMorph.
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'tobe 5/15/2024 10:53'
}
ArcDarkTheme class >> addWindowColors: theme [

	theme 
		set: #titleFont for: #SystemWindow to: [Preferences windowTitleFont];
		set: #borderColorModifier for: #SystemWindow to: [ [:c | c adjustBrightness: 0.1] ];
		set: #borderColorModifier for: #ScrollPane to: [ [:c | c adjustBrightness: 0.15] ];
		set: #borderWidth for: #SystemWindow to: 1;
		derive: #resizerColorModifier for: #AbstractResizerMorph from: #SystemWindow at: #borderColorModifier;
	
		set: #uniformWindowColor for: #Model to: (Color gray: 0.098);
		derive: #uniformWindowColor for: #TranscriptStream from: #Model;
		derive: #color for: #SystemWindow from: #Model at: #uniformWindowColor; "Fall back for windows without models."
				
		set: #unfocusedWindowColorModifier for: #SystemWindow to: [ [:color | color adjustBrightness: 0.05 ] ];
		set: #unfocusedLabelColor for: #SystemWindow to: (Color gray: 0.86);
		set: #focusedLabelColor for: #SystemWindow to: (Color gray: 0.932);

		set: #customWindowColor for: #Browser to: (Color r: 0.764 g: 0.9 b: 0.63);
		set: #customWindowColor for: #ChangeList to: (Color r: 0.719 g: 0.9 b: 0.9);
		set: #customWindowColor for: #ChangeSorter to: (Color r: 0.719 g: 0.9 b: 0.9);
		set: #customWindowColor for: #ChatNotes to: (Color r: 1.0 g: 0.7 b: 0.8);
		set: #customWindowColor for: #ClassCommentVersionsBrowser to: (Color r: 0.753 g: 0.677 b: 0.9);
		set: #customWindowColor for: #Debugger to: (Color r: 0.9 g: 0.719 b: 0.719);
		set: #customWindowColor for: #DualChangeSorter to: (Color r: 0.719 g: 0.9 b: 0.9);
		set: #customWindowColor for: #FileContentsBrowser to: (Color r: 0.7 g: 0.7 b: 0.508);
		set: #customWindowColor for: #FileList to: (Color r: 0.65 g: 0.65 b: 0.65);
		set: #customWindowColor for: #InstanceBrowser to: (Color r: 0.726 g: 0.9 b: 0.9);
		set: #customWindowColor for: #Lexicon to: (Color r: 0.79 g: 0.9 b: 0.79);
		set: #customWindowColor for: #MCTool to: (Color r: 0.65 g: 0.691 b: 0.876);
		set: #customWindowColor for: #MessageNames to: (Color r: 0.639 g: 0.9 b: 0.497);
		set: #customWindowColor for: #MessageSet to: (Color r: 0.719 g: 0.9 b: 0.9);
		set: #customWindowColor for: #PackagePaneBrowser to: (Color r: 0.9 g: 0.9 b: 0.63);
		set: #customWindowColor for: #PluggableFileList to: Color lightYellow;
		set: #customWindowColor for: #PreferenceBrowser to: (Color r: 0.671 g: 0.9 b: 0.9);
		set: #customWindowColor for: #SMLoader to: (Color r: 0.801 g: 0.801 b: 0.614);
		set: #customWindowColor for: #SMLoaderPlus to: (Color r: 0.801 g: 0.801 b: 0.614);
		set: #customWindowColor for: #SMReleaseBrowser to: (Color r: 0.801 g: 0.801 b: 0.614);
		set: #customWindowColor for: #ScriptingDomain to: (Color r: 0.91 g: 0.91 b: 0.91);
		set: #customWindowColor for: #SelectorBrowser to: (Color r: 0.45 g: 0.9 b: 0.9);
		set: #customWindowColor for: #StringHolder to: (Color r: 0.9 g: 0.9 b: 0.719);
		set: #customWindowColor for: #TestRunner to: (Color r: 0.9 g: 0.576 b: 0.09);
		set: #customWindowColor for: #TranscriptStream to: (Color r: 0.9 g: 0.75 b: 0.45);
		set: #customWindowColor for: #VersionsBrowser to: (Color r: 0.782 g: 0.677 b: 0.9).
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'tobe 5/15/2024 15:21'
}
ArcDarkTheme class >> create [
	"This is the default theme for Squeak.
	
	self create apply. "
	
	^ (self named: 'Arc (dark)') in: [:theme |		
		"General morph stuff."
		theme
			set: #keyboardFocusColor for: #Morph to: (self accent);
			set: #keyboardFocusWidth for: #Morph to: 2;
			set: #softShadowColor for: #Morph to: (Color black alpha: 0.005);
			set: #softShadowOffset for: #Morph to: (6@3 corner: 6@9);
			set: #hardShadowColor for: #Morph to: (Color black alpha: 0.5);
			set: #hardShadowOffset for: #Morph to: 1@1.
			
		theme set: #background for: #MorphicProject to: (Color gray: 0.05).
			
		self
			addFonts: theme;
			addWindowColors: theme;
			addSyntaxHighlighting: theme;
			addMenusAndDockingBars: theme;
			addDialogs: theme;
			addButtons: theme;
			addScrollables: theme;
			addToolColors: theme;
			addMVC: theme.
		
		theme]
]