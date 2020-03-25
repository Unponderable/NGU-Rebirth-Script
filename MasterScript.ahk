;MasterScript
;Written by Unponderable and Tatsumasa.

;Check the README for setup instructions.

;Settings can be changed when you run the script. Mess with stuff below at your own risk.

;PRO TIP: Use Blaze's junkyard spreadsheet from #help-and-info in the NGU Discord to help figure out what Wandoos version/Augments you should be running.
;Optimality may change depending on the challenge type or run duration.

;-------

Global defRebirthTimeSetting
Global defLoopOption
Global defLoopOptionValue
Global defMaxAdventureZone
Global defMaxSustainableBloodSpellNumber
Global defWandoosVersion
Global defOptimalAugmentation

Global defChallenge1RunIterations
Global defChallenge1RunLength
Global defChallenge2RunIterations
Global defChallenge2RunLength
Global defChallenge3RunIterations
Global defChallenge3RunLength

Global defEnableNGUs
Global defNGU_Augments
Global defNGU_Wandoos
Global defNGU_Respawn
Global defNGU_Gold
Global defNGU_Adventure
Global defNGU_PowerAlpha
Global defNGU_DropChance
Global defNGU_MagicNGU
Global defNGU_PP

Global defNGU_Yggdrasil
Global defNGU_EXP
Global defNGU_PowerBeta
Global defNGU_Number
Global defNGU_TimeMachine
Global defNGU_EnergyNGU
Global defNGU_AdventureBeta

Global defDigger_1
Global defDigger_2
Global defDigger_3
Global defDigger_4
Global defDigger_5
Global defDigger_6
Global defDigger_7
Global defDigger_8
Global defDigger_9
Global defDigger_10
Global defDigger_11
Global defDigger_12

Global EquipLoadout3ForMoneyPit
Global DoNotSave
Global DoubleBasicTrainingPerk
Global AlwaysCap
Global BackgroundMode
Global ImageSearchVariance

Global RebirthTimeSetting := defRebirthTimeSetting 
Global MaxAdventureZone := defMaxAdventureZone
Global MaxSustainableBloodSpellNumber := defMaxSustainableBloodSpellNumber 
Global WandoosVersion := defWandoosVersion
Global OptimalAugmentation := defOptimalAugmentation

Global Challenge1RunIterations := defChallenge1RunIterations
Global Challenge1RunLength := defChallenge1RunLength
Global Challenge2RunIterations := defChallenge2RunIterations
Global Challenge2RunLength := defChallenge2RunLength
Global Challenge3RunIterations := defChallenge3RunIterations
Global Challenge3RunLength := defChallenge3RunLength

Global EnableNGUs := defEnableNGUs
Global defEnergyNGU := [defNGU_Augments,defNGU_Wandoos,defNGU_Respawn,defNGU_Gold,defNGU_Adventure,defNGU_PowerAlpha,defNGU_DropChance,defNGU_MagicNGU,defNGU_PP]
Global EnergyNGU := defEnergyNGU
for index in EnergyNGU
{
	ENGU%index% := EnergyNGU[index]
}
Global defMagicNGU := [defNGU_Yggdrasil,defNGU_EXP,defNGU_PowerBeta,defNGU_Number,defNGU_TimeMachine,defNGU_EnergyNGU,defNGU_AdventureBeta]
Global MagicNGU := defMagicNGU
for index in MagicNGU
{
	MNGU%index% := MagicNGU[index]
}
Global defDiggers :=[defDigger_1,defDigger_2,defDigger_3,defDigger_4,defDigger_5,defDigger_6,defDigger_7,defDigger_8,defDigger_9,defDigger_10,defDigger_11,defDigger_12]
Global DiggerLoadout := defDiggers
for index in DiggerLoadout
{
	Digger%index% := defDiggers[index]
}



CoordMode, Mouse, Client
CoordMode, Pixel, Client
CoordMode, Tooltip, Client

Global Stop
Global OverallTimerStart
Global OverallTimerTime
Global SegmentTimerStart
Global SegmentTimerTime
Global LastSegmentTimerTime
Global SegmentTime
Global RebirthTimerStart
Global RebirthTimerTime
Global LastRebirthTimerTime
Global RebirthTime
Global WalderpTimerStart
Global WalderpTimerTime
Global PixelDiff
Global Counter
Global TempX
Global TempY
Global CurrentStep
Global Completions
Global Rebirths
Global Search1X
Global Search1Y
Global Search2X
Global Search2Y
Global SearchFileName
Global SleepStatus
Global CurrentStatus
Global ChallengeFlag
Global TransformFlag

Global TopLeftX = 0
Global TopLeftY = 0
Global WindowId = 0

Global MainMenuX := 221 ;main menu ("FEATURES") X coordinate
Global FightBossMainY := 42
Global MoneyPitMainY := 72
Global AdventureMainY := 102
Global InventoryMainY := 132
Global AugmentationMainY := 152
Global AdvTrainingMainY := 182
Global TimeMachineMainY := 212
Global BloodMagicMainY := 242
Global WandoosMainY := 272
Global NGUMainY := 302
Global YGGMainY := 332
Global DiggersMainY := 352
Global HacksY := 428
Global SelloutMainY := 507

Global ConfirmX := 755 - 329
Global ConfirmY := 640 - 323

Global SaveX := 370 - 329
Global SaveY := 805 - 323

Global CustomInput1X := 363
Global CustomInput2X := 467
Global CapX := 673
Global 2X := 703
Global 4X := 739
Global CustomPercent1X := 761
Global CustomPercent2X := 797
Global Idle2X := 865
Global Idle4X := 900
Global IdleCustomPercentX := 927

Global EnergyY := 17
Global MagicY := 41
Global R3Y := 69

Global RebirthMainX := 400 - 329
Global RebirthMainY := 735 - 323
Global RebirthX := 865 - 329
Global ChallengeX := 1030 - 329
Global RebirthBothY := 840 - 323
Global BasicY := 505 - 323

Global ChallengeMenuX := 710 - 329
Global 24HCY := 565 - 323
Global NECY := 625 - 323
Global BlindY := 745 - 323

Global FightX := 626
Global NukeY := 150
Global FightY := 280
Global StopY := 215

Global MoneyPitX := 428
Global MoneyPitY := 168
Global DailySpinMenuX := 824
Global DailySpinMenuY := 240
Global DailySpinX = 1045 - 329
Global DailySpinY = 880 - 323

Global AdventureLeftArrowX := 645 - 329
Global AdventureRightArrowX := 1255 - 329
Global AdventureArrowY := 211
Global ITOPODX := 725 - 329
Global ITOPODY := 555 - 323
Global ITOPODConfirmX := 955 - 329
Global ITOPODConfirmY := 620 - 323
Global ITOPODOptimalX := 1020 - 329
Global ITOPODOptimalY := 533 - 323

Global InventoryX := 670 - 329
Global InventoryY := 650 - 323
Global InventoryPagesX := 680 - 329
Global InventoryPagesY := 890 - 323
Global LoadoutX := 650 - 329
Global LoadoutY := 580 - 323
Global WeaponX := 895 - 329
Global CubeX := 945 - 329
Global WeaponCubeY := 435 - 323
Global Acces1X := 745 - 329
Global Acces2X := 795 - 329
Global Acces3Y := 485 - 323
Global Acces4Y := 535 - 323

Global AugmentationPlusX := 860 - 329

Global Scissors1Y := 585 - 323
Global Scissors2Y := 615 - 323
Global Milk1Y := 645 - 323
Global Milk2Y := 675 - 323
Global Cannon1Y := 710 - 323
Global Cannon2Y := 740 - 323
Global Shoulder1Y := 775 - 323
Global Shoulder2Y := 805 - 323
Global Buster1Y := 840 - 323
Global Buster2Y := 870 - 323
Global Exo1Y := 447
Global Exo2Y := 477
Global LaserSword1Y := 511
Global LaserSword2Y := 541

Global AugBBX := 515
Global AugScrollBarX := 945
Global AugScrollBarTopY := 257
Global AugScrollBarBottomY := 567

Global AugScrollStatus := "unknown"

Global AdvTrainingPlusX := 1210 - 329
Global AdvTrainingBothY := 550 - 323

Global TimeMachinePlusX := 850 - 329
Global TimeMachineEnergyY := 550 - 323
Global TimeMachineMagicY := 650 - 323
Global TimeMachineEnergyBBX := 507
Global TimeMachineEnergyBBY := 231
Global TimeMachineMagicBBY := 331

Global BloodMagicPlusX := 815 - 329
Global BloodMagicCapX := 890 - 329
Global BloodMagicY := 550 - 323
Global BloodMagicSpellsX := 710 - 329
Global BloodMagicSpellsY := 435 - 323

Global CastBloodMagicSpellsX1 := 660 - 329
Global CastBloodMagicSpellsY1 := 540 - 323
Global CastBloodMagicSpellsCheckX1 := 840 - 329
Global CastBloodMagicSpellsX2 := 1000 - 329
Global CastBloodMagicSpellsY2 := 606 - 301
Global CastBloodMagicSpellsCheckX2 := 1178 - 329
Global CastBloodMagicSpellsY3 := 734 - 301

Global WandoosPlusX := 875 - 329
Global WandoosCapX := 945 - 329
Global WandoosEnergyY := 570 - 323
Global WandoosMagicY := 670 - 323
Global WandoosCheckX := 645 - 329
Global Wandoos98Y := 740 - 323
Global WandoosMEHY := 765 - 323
Global WandoosXLY := 790 - 323

Global NGUBothPlusX := 845 - 329
Global NGUBothY := 565 - 323
Global NGUToMagicX := 695 - 329
Global NGUToMagicY := 445 - 323
Global NGUCapX := 620
Global NGUCapY := 160

Global YGGButtonsX := 1150 - 329
Global YGGMaxY := 770 - 323
Global YGGAllY := 810 - 323

Global DiggersPageX := 660 - 329
Global DiggersPageY := 435 - 323
Global DiggersLeftCapX := 870 - 329
Global DiggersRightCapX := 1185 - 329
Global DiggersTopCapY := 510 - 323
Global DiggersBottomCapY := 700 - 323
Global DiggersLeftActiveX := 660 - 329
Global DiggersRightActiveX := 985 - 329
Global DiggersTopActiveY := 565 - 323
Global DiggersBottomActiveY := 755 - 323

Global ChallengeChoice
Global RepeatChoice
Global RunDurationChoice
Global RunDurationChoiceText
Global LoopNumber
Global LoopNumberText

Global AdvZoneChoice
Global BloodSpellChoice
Global WandoosChoice
Global AugChoice

Global ScreenTopLeftX
Global ScreenTopLeftY

Global Nag := 0
Global Boss37Check := 0
Global ChallengeNumber
Global NACFlag := 0
Global 100LFlag := 0
Global NRCFlag := 0
Global NoTMFlag := 0

RunStart()
;^p::StartTest()

SetupOffsets() ; Defines TopLeftX and TopLeftY to be the top-left corner of the game, based on an image search. Run everytime you run a script.
{
	IfWinNotActive, Play NGU IDLE ;kong
	{
		IfWinNotActive, ahk_exe NGUIdle.exe ;kart
		{
			MsgBox, Failed to initiate - NGU Idle window not active.`nRun the script when the game window is active.
			Exit
		}
	}
	WinGet, WindowId, ID, A
	WinGetPos,,,WinW,WinH
	
	IfWinNotActive, ahk_exe NGUIdle.exe ;kart
	{
		SearchFileName = TopLeft.png
		ImageSearch, SearchX, SearchY, 0, 0, %WinW%, %WinH%, *%ImageSearchVariance% %SearchFileName%
				
		If SearchX
		{
			TopLeftX := SearchX
			TopLeftY := SearchY
			;MsgBox %TopLeftX% %TopLeftY%
		}
		else
		{
			MsgBox, Failed to initiate - NGU Idle game not fully visible or can't find TopLeft.png on screen.`nCheck the FAQ.
			;MsgBox,%WinW% %WinH%
			Exit
		}
	}
	IfWinActive, ahk_exe NGUIdle.exe ;kart
	{
		TopLeftX := 0
		TopLeftY := 0
	}
	
	if (BackgroundMode = 1)
	{
		ScreenTopLeftX := TopLeftX
		ScreenTopLeftY := TopLeftY
		WinGet, WindowId, ID, A
		global WindowId := WindowId
		CoordMode, Mouse, Screen ; We need coordmode set to screen because imagesearch doesn't work with inactive windows
		CoordMode, Pixel, Screen
		CoordMode, Tooltip, Screen
		
		WinGetPos,X1,Y1,XWid,YWid
		X2:=X1+XWid
		Y2:=Y1+YWid
		ImageSearch, TopLeftX, TopLeftY, %X1%, %Y1%, %X2%, %Y2%, *%ImageSearchVariance% %SearchFileName%
		;MsgBox, %TopLeftX% and %TopLeftY%
	}
}

Click2(X,Y,Button:="Left") ;Click2 clicks at X, Y _relative to the game_. Requires SetupOffsets() to have already been called once. Can also specify right-click, a-click, d-click, and Ctrl-click.
{
	if (BackgroundMode = 0)
	{
		;MsgBox, %X% %Y% %Button%
		WinActivate, Play NGU IDLE ;kong
		WinActivate, ahk_exe NGUIdle.exe ;kart
		
		X += TopLeftX
		Y += TopLeftY
		
		if (Button = "Left")
		{
			Click,%X%,%Y%
		}
		else if (Button = "Right")
		{
			Click,right,%X%,%Y%
		}
		else if (Button = "a")
		{
			Send {a down}{Click, %X%,%Y%}{a up}
		}
		else if (Button = "d")
		{
			Send {d down}{Click, %X%,%Y%}{d up}
		}
		else if (Button = "Ctrl")
		{
			Send ^{Click, %X%,%Y%}
		}
	}
	else
	{
		X += ScreenTopLeftX
		Y += ScreenTopLeftY
		Sleep, 100
		PostMessage, 0x200, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_MOUSEMOVE
		Sleep, 100

		if (Button = "Left") {
			PostMessage, 0x201, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_LBUTTONDOWN
			Sleep, 100
			PostMessage, 0x202, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_LBUTTONUP
		}

		else if (Button = "Right") { 
			PostMessage, 0x204, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_RBUTTONDOWN
			Sleep, 100
			PostMessage, 0x205, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_RBUTTONUP
		}
		else if (Button = "a")
		{
			PostMessage, 0x100, 0x41,,, ahk_id %WindowId% ; key down
			Sleep, 100
			PostMessage, 0x201, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_LBUTTONDOWN
	    	Sleep, 50
	    	PostMessage, 0x202, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_LBUTTONUP
	    	Sleep, 50
    		PostMessage, 0x101, 0x41,,, ahk_id %WindowId% ; key up
		}
		else if (Button = "d")
		{
			PostMessage, 0x100, 0x44,,, ahk_id %WindowId% ; key down
			Sleep, 100
			PostMessage, 0x201, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_LBUTTONDOWN
	    	Sleep, 50
	    	PostMessage, 0x202, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_LBUTTONUP
	    	Sleep, 50
    		PostMessage, 0x101, 0x44,,, ahk_id %WindowId% ; key up
		}
		else if (Button = "Ctrl")
		{
			PostMessage, 0x100, 0x11,,, ahk_id %WindowId% ; key down
			Sleep, 100
			PostMessage, 0x201, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_LBUTTONDOWN
	    	Sleep, 50
	    	PostMessage, 0x202, 0, X&0xFFFF | Y<<16,, ahk_id %WindowId% ; WM_LBUTTONUP
	    	Sleep, 50
    		PostMessage, 0x101, 0x11,,, ahk_id %WindowId% ; key up
		}
	}

}

Send2(inp)
{
	if (BackgroundMode = 0)
	{
		WinActivate, Play NGU IDLE ;kong
		WinActivate, ahk_exe NGUIdle.exe ;kart
		send, %inp%
	}
	else
	{
		StringLower, inp, inp
		if (inp = "{shift down}")
		{
			PostMessage, 0x100, 0x10,,, ahk_id %WindowId% ; key down
		}
		else if (inp = "{shift up}")
		{
			PostMessage, 0x101, 0x10,,, ahk_id %WindowId% ; key up
		}
		else if (inp = "ctrl down")
		{
			PostMessage, 0x100, 0x11,,, ahk_id %WindowId%
		}
		else if (inp = "ctrl up")
		{
			PostMessage, 0x101, 0x11,,, ahk_id %WindowId%
		}
		else if (inp = "{left}")
		{
			PostMessage, 0x100, 0x25,,, ahk_id %WindowId%
			Sleep 100
			PostMessage, 0x101, 0x25,,, ahk_id %WindowId%
		}
		else if (inp = "{right}")
		{
			PostMessage, 0x100, 0x27,,, ahk_id %WindowId%
			Sleep 100
			PostMessage, 0x101, 0x27,,, ahk_id %WindowId%
		}
		else if (inp = "{d down}")
		{
			PostMessage, 0x100, 0x44,,, ahk_id %WindowId%
		}
		else if (inp = "{d up}")
		{
			PostMessage, 0x101, 0x44,,, ahk_id %WindowId%
		}
		else if (inp = "{a down}")
		{
			PostMessage, 0x100, 0x41,,, ahk_id %WindowId%
		}
		else if (inp = "{a up}")
		{
			PostMessage, 0x101, 0x41,,, ahk_id %WindowId%
		}
		else if (Button = "{R}")
		{
			PostMessage, 0x100, 0x52,,, ahk_id %WindowId% ; key down
			sleep, 100
			PostMessage, 0x101, 0x52,,, ahk_id %WindowId% ; key up

		}
		else if (Button = "{T}")
		{
			PostMessage, 0x100, 0x54,,, ahk_id %WindowId% ; key down
			sleep, 100
			PostMessage, 0x101, 0x54,,, ahk_id %WindowId% ; key up
		}
		else if (Button = "{Esc}")
		{
			PostMessage, 0x100, 0x1B,,, ahk_id %WindowId% ; key down
			sleep, 100
			PostMessage, 0x101, 0x1B,,, ahk_id %WindowId% ; key up
		}
		else if (Button = "{Enter}")
		{
			PostMessage, 0x100, 0x0D,,, ahk_id %WindowId% ; key down
			sleep, 100
			PostMessage, 0x101, 0x0D,,, ahk_id %WindowId% ; key up
		}
		else
		{
			chars := {"a": 0x41, "b": 0x42, "c": 0x43, "d": 0x44, "e": 0x45, "f": 0x46, "g": 0x47, "h": 0x48
			, "i": 0x49, "j": 0x4A, "k": 0x4B, "l": 0x4C, "m": 0x4D, "n": 0x4E, "o": 0x4F, "p": 0x50, "q": 0x51
			, "r": 0x52, "s": 0x53, "t": 0x54, "u": 0x55, "v": 0x56, "w": 0x57, "x": 0x58, "y": 0x59, "z": 0x5A
			, " ": 0x20}
			numbers := {0: 0x30, 1: 0x31, 2: 0x32, 3: 0x33, 4: 0x34, 5: 0x35, 6: 0x36, 7: 0x37, 8: 0x38, 9: 0x39}
			Loop, parse, str
			{
				if (chars[A_LoopField])
				{
					while (GetKeyState("Control") || GetKeyState("Alt")) ; safeguard from sending ctrl/alt to the game
					{
						Sleep, 10
					} 
					PostMessage, 0x100, % chars[A_LoopField],,, ahk_id %WindowId% ; key down
					PostMessage, 0x101, % chars[A_LoopField],,, ahk_id %WindowId% ; key up
				}
				else ; numbers only require key up event
				{ 
					while (GetKeyState("Control") || GetKeyState("Alt"))
					{
						Sleep, 10
					}     
					PostMessage, 0x101, % numbers[A_LoopField],,, ahk_id %WindowId% ; key up
				}
			}
		}
	}
}

PixelGetColor2(X,Y)
{
	X += TopLeftX
	Y += TopLeftY
	;MsgBox,%X% %Y%
	PixelGetColor, value, %X%, %Y%
	return value
}

Timer() ; Sets up a tooltip at ToolTipX and ToolTipY to display what's going on in the script.
{
	ToolTipX := 5
	ToolTipY := 105

	OverallTimerTime := A_TickCount - OverallTimerStart
	OverallYear := 2016
	OverallYear += Floor (OverallTimerTime / 1000), SECONDS
	FormatTime, OverallTime, %OverallYear%, HH:mm:ss
	
	SegmentTimerTime := A_TickCount - SegmentTimerStart
	SegmentYear := 2016
	SegmentYear += Floor (SegmentTimerTime / 1000), SECONDS
	FormatTime, SegmentTime, %SegmentYear%, HH:mm:ss
	
	LastSegmentYear := 2016
	LastSegmentYear += Floor (LastSegmentTimerTime / 1000), SECONDS
	FormatTime, LastSegmentTime, %LastSegmentYear%, HH:mm:ss
	
	WalderpTimerTime := A_TickCount - WalderpTimerStart
	WalderpYear := 2016
	WalderpYear += Floor (WalderpTimerTime / 1000), SECONDS
	FormatTime, WalderpTime, %WalderpYear%, HH:mm:ss
	
	RebirthTimerTime := A_TickCount - RebirthTimerStart
	RebirthYear := 2016
	RebirthYear += Floor (RebirthTimerTime / 1000), SECONDS
	FormatTime, RebirthTime, %RebirthYear%, HH:mm:ss

	LastRebirthYear := 2016
	LastRebirthYear += Floor (LastRebirthTimerTime / 1000), SECONDS
	FormatTime, LastRebirthTime, %LastRebirthYear%, HH:mm:ss
	
	IfWinActive, Play NGU IDLE ;kong
		ToolTip, Diagnostic Tooltip`n`nOverall Time: %OverallTime%`nCurrent Status: %CurrentStatus%`nRebirth Time: %RebirthTime%`nLast RebirthTime: %LastRebirthTime%`nLast Rebirth Milli: %LastRebirthTimerTime%`nCurrent Function: %CurrentStep%`n`nStats:`n# of Completions: %Completions%`n`nEsc: Quit`nF12: Pause/Unpause, ToolTipX, ToolTipY
	IfWinActive, ahk_exe NGUIdle.exe ;kart
		ToolTip, Diagnostic Tooltip`n`nOverall Time: %OverallTime%`nCurrent Status: %CurrentStatus%`nRebirth Time: %RebirthTime%`nLast RebirthTime: %LastRebirthTime%`nFunction: %CurrentStep%`n`nStats:`n# of Completions: %Completions%`n`nEsc: Quit`nF12: Pause/Unpause, 0, 0
	Else
		ToolTip
	
}

;====Confirm and Save=====

Confirm() ; Clicks the confirm button that pops up when trying to take certain actions.
{
	CurrentStep := A_ThisFunc
	Click2(ConfirmX, ConfirmY)
	Sleep 500
}

Save() ; Clicks the save button.
{
	if DoNotSave = 1
	{
		return
	}	
	CurrentStep := A_ThisFunc
	Click2(SaveX, SaveY)
	Sleep 500
	IfWinActive, Save Yer Game
	{
		Send2("{Enter}")
		Sleep,500
	}
}

;====Energy Selection====

Energy2X() ; Clicks the 1/2 Idle Energy Button
{
	CurrentStep := A_ThisFunc
	Click2(Idle2X, EnergyY)
	Sleep 500
}

Energy4X() ; Clicks the 1/4 Idle Energy Button
{
	CurrentStep := A_ThisFunc
	Click2(Idle4X, EnergyY)
	Sleep 500
}

EnergyMax() ; Clicks the Max Energy Button
{
	CurrentStep := A_ThisFunc
	Click2(CapX, EnergyY)
	Sleep 500
}

EnergyCustom1() ; Clicks the 1st Custom Energy Button
{
	CurrentStep := A_ThisFunc
	Click2(CustomInput1X, MagicY)
	Sleep 500
}

EnergyCustom1Set(X) ;Sets Custom Energy Button 1 to be X
{
	CurrentStep := A_ThisFunc
	
	Click2(CustomInput2X,EnergyY)
	Sleep 500
	
	Send2(%X%)
	Sleep 500
	
	Send2("{Shift down}")
	Sleep 500
	Click2(CustomInput1X, MagicY)
	Sleep 500
	Send2("{Shift up}")
	Sleep 500
	
}

EnergyCustom2() ; Clicks the 2nd Custom Energy Button
{
	CurrentStep := A_ThisFunc
	Click2(CustomInput2X, MagicY)
	Sleep 500
}

EnergyCustom2Set(X) ;Sets Custom Energy Button 2 to be X. NOT USED
{
	CurrentStep := A_ThisFunc
	
	Click2(CustomInput2X,EnergyY)
	Sleep 500
	
	Send2(%X%)
	Sleep 500
	
	Send2("{Shift down}")
	Sleep 500
	Click2(CustomInput2X, MagicY)
	Sleep 500
	Send2("{Shift up}")
	Sleep 500
	
}

EnergyPercent1() ; Clicks the 1st Custom Percent Energy Button
{
	CurrentStep := A_ThisFunc
	Click2(CustomPercent1X, EnergyY)
	Sleep 500
}

EnergyCustomPercent1Set(X) ;Sets Custom Energy Percent Button 1 to be X.
{
	CurrentStep := A_ThisFunc
	
	Click2(CustomInput2X,EnergyY)
	Sleep 500
	
	Send2(%X%)
	Sleep 500
	
	Send2("{Shift down}")
	Sleep 500
	Click2(CustomPercent1X, EnergyY)
	Sleep 500
	Send2("{Shift up}")
	Sleep 500
	
}

EnergyPercent2() ; Clicks the 2nd Custom Percent Energy Button
{
	CurrentStep := A_ThisFunc
	Click2(CustomPercent2X, EnergyY)
	Sleep 500
}

EnergyCustomIdlePercent() ;Clicks on the Custom Idle Energy % button. Requires AP purchase
{
	CurrentStep := A_ThisFunc
	Click2(IdleCustomPercentX, EnergyY)
	Sleep 500
}

EnergyCustomIdlePercentSet(X) ;Sets Custom Idle Energy % Button to be X.
{
	CurrentStep := A_ThisFunc
	
	Click2(CustomInput2X,EnergyY)
	Sleep 500
	
	Send2(%X%)
	Sleep 500
	
	Send2("{Shift down}")
	Sleep 500
	Click2(IdleCustomPercentX, EnergyY)
	Sleep 500
	Send2("{Shift up}")
	Sleep 500
}

;====Magic Selection====

Magic2X() ; Clicks the 1/2 Idle Magic Button
{
	CurrentStep := A_ThisFunc
	Click2(Idle2X, MagicY)
	Sleep 500
}

Magic4X() ; Clicks the 1/4 Idle Magic Button
{
	CurrentStep := A_ThisFunc
	Click2(Idle4X, MagicY)
	Sleep 500
}

MagicPercent1() ; Clicks the 1st Custom Percent Magic Button
{
	CurrentStep := A_ThisFunc
	Click2(CustomPercent1X, MagicY)
	Sleep 500
}

MagicCustomPercent1Set(X) ;Sets Custom Magic Percent Button 1 to be X.
{
	CurrentStep := A_ThisFunc
	
	Click2(CustomInput2X,EnergyY)
	Sleep 500
	
	Send2("%X%")
	Sleep 500
	
	Send2("{Shift down}")
	Sleep 500
	Click2(CustomPercent1X, MagicY)
	Sleep 500
	Send2("{Shift up}")
	Sleep 500
}

MagicPercent2() ; Clicks the 2nd Custom Percent Magic Button
{
	CurrentStep := A_ThisFunc
	Click2(CustomPercent2X, MagicY)
	Sleep 500
}

MagicMax() ; Clicks the Max Magic Button
{
	CurrentStep := A_ThisFunc
	Click2(CapX, MagicY)
	Sleep 500
}

MagicCustomIdlePercent() ;Clicks on the Custom Magic Energy % button. Requires AP purchase
{
	CurrentStep := A_ThisFunc
	Click2(IdleCustomPercentX, MagicY)
	Sleep 500
}

MagicCustomIdlePercentSet(X)  ;Sets Custom Idle Magic % Button to be X.
{
	CurrentStep := A_ThisFunc
	
	Click2(CustomInput2X,EnergyY)
	Sleep 500
	
	Send2(%X%)
	Sleep 500
	
	Send2("{Shift down}")
	Sleep 500
	Click2(IdleCustomPercentX, MagicY)
	Sleep 500
	Send2("{Shift up}")
	Sleep 500
}

RegainEnergy() ; Presses R to regain all energy when not on Adventure screen
{
	CurrentStep := A_ThisFunc
	Send2("{R}")
	Sleep 500
}

RegainMagic() ; Presses T to regain all magic when not on Adventure screen
{
	CurrentStep := A_ThisFunc
	Send2("{T}")
	Sleep 500
}

RegainBoth() ; Presses R and T to regain all energy and magic when not on Adventure screen
{
	CurrentStep := A_ThisFunc
	Send2("{R}")
	Sleep 500
	Send2("{T}")
	Sleep 500
}

;====Rebirth and Challenges====

RebirthMenu() ; Clicks on the Rebirth button (on the left side menu)
{
	CurrentStep := A_ThisFunc
	Click2(RebirthMainX, RebirthMainY)
	Sleep 500
}

Rebirth() ; Clicks on the Rebith button (inside the Rebirth Menu)
{
	CurrentStep := A_ThisFunc
	Click2(RebirthX, RebirthBothY)
	Sleep 500
	RebirthTimerStart := A_TickCount
	Confirm()
}

ChallengeMenu() ; Clicks on the Challenges button (inside the Rebirth Menu)
{
	CurrentStep := A_ThisFunc
	Click2(ChallengeX, RebirthBothY)
	Sleep 500
}

24HCStart() ; Clicks on the 24-Hour Challenge button (inside the Challenges Menu) - legacy support option
{
	ChallengeStart(2)
}

ChallengeStart(ChallengeNumber) ;Clicks on the Challenge specified. ChallengeNumber=1 == Basic, and so on.
{
	CurrentStep := A_ThisFunc
    ChallengeFlag := 1
	PixelDiff := 30
	TempY := BasicY + PixelDiff * (ChallengeNumber - 1)
	Click2(ChallengeMenuX, TempY)
    Sleep 500
    RebirthTimerStart := A_TickCount
    Confirm()
}

;====Fight Boss====

FightMenu() ; Clicks on the Fight Boss menu
{
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, FightBossMainY)
	Sleep 500
}

NukeBoss() ; Clicks on the Nuke Button (in the Fight Boss menu)
{
	CurrentStep := A_ThisFunc
	Click2(FightX, NukeY)
	Sleep 500
}

FightBoss() ; Clicks on the Fight Button (in the Fight Boss menu)
{
	CurrentStep := A_ThisFunc
	Click2(FightX, FightY)
	Sleep 500
}

StopFight() ; Clicks on the Stop Button (in the Fight Boss menu)
{
	CurrentStep := A_ThisFunc
	Click2(FightX, StopY)
	Sleep 500
}

;====Money Pit and Daily Spin====

MoneyPitMenu() ; Clicks on the Money Pit menu
{
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, MoneyPitMainY)
	Sleep 500
}

DailySpinMenu() ; Clicks on the Daily Spin button (inside the Money Pit menu)
{
	CurrentStep := A_ThisFunc
	Click2(DailySpinMenuX, DailySpinMenuY)
	Sleep 500
}

MoneyPit() ; Clicks on the Money Pit (inside the Money Pit menu)
{
	CurrentStep := A_ThisFunc
	Click2(MoneyPitX, MoneyPitY)
	Sleep 500
	Confirm()
}

DailySpin() ; Clicks on the "No BS, just gimme the prize" button inside the Daily Spin menu.
{
	CurrentStep := A_ThisFunc
	Click2(DailySpinX, DailySpinY)
	Sleep 500
}

;====Adventure====

AdventureMenu() ; Clicks on the Adventure Menu
{
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, AdventureMainY)
	Sleep 500
}

AdventureStart() ; Right clicks on the left arrow, which brings you to the safe zone (inside the Adventure menu).
{
	CurrentStep := A_ThisFunc
	Click2(AdventureLeftArrowX, AdventureArrowY,"Right")
	Sleep 500
}

AdventureMax() ; Right clicks on the right arrow, which brings you to the furthest unlocked adventure zone that isn't a titan (inside the Adventure menu).
{
	CurrentStep := A_ThisFunc
	Click2(AdventureRightArrowX, AdventureArrowY,"Right")
	Sleep 500
}

AdventureLeft(X) ; Moves you X Adventure zones backward (inside the Adventure menu).
{
	CurrentStep := A_ThisFunc
	Loop %X%
	{
		;Click2(AdventureLeftArrowX, AdventureArrowY)
		Send2("{Left}")
		Sleep 250
	}
	Sleep 500
}

AdventureRight(X) ; Moves you X Adventure zones forward (inside the Adventure menu).
{
	CurrentStep := A_ThisFunc
	Loop %X%
	{
		;Click2(AdventureRightArrowX, AdventureArrowY)
		Send2("{Right}")
		Sleep 250
	}
	Sleep 500
}

ITOPOD(Floor:=0) ; Starts adventuring in ITOPOD (inside the Adventure menu). If specified, will type in floor to idle on. If not specified, will go to 'optimal' floor.
{
	if NoTMFlag = 1
		return
	
	CurrentStep := A_ThisFunc
	Click2(ITOPODX, ITOPODY)
	Sleep 500
	
	if(Floor > 0)
	{
		Click2(ITOPODMinX,ITOPODMinY)
		Sleep 500
		Send2(%Floor%)
		Sleep 500
		Click2(ITOPODMinX,ITOPODMaxY)
		Sleep 500
		Send2(%Floor%)
		Sleep 500
	}
	else
	{
	Click2(ITOPODOptimalX,ITOPODOptimaly)
	Sleep,500
	}
	
	Click2(ITOPODConfirmX, ITOPODConfirmY)
	Sleep 500
}

;====Inventory====

InventoryMenu() ; Clicks on the Inventory menu
{
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, InventoryMainY)
	Sleep 500
}

InventoryPage(X) ; Goes to the Xth page of your Inventory (inside the Inventory menu)
{
	if X > 8 ;idiot-proofing
	{
		X := 8
	}
	if X < 0 ;idiot-proofing
	{
		X := 0
	}
	
	CurrentStep := A_ThisFunc
	PixelDiff := 65
	TempX := InventoryPagesX + PixelDiff * (X - 1)
	Click2(TempX, InventoryPagesY)
	Sleep 500
}

InventoryMerge(X,Y) ; Inside the inventory menu, sequentially merges the first X rows of items on inventory page Y. If the item is transformable, it will be transformed.
{
	if Y > 8 ;idiot-proofing
	{
		Y:= 8
	}
	if Y < 0 ;idiot-proofing
	{
		Y:= 0
	}
	
	InventoryPage(Y)
	Sleep 500
	CurrentStep := A_ThisFunc
	PixelDiff := 50
	Counter := 0
	Send2("{d down}")
	Sleep 250
	
	if X > 5 ;idiot-proofing
	{
		X := 5
	}
	if X < 0 ;idiot-proofing
	{
		X := 0
	}
	
	While Counter < X
	{
		TempY := InventoryY + PixelDiff * Counter
		Counter2 := 0
		Loop 12
		{
			TempX := InventoryX + PixelDiff * Counter2
			Click2(TempX, TempY)
			Sleep 250
			TransformCheck()
			If TransformFlag = 1
			{
				Send2("{ctrl down}")
				Sleep 250
				Click2(TempX, TempY)
				Sleep 250
				Send2("{ctrl up}")
				Sleep 250
			}
			Counter2++
		}
		Counter++
	}
	Send2("{d up}")
	Sleep 500
}

InventoryBoost(X,Y,Z:=1) ; Inside the inventory menu, on inventory page Z, sequentially boosts the first X columns of items in row Y.
{
	if X > 12 ;idiot-proofing
	{
		X := 12
	}
	if X < 0 ;idiot-proofing
	{
		X := 0
	}
	if Y > 5 ;idiot-proofing
	{
		Y:= 5
	}
	if Y < 0 ;idiot-proofing
	{
		Y:= 0
	}
	
	InventoryPage(Z)
	Sleep 500
	CurrentStep := A_ThisFunc
	PixelDiff := 50
	Counter := 0
	TempY := InventoryY + PixelDiff * (Y - 1)
	While Counter < X
	{
		TempX := InventoryX + PixelDiff * Counter
		Send2("{a down}")
		Sleep 250
		Click2(TempX, TempY)
		Sleep 250
		Counter++
	}
	Send2("{a up}")
	Sleep 500
}

ExtraBoosts() ; Boosts accessories 4, 3, 6, and the weapon
{
	Send2("{a down}")
	Sleep 500
	Click2(Acces1X, Acces4Y)
	Sleep 500
	Click2(Acces1X, Acces3Y)
	Sleep 500
	Click2(Acces2X, Acces3Y)
	Sleep 500
	Click2(WeaponX, WeaponCubeY)
	Send2("{a up}")
	Sleep 500
}

BoostCube() ; Right clicks on the infinity cube, adding all boosts to it
{
	Click2(CubeX, WeaponCubeY,"Right")
	Sleep 500
}

Loadout(X) ; Equips Loadout X
{
	CurrentStep := A_ThisFunc
	PixelDiff := 30
	TempX := LoadoutX + PixelDiff * (X - 1)
	Click2(TempX, LoadoutY)
	Sleep 500
}

;====Augmentations====

AugmentationMenu() ; Clicks on the augmentation menu
{
	if NACFlag = 1
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, AugmentationMainY)
	Sleep 500
}

AugmentationScissors() ; Adds energy to Safety Scissors and then Danger Scissors, if you're not capped.
{
	if NACFlag = 1
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	
	AugScrollUp()
	
	Aug_BB1 := PixelGetColor2(AugBBX,Scissors1Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Scissors1Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Scissors1Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Scissors1Y)
		Sleep 500
	}
	
	Aug_BB1 := PixelGetColor2(AugBBX,Scissors2Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Scissors2Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Scissors2Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Scissors2Y)
		Sleep 500
	}
	
}

AugmentationMilk() ; Adds energy to Milk Infusion and then Drinking the Milk Too, if you're not capped.
{
	if NACFlag = 1
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	
	AugScrollUp()
	
	Aug_BB1 := PixelGetColor2(AugBBX,Milk1Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Milk1Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Milk1Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Milk1Y)
		Sleep 500
	}
	
	Aug_BB1 := PixelGetColor2(AugBBX,Milk2Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Milk2Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Milk2Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Milk2Y)
		Sleep 500
	}
}

AugmentationCannon() ; Adds energy to Cannon Implant and then Missile Launcher, if you're not capped.
{
	if NACFlag = 1
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	
	AugScrollUp()
	
	Aug_BB1 := PixelGetColor2(AugBBX,Cannon1Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Cannon1Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Cannon1Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Cannon1Y)
		Sleep 500
	}
	
	Aug_BB1 := PixelGetColor2(AugBBX,Cannon2Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Cannon2Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Cannon2Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Cannon2Y)
		Sleep 500
	}
}

AugmentationShoulder() ; Adds energy to Shoulder Mounted and then Actual Ammunition, if you're not capped.
{
	if NACFlag = 1
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	
	AugScrollUp()
	
	Aug_BB1 := PixelGetColor2(AugBBX,Shoulder1Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Shoulder1Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Shoulder1Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Shoulder1Y)
		Sleep 500
	}
	
	Aug_BB1 := PixelGetColor2(AugBBX,Shoulder2Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Shoulder2Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Shoulder2Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Shoulder2Y)
		Sleep 500
	}
}

AugmentationBuster() ; Adds energy to Energy Buster and then Charge Shot, if you're not capped.
{
	if NACFlag = 1
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	
	AugScrollUp()
	
	Aug_BB1 := PixelGetColor2(AugBBX,Buster1Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Buster1Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Buster1Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Buster1Y)
		Sleep 500
	}
	
	Aug_BB1 := PixelGetColor2(AugBBX,Buster2Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Buster2Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Buster2Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Buster2Y)
		Sleep 500
	}
}

AugmentationExoskeleton() ; Adds energy to Advanced Exoskeleton and then Energy Shield, if you're not capped.
{
	if NACFlag = 1
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	
	AugScrollDown()
	
	Aug_BB1 := PixelGetColor2(AugBBX,Exo1Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Exo1Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Exo1Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Exo1Y)
		Sleep 500
	}
	
	Aug_BB1 := PixelGetColor2(AugBBX,Exo2Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,Exo2Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,Exo2Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, Exo2Y)
		Sleep 500
	}
}

AugmentationLaserSword() ; Adds energy to Laser Sword and then Quadruple Sided Laser, if you're not capped.
{
		if NACFlag = 1
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	
	AugScrollDown()
	
	Aug_BB1 := PixelGetColor2(AugBBX,LaserSword1Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,LaserSword1Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,LaserSword1Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, LaserSword1Y)
		Sleep 500
	}
	
	Aug_BB1 := PixelGetColor2(AugBBX,LaserSword2Y)
	Sleep, 10
	Aug_BB2 := PixelGetColor2(AugBBX,LaserSword2Y)
	Sleep, 10
	Aug_BB3 := PixelGetColor2(AugBBX,LaserSword2Y)
	if ((Aug_BB1 != 0xFFFFFF) && (Aug_BB2 != 0xFFFFFF) && (Aug_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(AugmentationPlusX, LaserSword2Y)
		Sleep 500
	}
}

Augmentation(X) ;Adds energy to Augmentation X (up to 6 = Laser Sword)
{
	if NACFlag = 1
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	if X=0
	{
		AugmentationScissors()
	}
	else if X=1
	{
		AugmentationMilk()
	}
	else if X=2
	{
		AugmentationCannon()
	}
	else if X=3
	{
		AugmentationShoulder()
	}
	else if X=4
	{
		AugmentationBuster()
	}
	else if X=5
	{
		AugmentationExoskeleton()
	}
	else if X=6
	{
		AugmentationLaserSword()
	}
}

AugScrollDown()
{
	if AugScrollStatus = down
	{
		return
	}
	
	Click2(AugScrollBarX, AugScrollBarBottomY)
	Sleep 500
	Click2(AugScrollBarX, AugScrollBarBottomY)
	Sleep 500
	
	AugScrollStatus := "down"
}

AugScrollUp()
{
	if AugScrollStatus = up
	{
		return
	}
	
	Click2(AugScrollBarX, AugScrollBarTopY)
	Sleep 500
	Click2(AugScrollBarX, AugScrollBarTopY)
	Sleep, 500
	
	AugScrollStatus := "up"
}

;====Adv. Training====

AdvTrainingMenu() ; Clicks on the Adv. Training Menu
{
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, AdvTrainingMainY)
	Sleep 500
}

AdvTrainingPlus(X) ; Clicks to add energy to the Xth item in the Adv. Training List. 1 = Tough+, 2 = Power+, 3= Block, 4 = Wandoos Energy+, 5 = Wandoos Magic+
{
	CurrentStep := A_ThisFunc
	PixelDiff := 40
	TempY := AdvTrainingBothY + PixelDiff * (X - 1)
	Click2(AdvTrainingPlusX, TempY)
	Sleep 500
}

;====Time Machine====

TimeMachineMenu() ; Clicks on the Time Machine menu
{
	if NoTMFlag = 1
		return
	
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, TimeMachineMainY)
	Sleep 500
}

TimeMachineEnergy() ; Clicks to add energy to the time machine (inside the Time Mahine Menu), if you're not capped.
{
	if NoTMFlag = 1
		return
	
	CurrentStep := A_ThisFunc
	
	TM_BB1 := PixelGetColor2(TimeMachineEnergyBBX,TimeMachineEnergyBBY)
	Sleep, 10
	TM_BB2 := PixelGetColor2(TimeMachineEnergyBBX,TimeMachineEnergyBBY)
	Sleep, 10
	TM_BB3 := PixelGetColor2(TimeMachineEnergyBBX,TimeMachineEnergyBBY)
	if ((TM_BB1 != 0xFFFFFF) && (TM_BB2 != 0xFFFFFF) && (TM_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add energy.
	}
	else
	{
		Click2(TimeMachinePlusX, TimeMachineEnergyY)
		Sleep 500
	}
	
}

TimeMachineMagic() ; Clicks to add magic to the time machine (inside the Time Mahine Menu), if you're not capped.
{
	if NoTMFlag = 1
		return
	
	CurrentStep := A_ThisFunc
	
	TM_BB1 := PixelGetColor2(TimeMachineEnergyBBX,TimeMachineMagicBBY)
	Sleep, 10
	TM_BB2 := PixelGetColor2(TimeMachineEnergyBBX,TimeMachineMagicBBY)
	Sleep, 10
	TM_BB3 := PixelGetColor2(TimeMachineEnergyBBX,TimeMachineMagicBBY)
	if ((TM_BB1 != 0xFFFFFF) && (TM_BB2 != 0xFFFFFF) && (TM_BB3 != 0xFFFFFF))
	{
		;MsgBox, You're probably capped and don't need to add magic.
	}
	else
	{
		Click2(TimeMachinePlusX, TimeMachineMagicY)
		Sleep 500
	}
}

TimeMachineBoth() ; Clicks to add energy and then magic to the time machine (inside the Time Mahine Menu)
{
	;CurrentStep := A_ThisFunc
	TimeMachineEnergy()
	TimeMachineMagic()
}

;====Blood Magic====

BloodMagicMenu() ; Clicks on the Blood Magic menu
{
	Click2(MainMenuX, BloodMagicMainY)
	Sleep 500
}

BloodMagicCap(X) ; Caps Blood Magic in the Xth Spell (inside the Blood Magic Menu)
{
	CurrentStep := A_ThisFunc
	PixelDiff = 35
	TempY := BloodMagicY + PixelDiff * (X - 1)
	Click2(BloodMagicCapX, TempY)
	Sleep 500
}

BloodMagicPlus(X) ; Adds Blood Magic in the Xth Spell (inside the Blood Magic Menu)
{
	if AlwaysCap = 1
	{
		BloodMagicCap(X)
		return
	}
	
	CurrentStep := A_ThisFunc
	PixelDiff = 35
	TempY := BloodMagicY + PixelDiff * (X - 1)
	Click2(BloodMagicPlusX, TempY)
	Sleep 500
}

BloodMagicSpellMenu() ; Clicks on the "Cast Some Spoopy Spells" button inside the blood magic menu
{
	CurrentStep := A_ThisFunc
	Click2(BloodMagicSpellsX, BloodMagicSpellsY)
	Sleep 500
}

BloodMagicSpellCast(X) ; Clicks on the Xth spell inside the "Cast Some Spoopy Spells" menu
{
	CurrentStep := A_ThisFunc
	
	Click2(BloodMagicSpellX(X), BloodMagicSpellY(X))
	Sleep 500
}

BloodMagicSpellCheck(X) ; Clicks on the checkbox next to the Xth spell inside the "Cast Some Spoopy Spells" menu
{
	CurrentStep := A_ThisFunc
	TempX := BloodMagicSpellX(X)+CastBloodMagicSpellsCheckX1-CastBloodMagicSpellsX1
	Click2(TempX, BloodMagicSpellY(X))
	Sleep 500
}

BloodMagicSpellX(X) ; Gets the X coordinate for the Xth blood spell
{
	if ((X=1)||(X=3)||(X=5))
	{
		return CastBloodMagicSpellsX1
	}
	else if ((X=2)||(X=4)||(X=6))
	{
		return CastBloodMagicSpellsX2
	}
}

BloodMagicSpellY(X) ; Gets the Y coordinate for the Xth blood spell
{
	if ((X=1)||(X=2))
	{
		return CastBloodMagicSpellsY1
	}
	else if ((X=3)||(X=4))
	{
		return CastBloodMagicSpellsY2
	}
	else if ((X=5)||(X=6))
	{
		return CastBloodMagicSpellsY3
	}
}

;====Wandoos====

WandoosMenu() ; Clicks on the Wandoos menu button
{
	if (100LFlag = 1) || (WandoosVersion=-1)
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, WandoosMainY)
	Sleep 500
}

WandoosPlusEnergy() ; Clicks to add energy to the Energy Dump (inside the Wandoos menu)
{
	if (100LFlag = 1) || (WandoosVersion=-1)
	{
		return
	}
	if AlwaysCap = 1
	{
		WandoosCapEnergy()
		return
	}
	
	CurrentStep := A_ThisFunc
	Click2(WandoosPlusX, WandoosEnergyY)
	Sleep 500
}

WandoosPlusMagic() ; Clicks to add magic to the Magic Dump (inside the Wandoos menu)
{
	if (100LFlag = 1) || (WandoosVersion=-1)
	{
		return
	}
	if AlwaysCap = 1
	{
		WandoosCapMagic()
		return
	}
	CurrentStep := A_ThisFunc
	Click2(WandoosPlusX, WandoosMagicY)
	Sleep 500
}

WandoosPlusBoth() ; Clicks to add energy to the Energy Dump and then add magic to the Magic Dump (inside the Wandoos menu)
{
	if (100LFlag = 1) || (WandoosVersion=-1)
	{
		return
	}
	
	if AlwaysCap = 1
	{
		WandoosCapBoth()
		return
	}
	
	CurrentStep := A_ThisFunc
	Click2(WandoosPlusX, WandoosEnergyY)
	Sleep 500
	Click2(WandoosPlusX, WandoosMagicY)
	Sleep 500
}

WandoosCapEnergy() ; Clicks to cap energy in the Energy Dump (inside the Wandoos menu)
{
	if (100LFlag = 1) || (WandoosVersion=-1)
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	Click2(WandoosCapX, WandoosEnergyY)
	Sleep 500
}

WandoosCapMagic() ; Clicks to cap magic in the Magic Dump (inside the Wandoos menu)
{
	if (100LFlag = 1) || (WandoosVersion=-1)
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	Click2(WandoosCapX, WandoosMagicY)
	Sleep 500
}

WandoosCapBoth() ; Clicks to cap energy in the Energy Dump and then cap magic in the Magic Dump (inside the Wandoos menu)
{
	if (100LFlag = 1) || (WandoosVersion=-1)
	{
		return
	}
	
	CurrentStep := A_ThisFunc
	Click2(WandoosCapX, WandoosEnergyY)
	Sleep 500
	Click2(WandoosCapX, WandoosMagicY)
	Sleep 500
}

Wandoos98() ; Selects Wandoos 98 (inside the Wandoos menu)
{
	CurrentStep := A_ThisFunc
	Click2(WandoosCheckX, Wandoos98Y)
	Sleep 500
	Confirm()
}

WandoosMEH() ; Selects Wandoos MEH (inside the Wandoos menu)
{
	CurrentStep := A_ThisFunc
	Click2(WandoosCheckX, WandoosMEHY)
	Sleep 500
	Confirm()
}

WandoosXL() ; Selects Wandoos XL (inside the Wandoos menu)
{
	CurrentStep := A_ThisFunc
	Click2(WandoosCheckX, WandoosXLY)
	Sleep 500
	Confirm()
}

Wandoos(X) ;Set Wandoos98 if X=0, MEH if X=1, XL if X=2
{
	CurrentStep := A_ThisFunc
	if X=0
	{
		Wandoos98()
	}
	else if X=1
	{
		WandoosMEH()
	}
	else if X=2
	{
		WandoosXL()
	}
}

;====NGU====

NGUMenu() ; Clicks the NGU Menu
{
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, NGUMainY)
	Sleep 500
}

NGUMagicMenu() ; Clicks "TO NGU MAGIC" (inside the NGU menu)
{
	CurrentStep := A_ThisFunc
	Click2(NGUToMagicX, NGUToMagicY)
	Sleep 500
}

NGUAdd(X) ; Clicks to add energy/magic to the Xth item in NGUs. Call NGUMagicMenu() first if you intend to add to Magic NGUs.
{
	CurrentStep := A_ThisFunc
	PixelDiff = 35
	TempY := NGUBothY + PixelDiff * (X - 1)
	Click2(NGUBothPlusX, TempY)
	Sleep 500
}

NGU_CapBoth() ;Caps energy NGUs and then magic NGUs
{
	NGUMenu()
	Click2(NGUCapX, NGUCapY)
	Sleep 500
	NGUMagicMenu()
	Click2(NGUCapX, NGUCapY)
	Sleep 500
}

;====Yggdrasil====

YGGMenu() ; Clicks on the Yggdrasil menu
{
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, YGGMainY)
	Sleep 500
}

YGGMax() ; Clicks on the "Harvest/Eat All Max Tier fruit!" button (inside the Yggdrasil menu)
{
	CurrentStep := A_ThisFunc
	Click2(YGGButtonsX, YGGMaxY)
	Sleep 500	
}

YGGAll() ; Clicks on the "Harvest/Eat All Fruits Above Tier 1!" button (inside the Yggdrasil menu)
{
	CurrentStep := A_ThisFunc
	Click2(YGGButtonsX, YGGAllY)
	Sleep 500	
}

;===GOLD DIGGERS===

DiggersMenu()
{
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, DiggersMainY)
	Sleep 250
}

DiggersPage(X)
{
	CurrentStep := A_ThisFunc
	PixelDiff := 65
	TempX := DiggersPageX + PixelDiff * (X - 1)
	Click2(TempX, DiggersPageY)
	Sleep 250
}

DiggersCap1()
{
	CurrentStep := A_ThisFunc
	Click2(DiggersLeftCapX, DiggersTopCapY)
	Sleep 250
}

DiggersCap2()
{
	CurrentStep := A_ThisFunc
	Click2(DiggersRightCapX, DiggersTopCapY)
	Sleep 250
}

DiggersCap3()
{
	CurrentStep := A_ThisFunc
	Click2(DiggersLeftCapX, DiggersBottomCapY)
	Sleep 250
}

DiggersCap4()
{
	CurrentStep := A_ThisFunc
	Click2(DiggersRightCapX, DiggersBottomCapY)
	Sleep 250
}

DiggersActivate1()
{
	CurrentStep := A_ThisFunc
	Click2(DiggersLeftActiveX, DiggersTopActiveY)
	Sleep 250
}

DiggersActivate2()
{
	CurrentStep := A_ThisFunc
	Click2(DiggersRightActiveX, DiggersTopActiveY)
	Sleep 250
}

DiggersActivate3()
{
	CurrentStep := A_ThisFunc
	Click2(DiggersLeftActiveX, DiggersBottomActiveY)
	Sleep 250
}

DiggersActivate4()
{
	CurrentStep := A_ThisFunc
	Click2(DiggersRightActiveX, DiggersBottomActiveY)
	Sleep 250
}

;Activates and caps diggers corresponding to the input array
;DiggerArray is an array of 1s and 0s corresponding to digger, starting with page 1 top left, then page 1 top right, then page 1 bottom left, then page 1 bottom right, then page 2 top left, and so on...
;Calls DiggerSmartActivate(), which will activate the digger if it's checked
;Set OnlyCap to anything other than zero to skip the DiggerSmartActivate() function (effectively just hitting the cap button)
DiggersSet(DiggerArray:=0,OnlyCap:=0)
{
	if NoTMFlag = 1
		return
	
	DiggersMenu()
	
	For index, value in DiggerArray
	{
		if mod(A_Index,4)=1 ;activates the page, if any of the 4 diggers are set to 1
		{
			N := floor((index-1)/4)+1 ;formula to calculate correct page #
			if DiggerArray[index] || DiggerArray[index+1] || DiggerArray[index+2] || DiggerArray[index+3]
				DiggersPage(N)
		}
		
		if DiggerArray[index] = 1
		{
			q := mod(index,4)
			if q=0
				q:=4
			
			DiggersCap%q%()
			;if !OnlyCap
				;DiggerSmartActivate(q)
		}
	}
}

;Activates the digger in Position if the checkbox is not checked /// No longer needed with v0.420
DiggerSmartActivate(Position)
{
	if Position = 1 ;topleft
	{
		XSearch:=DiggersLeftActiveX
		YSearch:=DiggersTopActiveY
	}
	else if Position = 2 ;topright
	{
		XSearch:=DiggersRightActiveX
		YSearch:=DiggersTopActiveY
	}
	else if Position = 3 ;bottomleft
	{
		XSearch:=DiggersLeftActiveX
		YSearch:=DiggersBottomActiveY
	}
	else if Position = 4 ;bottomright
	{
		XSearch:=DiggersRightActiveX
		YSearch:=DiggersBottomActiveY
	}
	
	XSearch+=TopLeftX
	YSearch+=TopLeftY
	
	SearchFileName = BloodMagicCheck.png ;(it's the same checkmark)
	ImageSearch, FoundX, FoundY, XSearch-25, YSearch-25, XSearch+25, YSearch+25, *%ImageSearchVariance% %SearchFileName%
	
	If !FoundX
	{
		Click2(XSearch - TopLeftX, YSearch - TopLeftY)
		Sleep 500
	}

}

;===HACKS===

HacksMenu()
{
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, HacksY)
	Sleep 250
}

DumpHacks() ;Work in Progress = dumps all resource3 into attack/defense
{
	HacksMenu()
	Click2(CapX, R3Y)
	Sleep 250
	Click2(568,235)
	Sleep 250
}

;===SELLOUT SHOP===

SelloutMenu()
{
	CurrentStep := A_ThisFunc
	Click2(MainMenuX, SelloutMainY)
	Sleep 250
}

;====General Functions====

ScriptStart() ;Sets up the scripts to run. Call this first, always.
{
	CurrentStep := A_ThisFunc
	SetupOffsets() ;Essential!
	Stop := 0
	OverallTimerStart := A_TickCount
	Completions := 0
	SleepStatus = Active
	SetTimer, Timer, 750
}

CurrentIdleGear() ;Equips Loadout 10. NOT USED.
{
	InventoryMenu()
	Loadout(10)
}

CurrentMerging() ;Tatsu's merging/boosting routine. NOT USED.
{
	InventoryMenu()
	InventoryMerge(1,1)
	InventoryBoost(1,5)
}

CurrentFarmingShort() ;Starts ITOPOD (assuming you're already in the adventure menu)
{
	ITOPOD()
}

CurrentFarmingLong() ;Moves to 2 zones from the last unlocked. NOT USED.
{
	AdventureMenu()
	AdventureMax()
	AdventureLeft(2)
}

SaveCheck() ; If the save button is green, saves the game (to get the AP reward)
{
	CurrentStep := A_ThisFunc
	Search1X := 340 - 329 + TopLeftX
	Search1Y := 795 - 323 + TopLeftY
	Search2X := 400 - 329 + TopLeftX
	Search2Y := 815 - 323 + TopLeftY
	SearchFileName = SaveGreen.png
	ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		Save()
	}
}

YGGCheck() ; Iff Yggdrasil button is green, switch to Loadout 6 and Harvest/Eat All Max Tier Fruit, then switch back to Idle gear, wait 30 seconds, and reassign blood
{
	CurrentStep := A_ThisFunc
	Search1X := 500 - 329 + TopLeftX
	Search1Y := 690 - 323 + TopLeftY
	Search2X := 600 - 329 + TopLeftX
	Search2Y := 705 - 323 + TopLeftY
	SearchFileName = YggGreen.png
	ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		InventoryMenu()
		;Loadout(6) ;temporarily disabled
		YGGMenu()
		YggMax()
		CurrentIdleGear()
		SleepStatus = 30 seconds - Segment Time: %SegmentTime%
		Sleep 30000
		SleepStatus = Active
		NGUBloodAssign()
	}
}

IronPillCheckShort() ;If Blood Magic is purple, stop autocasting, dump blood into magic (excess energy/magic into time machine), wait 5 minutes, cast Iron Pill and Blood MacGuffin spells, then resume autocasting
{
	CurrentStep := A_ThisFunc
	Search1X := 500 - 329 + TopLeftX
	Search1Y := 600 - 323 + TopLeftY
	Search2X := 600 - 329 + TopLeftX
	Search2Y := 615 - 323 + TopLeftY
	SearchFileName = IronPillPurple.png
	ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		BloodMagicMenu()
		BloodMagicSpellMenu()
		SpellUncheck(1)
		SpellUncheck(4)
		BloodMagicMenu()
		RegainBoth()
		EnergyMax()
		BloodAssign_CostEfficient(8)
		TimeMachineMenu()
		TimeMachineEnergy()
		TimeMachineMagic()
		SleepStatus = 5 minutes - Rebirth Time: %RebirthTime%
		CurrentStep := "WAITING 5 MINUTES BEFORE CASTING IRON PILL!"
		Sleep 300000
		SleepStatus = Active
		BloodMagicMenu()
		BloodMagicSpellMenu()
		BloodMagicSpellCast(2)
		BloodMagicSpellCast(5)
		BloodMagicSpellCast(6)
		;SendEvent, {Alt Down}{PrintScreen}{Alt Up}
		BloodMagicMenu()
		BloodMagicSpellMenu()
		SpellCheck(1)
		SpellCheck(4)
	}
}

IronPillCheckLong() ;If blood magic is purple, casts Iron Pill. NOT USED.
{
	CurrentStep := A_ThisFunc
	Search1X := 500 - 329 + TopLeftX
	Search1Y := 600 - 323 + TopLeftY
	Search2X := 600 - 329 + TopLeftX
	Search2Y := 615 - 323 + TopLeftY
	SearchFileName = IronPillPurple.png
	ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		BloodMagicMenu()
		BloodMagicSpellMenu()
		BloodMagicSpellCast(2)
		;SendEvent, {Alt Down}{PrintScreen}{Alt Up}
	}
}

ChallengeCheck() ;If no challenge is currently active, sets ChallengeFlag to 0
{
	CurrentStep := A_ThisFunc
	Search1X := 750 - 329 + TopLeftX
	Search1Y := 400 - 323 + TopLeftY
	Search2X := 840 - 329 + TopLeftX
	Search2Y := 450 - 323 + TopLeftY
	SearchFileName = ChallengeNone.png
	RebirthMenu()
	ChallengeMenu()
	ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		ChallengeFlag := 0
	}
	RebirthMenu()
}

TransformCheck() ; If the tooltip shows that gear can be transformed, sets TransformFlag to 1
{
	CurrentStep := A_ThisFunc
	TransformFlag := 0
	Search1X := 615 - 329 + TopLeftX
	Search1Y := 330 - 323 + TopLeftY
	Search2X := 1270 - 329 + TopLeftX
	Search2Y := 915 - 323 + TopLeftY
	SearchFileName = Transformable.png
	ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		TransformFlag := 1
	}
}

FreeSpinCheck() ; If daily spin is ready, then spin.
{
	CurrentStep := A_ThisFunc
	Search1X := 500 - 329 + TopLeftX
	Search1Y := 420 - 323 + TopLeftY
	Search2X := 600 - 329 + TopLeftX
	Search2Y := 435 - 323 + TopLeftY
	SearchFileName = MoneyPitGold.png
	ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		MoneyPitMenu()
		DailySpinMenu()
		DailySpin()
		;SendEvent, {Alt Down}{PrintScreen}{Alt Up}
	}
}

MoneyPitCheckLong() ; If Money Pit is ready, equip Loadout 6, throw money into Money Pit, re-equip idle gear, wait 30 seconds, then assign blood. NOT USED.
{
	CurrentStep := A_ThisFunc
	Search1X := 500 - 329 + TopLeftX
	Search1Y := 420 - 323 + TopLeftY
	Search2X := 600 - 329 + TopLeftX
	Search2Y := 435 - 323 + TopLeftY
	SearchFileName = MoneyPitGreen.png
	ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		InventoryMenu()
		Loadout(6)
		MoneyPitMenu()
		MoneyPit()
		;SendEvent, {Alt Down}{PrintScreen}{Alt Up}
		CurrentIdleGear()
		SleepStatus = 30 seconds - Segment Time: %SegmentTime%
		Sleep 30000
		SleepStatus = Active
		NGUBloodAssign()
	}
}

MoneyPitCheckShort() ; If Money Pit is ready, throw money into Money Pit.
{
	CurrentStep := A_ThisFunc
	Search1X := 500 - 329 + TopLeftX
	Search1Y := 420 - 323 + TopLeftY
	Search2X := 600 - 329 + TopLeftX
	Search2Y := 435 - 323 + TopLeftY
	SearchFileName = MoneyPitGreen.png
	ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		;InventoryMenu() ;temporarily disabled
		;Loadout(6) ; temporarily disabled
		;SleepStatus = 5 seconds - Segment Time: %SegmentTime% ;temporarily disabled
		;Sleep 5000 ;temporarily disabled
		;SleepStatus = Active ;temporarily disabled
		if EquipLoadout3ForMoneyPit = 1
		{
			InventoryMenu()
			Loadout(3)
			MoneyPitMenu()
			MoneyPit()
			InventoryMenu()
			Loadout(1)
		}
		Else
		{
		MoneyPitMenu()
		MoneyPit()
		}
		;SendEvent, {Alt Down}{PrintScreen}{Alt Up}
		;InventoryMenu() ;temporarily disabled
		;Loadout(1) ;temporarily disabled
	}
}

TitanCheck() ; If the zone 1 back from the furthest unlocked zone isn't a titan, keep going 1 zone back until you find a titan. ;TODO verify - is it hunting Walderp in particular? NOT USED.
{
	CurrentStep := A_ThisFunc
	Search1X := 895 - 329 + TopLeftX
	Search1Y := 600 - 323 + TopLeftY
	Search2X := 1000 - 329 + TopLeftX
	Search2Y := 650 - 323 + TopLeftY
	SearchFileName = TitanS.png
	AdventureMenu()
	AdventureMax()
	AdventureLeft(1)
	While SearchX!
	{
		ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
		AdventureLeft(1)
		SleepStatus = 10 seconds - Segment Time: %SegmentTime%
		Sleep 10000
		SleepStatus = Active
		AdventureRight(1)
	}
	WalderpTimerStart := A_TickCount
}

TitanCheck2() ;If current adventure zone is a titan, go one zone back. Note: doesn't work if you're in ITOPOD.
{
	CurrentStep := A_ThisFunc
	Search1X := 590 + TopLeftX
	Search1Y := 230 + TopLeftY
	Search2X := 666 + TopLeftX
	Search2Y := 260 + TopLeftY
	
	AdventureMenu()
	PixelSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, 0x000000, 1, Fast ;Searches for the black pixels that comprise the countdown timer.
	if SearchX
	{
		AdventureLeft(1)
	}
}

BoringCheck() ;Checks if you're adventuring in Boring-Ass Earth. If so, moves to Badly Drawn World. NOT USED.
{
	CurrentStep := A_ThisFunc
	Search1X := 750 - 329 + TopLeftX
	Search1Y := 330 - 323 + TopLeftY
	Search2X := 1140 - 329 + TopLeftX
	Search2Y := 400 - 323 + TopLeftY
	SearchFileName = Boring.png
	ImageSearch, SearchX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		AdventureLeft(1)
	}
}

SpellCheck(X) ; Checks if the Xth blood magic spell is set to autocast. If it's not, it sets it to autocast.
{
	CurrentStep := A_ThisFunc
	
	Search1X := BloodMagicSpellX(X)+CastBloodMagicSpellsCheckX1-CastBloodMagicSpellsX1+TopLeftX
	Search1Y := BloodMagicSpellY(X)+TopLeftY
			
	SearchFileName = BloodMagicBlankCheck.png
	ImageSearch, SearchX, SearchY, Search1X-50, Search1Y-50, Search1X+50, Search1Y+50, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		Click2(SearchX - TopLeftX, SearchY - TopLeftY) ; don't Click2 here - already offset
		Sleep 500
	}
}

SpellUncheck(X) ; Checks if the Xth blood magic spell is NOT set to autocast. If it is, it unsets it.
{
	CurrentStep := A_ThisFunc
	
	Search1X := BloodMagicSpellX(X)+CastBloodMagicSpellsCheckX1-CastBloodMagicSpellsX1+TopLeftX
	Search1Y := BloodMagicSpellY(X)+TopLeftY
	
	SearchFileName = BloodMagicCheck.png
	;SearchFileName2 = BloodMagicCheck2.png
	
	ImageSearch, SearchX, SearchY, Search1X-50, Search1Y-50, Search1X+50, Search1Y+50, *%ImageSearchVariance% %SearchFileName%
	If SearchX
	{
		Click2(SearchX - TopLeftX, SearchY - TopLeftY) ; don't Click2 here - already offset
		Sleep 500
	}
	;Else ;Because 4G made Counterfeit Gold have a different checkmark, need to check for that too
	;{
	;	ImageSearch, SearchX, SearchY, Search1X-50, Search1Y-50, Search1X+50, Search1Y+50, *%ImageSearchVariance% %SearchFileName2%
	;	If SearchX
	;	{
	;		Click2(SearchX - TopLeftX, SearchY - TopLeftY) ; don't Click2 here - already offset
	;		Sleep 500
	;	}
	;}
}

NGUBloodAssign() ; Caps blood in descending order. Then, applies energy to Power+ and Tougness+. Then, assigns energy to all energy NGUs in descending order (twice as much to NGU Drop Chance). Then, assigns 1/4 of idle magic to each Magic NGU. NOT USED.
{
	CurrentStep := A_ThisFunc
	BloodMagicMenu()
	BloodMagicCap(1)
	BloodMagicCap(2)
	BloodMagicCap(3)
	BloodMagicCap(4)
	BloodMagicCap(5)
	BloodMagicCap(6)
	BloodMagicCap(7)
	BloodMagicCap(8)
	AdvTrainingMenu()
	AdvTrainingPlus(1)
	AdvTrainingPlus(2)
	NGUMenu()
	NGUAdd(1)
	NGUAdd(2)
	NGUAdd(3)
	NGUAdd(4)
	NGUAdd(5)
	NGUAdd(6)
	NGUAdd(7)
	NGUAdd(7)
	NGUMagicMenu()
	Magic4X()
	NGUAdd(1)
	NGUAdd(2)
	NGUAdd(3)
	NGUAdd(4)	
}

BloodAssign_CostEfficient(MaxSpell:=8) ;Assigns blood as gold efficiently as possible, up to spell #MaxSpell.
{
	CurrentStep := A_ThisFunc
	i := 0
	while i<MaxSpell
	{
		i ++
		BloodMagicCap(i)
	}
}

BloodAssign_Throughput(MaxSpell:=8) ;Assigns blood in an order that maximizes blood/second (if you have the gold), starting with spell #MaxSpell and working up.
{
	CurrentStep := A_ThisFunc
	BloodMagicMenu()
	i := 0
	while i<MaxSpell
	{
		temp := MaxSpell - i
		BloodMagicCap(temp)
		i++
	}
}

KillTitanNorm() ; Starts adventuring in 2nd from furthest unlocked zone, equips loadout 8, assigns blood and NGUs, waits 1 min, equips idlegear, waits 1 min, assigns blood and NGUs. NOT USED.
{
	CurrentStep := A_ThisFunc
	CurrentFarmingLong()
	InventoryMenu()
	Loadout(8)
	NGUBloodAssign()
	InventoryMenu()
	SleepStatus = 1 minute - Segment Time: %SegmentTime%
	Sleep 60000
	SleepStatus = Active
	CurrentIdleGear()
	SleepStatus = 1 minute - Segment Time: %SegmentTime%
	Sleep 60000
	SleepStatus = Active
	NGUBloodAssign()
}

PreLongRun() ; Stops auto-casting for all blood spells, if necessary. NOT USED
{
	CurrentStep := A_ThisFunc
	BloodMagicMenu()
	BloodMagicSpellMenu()
	SpellUncheck(1)
	SpellUncheck(3)
	SpellUncheck(4)
}

PreFirstRebirth2() ; Sets Custom Energy 1 to 1,000,000, Sets Wandoos option as active, Sets Number Boost and Counterfeit Gold to autocast, equips Loadout 2, goes to the Rebirth menu
{
	CurrentStep := A_ThisFunc
	WandoosMenu()
	;EnergyCustom1Set(1000000)
	Wandoos(WandoosVersion)
	BloodMagicMenu()
	BloodMagicSpellMenu()
	SpellCheck(1)
	SpellUncheck(3)
	SpellCheck(4)
	AugmentationMenu()
	Augmentation(1) ;has no purpose other than to click somewhere in the menu
	if (BackgroundMode = 0)
	{
		Loop 7
		{
			Send {WheelUp}
			Sleep 100
		}
	}

	else (BackgroundMode = 1)
	{
		AugScrollUp()
	}
	InventoryMenu()
	Loadout(2)
	YggMenu()
	YggAll()
	RebirthMenu()
}

FirstRebirth2() ;Does a rebirth from number = 1. Called first in challenge scripts.
{
	CurrentStep := A_ThisFunc
	CurrentStatus = First RB
	FightMenu()
	NukeBoss()
	Sleep, 1000
	FightBoss()
	StopFight()
	AdventureMenu()
	if MaxAdventureZone=0
	{
		AdventureMax()
	}
	else
	{
		AdventureRight(MaxAdventureZone)
		TitanCheck2()
	}
	AugmentationMenu()
	Energy4X()
	AugmentationMilk()
	EnergyMax()
	InventoryMenu()
	Loadout(1)
	
	While ((SearchCannonX!) && (!NACFlag)) ;Until Cannon Implant is unlocked, loop: Add all energy and magic to Wandoos, Nuke bosses, fight boss
	{
		if (A_Index > 0) && (RebirthTimerTime > 900000) && (!NRCFlag) ; If you've been through this loop once and rebirth time has exceeded 15 min, rebirth now.
		{
			if Nag = 0
			{
				;MsgBox, You failed to unlock the Cannon Implant augmentation in 15 minutes.`nYou may want to try scripting this when you have better stats.`nRebirthing now. (You won't see this message again.)
				Nag := 1
			}
			InventoryMenu()
			Loadout(2)
			RebirthMenu()
			LastRebirthTimerTime := A_TickCount - RebirthTimerStart
			return
		}
		if Mod(a_index, 20) = 0 ;Every 20 loops, move to last unlocked adventure zone
		{
			AdventureMenu()
			AdventureStart()
			if MaxAdventureZone=0
			{
				AdventureMax()
			}
			else
			{
				AdventureRight(MaxAdventureZone)
				TitanCheck2()
			}
		}
		WandoosMenu()
		WandoosCapBoth()
		FightMenu()
		NukeBoss()
		FightBoss()
		StopFight()
		AugmentationMenu()
		Search1X := 640 - 329 + TopLeftX
		Search1Y := 700 - 323 + TopLeftY
		Search2X := 840 - 329 + TopLeftX
		Search2Y := 730 - 323 + TopLeftY
		SearchFileName = Cannon.png
		ImageSearch, SearchCannonX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	}
	RegainEnergy() ;Reclaim energy, add Custom1 energy to Cannon
	Energy4X()
	AugmentationCannon()
	EnergyMax()
	
	While ((SearchShoulderX!) && (!NACFlag)) ;Until Shoulder Mounted is unlocked, loop: Add all energy and magic to Wandoos, Nuke bosses, fight boss
	{
		if (A_Index > 0) && (RebirthTimerTime > 900000) && (!NRCFlag) ; If you've been through this loop once and rebirth time has exceeded 15 min, rebirth now.
		{
			if Nag = 0
			{
				;MsgBox, You failed to unlock the Shoulder Mounted augmentation in 15 minutes.`nYou may want to try scripting this when you have better stats.`nRebirthing now. (You won't see this message again.)
				Nag := 1
			}
			InventoryMenu()
			Loadout(2)
			RebirthMenu()
			LastRebirthTimerTime := A_TickCount - RebirthTimerStart
			return
		}
		if Mod(a_index, 20) = 0 ;Every 20 loops, move to last unlocked adventure zone
		{
			AdventureMenu()
			AdventureStart()
			if MaxAdventureZone=0
			{
				AdventureMax()
			}
			else
			{
				AdventureRight(MaxAdventureZone)
				TitanCheck2()
			}
		}
		WandoosMenu()
		WandoosPlusBoth()
		FightMenu()
		NukeBoss()
		FightBoss()
		StopFight()
		AugmentationMenu()
		Search1X := 640 - 329 + TopLeftX
		Search1Y := 770 - 323 + TopLeftY
		Search2X := 840 - 329 + TopLeftX
		Search2Y := 800 - 323 + TopLeftY
		SearchFileName = Shoulder.png
		ImageSearch, SearchShoulderX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	}
	RegainEnergy() ;Reclaim energy, add Custom1 energy to Shoulder Mounted
	Energy4X()
	AugmentationShoulder()
	EnergyMax()
	
	While SearchTMX!  ;Until Time Machine is unlocked, loop: Add all energy and magic to Wandoos, Nuke bosses, fight boss
	{
		if NoTMFlag = 1
			break
			
		if (A_Index > 0) && (RebirthTimerTime > 900000) && (!NRCFlag) ; If you've been through this loop once and rebirth time has exceeded 15 min, rebirth now.
		{
			if Nag = 0
			{
				;MsgBox, You failed to unlock the Time Machine in 15 minutes.`nYou may want to try scripting this when you have better stats.`nRebirthing now. (You won't see this message again.)
				Nag := 1
			}
			InventoryMenu()
			Loadout(2)
			RebirthMenu()
			LastRebirthTimerTime := A_TickCount - RebirthTimerStart
			return
		}
		if Mod(a_index, 20) = 0 ;Every 20 loops, move to last unlocked adventure zone
		{
			AdventureMenu()
			AdventureStart()
			if MaxAdventureZone=0
			{
				AdventureMax()
			}
			else
			{
				AdventureRight(MaxAdventureZone)
				TitanCheck2()
			}
		}
		WandoosMenu()
		WandoosPlusBoth()
		FightMenu()
		NukeBoss()
		FightBoss()
		StopFight()
		
		Search1X := TopLeftX
		Search1Y := TopLeftY
		Search2X := TopLeftX + 500
		Search2Y := TopLeftY + 500
		SearchFileName = TimeMachine.png
		ImageSearch, SearchTMX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	}
	InventoryMenu() ;Equip Loadout 1
	Loadout(1)
	DiggersSet(DiggerLoadout)
	
	BloodAssignInitial :=0
		
	While ((!SearchBMX) || (RebirthTimerTime < 180000)) ;Until Blood Magic is unlocked and 3 minutes have passed, loop: Adds energy to Energy Buster, Wandoos, Time Machine; Adds magic to time machine and Wandoows, Nuke Bosses, Fight Boss, check for iron pill
	{
		if (A_Index > 0) && (RebirthTimerTime > 900000) && (!NRCFlag) ; If you've been through this loop once and rebirth time has exceeded 15 min, rebirth now.
		{
			if Nag = 0
			{
				;MsgBox, You failed to unlock Blood Magic in 15 minutes.`nYou may want to try scripting this when you have better stats.`nRebirthing now. (You won't see this message again.)
				Nag := 1
			}
			InventoryMenu()
			Loadout(2)
			RebirthMenu()
			LastRebirthTimerTime := A_TickCount - RebirthTimerStart
			return
		}
		if Mod(a_index, 20) = 0 ;Every 20 loops, move to last unlocked adventure zone, reset magic and energy for redistribution
		{
			AdventureMenu()
			AdventureStart()
			if MaxAdventureZone=0
			{
				AdventureMax()
			}
			else
			{
				AdventureRight(MaxAdventureZone)
				TitanCheck2()
			}
			AugmentationMenu()
			RegainBoth()
		}
		AugmentationMenu()
		Energy4X()
		AugmentationBuster()
		WandoosMenu()
		if A_Index < 10 ;TODO add pixel detection to detemine if the bar is full
		{
			WandoosPlusEnergy()
			WandoosPlusEnergy()
		}
		Else
		{
			WandoosCapEnergy()
		}
		TimeMachineMenu()
		TimeMachineEnergy()
		Magic2X()
		TimeMachineMagic()
		DiggersSet(DiggerLoadout)
		WandoosMenu()
		if A_Index < 10
		{
			WandoosPlusMagic()
		}
		Else
		{
			WandoosCapMagic()
			if SearchBMX and (BloodAssignInitial = 0) and !100LFlag
			{
				BloodMagicMenu()
				BloodAssign_CostEfficient(MaxSustainableBloodSpellNumber)
				BloodAssignInitial := 1
			}
		}
		FightMenu()
		NukeBoss()
		FightBoss()
		StopFight()
		Search1X := TopLeftX
		Search1Y := TopLeftY
		Search2X := TopLeftX + 500
		Search2Y := TopLeftY + 500
		SearchFileName = BloodMagic.png
		ImageSearch, SearchBMX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
		if !SearchBMX
		{
			SearchFileName = BloodMagic2.png
			ImageSearch, SearchBMX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
		}
		IronPillCheckShort()
	}
	InventoryMenu()
	Loadout(2)
	RegainMagic()
	BloodMagicMenu()
	BloodAssign_CostEfficient(MaxSustainableBloodSpellNumber) ;setting
	Sleep, 10000 ;wait 10 seconds to accumulate blood number
	RebirthMenu()
	LastRebirthTimerTime := A_TickCount - RebirthTimerStart
}

PreShortRun() ; Sets Wandoos, sets Number Boost and Counterfeit Gold to autocast, equips loadout 2, ends on rebirth menu
{
	CurrentStep := A_ThisFunc
	WandoosMenu()
	Wandoos(WandoosVersion)
	BloodMagicMenu()
	BloodMagicSpellMenu()
	SpellCheck(1)
	SpellUncheck(3)
	SpellCheck(4)
	InventoryMenu()
	Loadout(2)
	YggMenu()
	YggAll()
	RebirthMenu()
}

RebirthScript_Short(X) ;From the rebirth screen, performs a rebirth and does a run for X minutes.
{
	CurrentStep := A_ThisFunc
	Multi3 := X * 60000
	Multi2 := Multi3 - 5000
	Multi1 := Multi2 - 15000
	Rebirth()
	FightMenu()
	NukeBoss()
	SleepStatus = 2 seconds - Rebirth Time: %RebirthTime%
	Sleep 2000
	SleepStatus = Active
	FightBoss()
	StopFight()
	AdventureMenu()
	if MaxAdventureZone=0
	{
		AdventureMax()
	}
	else
	{
		AdventureRight(MaxAdventureZone)
		TitanCheck2()
	}
	SleepStatus = 8 seconds - Rebirth Time: %RebirthTime%
	Sleep 8000
	SleepStatus = Active
	CurrentFarmingShort() ;Runs ITOPOD
	InventoryMenu()
	Loadout(1)
	
	if !100LFlag
	{
		BloodMagicMenu()
		BloodAssign_CostEfficient(MaxSustainableBloodSpellNumber) ;setting
	}
	WandoosMenu()
	WandoosCapEnergy()
	While RebirthTimerTime <= Multi1
	{
		AdvLoopWait := 20
		if NoTMFlag
			AdvLoopWait := 5 ;For No TM challenge, need to check for new zones more frequently...
		
		if Mod(a_index, AdvLoopWait) = 0 ;Every 20 loops, move to last unlocked adventure zone
		{
			AdventureMenu()
			AdventureStart()
			if MaxAdventureZone=0
			{
				AdventureMax()
			}
			else
			{
				AdventureRight(MaxAdventureZone)
				TitanCheck2()
			}
			if !NoTMFlag
			{
				SleepStatus = 8 seconds - Rebirth Time: %RebirthTime%
				Sleep 8000
				SleepStatus = Active
				CurrentFarmingShort()
			}
		}
		TimeMachineMenu()
		Energy4X()
		TimeMachineEnergy()
		if !EnableNGUs
			TimeMachineEnergy()
		if a_index != 1 ;don't nuke the first loop to gold diggers a chance to get turned on
		{
			FightMenu()
			NukeBoss()
		}
		AugmentationMenu()
		Augmentation(OptimalAugmentation) ;setting
		WandoosMenu()
		if Mod(a_index, 5) = 0 ;Every 5 loops, cap Wandoos.
		{
			WandoosCapBoth()
		}
		Else
		{
			WandoosPlusBoth()
		}
		if !100LFlag
		{
			BloodMagicMenu()
			Magic2X()
			if Mod(a_index, 5) = 0 ;Every 5 loops, cap the magic spell.
			{
				BloodMagicCap(MaxSustainableBloodSpellNumber) ;setting
			}
			Else
			{
				BloodMagicPlus(MaxSustainableBloodSpellNumber) ;setting
			}
		}
		TimeMachineMenu()
		TimeMachineMagic()
		if EnableNGUs
		{
			NGU_CapBoth()
		}
		DiggersSet(DiggerLoadout)
		if a_index = 1 ; once diggers are on, re-enter ITOPOD at a probably better optimal level
		{
			AdventureMenu()
			ITOPOD()
		}
	}
	;CurrentMerging() ;Until I add settings for boosting/merging
	;BoostCube() 
	if 100LFlag
	{
		BloodMagicPlus(MaxSustainableBloodSpellNumber)
	}
	FightMenu()
	NukeBoss()
	Sleep 5000
	FightBoss()
	While RebirthTimerTime <= Multi2
	{
		FightBoss()
	}
	StopFight()
	SaveCheck()
	MoneyPitCheckShort()
	IronPillCheckShort()
	FreeSpinCheck()
	InventoryMenu()
	Loadout(2)
	RebirthMenu()
	While RebirthTimerTime <= Multi3
	{
		SleepStatus = 10 milliseconds - Rebirth Time: %RebirthTime%
		Sleep 10
		SleepStatus = Active
	}
	LastRebirthTimerTime := A_TickCount - RebirthTimerStart
}

RebirthScript_AdvTraining(X) ;From the rebirth screen, performs a rebirth and does a run for X minutes. Supports advanced training and Yggdrasil, if the run goes that long.
{
	if DoubleBasicTrainingPerk = 1
		RebirthScript_Short(12.5)
	else
		RebirthScript_Short(25)
	
	Multi3 := X * 60000
	
	Loadout(1)
	if !100LFlag ;not in a 100-level challenge
	{
		RegainBoth()
		WandoosMenu()
		WandoosCapBoth()
		BloodMagicMenu()
		BloodAssign_CostEfficient(MaxSustainableBloodSpellNumber) ;setting
		
	}
	While ((RebirthTimerTime <= 1800000) && (RebirthTimerTime <= Multi3)) ;Until run time reaches 30 minutes or exceeds input time
	{
		DiggersSet(DiggerLoadout)
		FightMenu()
		NukeBoss()
		
		if !100LFlag ;not in a 100-level challenge
		{
			AdvTrainingMenu()
			Energy4X()
			AdvTrainingPlus(4)
			AdvTrainingPlus(5)
			BloodMagicMenu()
			if Mod(a_index, 20) = 0 ;Every 20 loops, cap the magic spell and Wandoos.
			{
				BloodMagicCap(MaxSustainableBloodSpellNumber) ;setting
				WandoosMenu()
				WandoosCapBoth()
			}
			Else
			{
				BloodMagicPlus(MaxSustainableBloodSpellNumber) ;setting
			}
			
		}
		if EnableNGUs
			NGU_CapBoth()
	}
	RegainBoth()
	if !100LFlag
	{
		BloodMagicMenu()
		BloodAssign_CostEfficient(MaxSustainableBloodSpellNumber) ;setting
	}
	EnergyMax()
	While ((RebirthTimerTime <= 3600000)  && (RebirthTimerTime <= Multi3)) ;Until run time reaches 60 minutes or exceeds input time
	{
		DiggersSet(DiggerLoadout)
		FightMenu()
		NukeBoss()
		if !100LFlag
		{
			WandoosMenu()
			WandoosCapBoth()
			BloodMagicMenu()
			if Mod(a_index, 20) = 0 ;Every 20 loops, cap the magic spell.
			{
				BloodMagicCap(MaxSustainableBloodSpellNumber) ;setting
			}
			Else
			{
				BloodMagicPlus(MaxSustainableBloodSpellNumber) ;setting
			}
		}
		if EnableNGUs
			NGU_CapBoth()
	}
	SaveCheck()
	MoneyPitCheckShort()
	IronPillCheckShort()
	FreeSpinCheck()
	YGGMenu()
	YGGAll()
	FightMenu()
	NukeBoss()
	Sleep 5000
	Loop 10
	{
		FightBoss()
		Sleep 100
	}
	StopFight()
	RebirthMenu()
	LastRebirthTimerTime := A_TickCount - RebirthTimerStart
}

RebirthScript2(X) ;Looks at X and runs the appropriate function
{
	if DoubleBasicTrainingPerk = 1
		AdvTrainTime:=12.5 ;TODO add a check for the new quirk that reduces this time even further
	Else
		AdvTrainTime:=25
	
	if X>%AdvTrainTime%
	{
		if X>60
		{
			MsgBox, Runs greater than 60 minutes are not supported at this time.
			Return
		}
		Else
		{
			RebirthScript_AdvTraining(X)
		}
	}
	else if X<%AdvTrainTime%
	{
		if X<3
		{
			MsgBox, Error - can't do runs under 3 minutes.
			Return
		}
		Else
		{
			RebirthScript_Short(X)
		}	
	}
}

RebirthBoss37Check() ;Does a rebirth, does some initial boss fighting, then determines if blood magic is unlocked. If unlocked, sets Boss37Check to 1.
{
	Rebirth()
	FightMenu()
	NukeBoss()
	SleepStatus = 2 seconds - Rebirth Time: %RebirthTime%
	Sleep 2000
	SleepStatus = Active
	FightBoss()
	StopFight()
	
	;check if blood magic is unlocked
	Search1X := TopLeftX
	Search1Y := TopLeftY
	Search2X := TopLeftX + 500
	Search2Y := TopLeftY + 500
	SearchFileName = BloodMagic.png
	ImageSearch, SearchBMX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
	
	If SearchBMX
	{
		Boss37Check = 1
		RebirthMenu()
	}
	else
	{
		SearchFileName = BloodMagic2.png
		ImageSearch, SearchBMX, SearchY, Search1X, Search1Y, Search2X, Search2Y, *%ImageSearchVariance% %SearchFileName%
		If SearchBMX
		{
			Boss37Check = 1
			RebirthMenu()
		}
	}
}



Esc:: ;Escape will quit the script at any time.
{
	ExitApp
}

f12::Pause,Toggle ;Experimental. F12 pauses and unpauses the script.

RunStart()
{
	LoadINI()
	OptionSelect()
	WinWait,Run Options
	WinWaitClose
	;MsgBox, %LoopNumber% %RepeatChoice%

	WinActivate, Play NGU IDLE ;kong
	WinActivate, ahk_exe NGUIdle.exe ;kart

	
	ScriptStart()
	
	if ChallengeChoice != None ;Challenge Run
	{
		ChallengeNumberSet() ;Sets ChallengeNumber
		PreFirstRebirth2()
		if RepeatChoice=1
		{
			if LoopNumber = 0
			{
				Loop
				{
					ChallengeRun(ChallengeNumber)
				}
			}
			else
			{
				Loop, %LoopNumber%
				{
					ChallengeRun(ChallengeNumber)
				}
			}
		}
		Else
		{
			ChallengeRun(ChallengeNumber)
		}
	}
	else if ChallengeChoice = None ;Non-Challenge Run
	{
		PreShortRun()
		CurrentStatus = %RunDurationChoice% min RBs
		if RepeatChoice=1
		{
			if LoopNumber = 0
			{
				Loop
				{
					RebirthScript2(RunDurationChoice)
					Completions++
				}
			}
			else
			{
				Loop, %LoopNumber%
				{
					RebirthScript2(RunDurationChoice)
					Completions++
				}
			}
		}
		Else
		{
			RebirthScript2(RunDurationChoice)
		}
	}
	Return
}

StartTest() ;Used for debug/testing purposes
{
	BackgroundMode := 0
	if (BackgroundMode = 0)
	{
		WinActivate, Play NGU IDLE ;kong
		WinActivate, ahk_exe NGUIdle.exe ;kart
	}

	ImageSearchVariance :=10
	ScriptStart()
	
	
	
	;MsgBox, Test done!	
}



OptionSelect() ;Creates a GUI box to ask for challenge run preferences. TODO make this much, much better
{
	if defLoopOption = 0
		LoopToggle := "Disabled"
	
	Gui, Add, Tab3,, Run|Settings|NGUs|Diggers|Challenge Sequence|About
	Gui, Add, Text,section, Challenge:
	Gui, Add, DropDownList, vChallengeChoice gChallengeChoiceChange x+10, None||Basic|No Augs|24-Hour|100 Level|No Equipment|Troll|No Rebirth|Blind|No NGU|No TM
	Gui, Add, Text,xs,
	Gui, Add, Text,section, Rebirth duration:
	Gui, Add, Edit, vRunDurationChoiceText x+10 w40
	Gui, Add, UpDown, vRunDurationChoice Range3-60, %defRebirthTimeSetting%
	Gui, Add, Text,X+10,minutes
	Gui, Add, Text,xs,
	Gui, Add, Checkbox, vRepeatChoice gEnableLoopNumber Checked%defLoopOption% section, Loop?
	Gui, Add, Edit, vLoopNumberText %LoopToggle% x+10 w75
	Gui, Add, UpDown, vLoopNumber gLoopUnlimited,%defLoopOptionValue% x+10
	Gui, Add, Text, x+10, times
	Gui, Add, Text,xs,
	
	if defLoopOptionValue = 0
		GuiControl,Text,LoopNumberText,Infinite
	
	Gui, Add, Button, default, Run  ; The label ButtonRun (if it exists) will be run when the button is pressed.
	Gui, Add, Button, x+m, Cancel
	Gui, Add, Button, gSaveDefaults x+m, Save Defaults
	
	Gui, Tab, Settings
	Gui, Add, Text, section,Adventure Zone
	Var := defMaxAdventureZone + 1
	Gui, Add, DropDownList, x+10 vAdvZoneChoice altSubmit Choose%Var%, All|1. Tutorial Zone|2. Sewers|3. Forest|4. Cave of Many Things|5. The Sky|6. High Security Base|7. Titan - GRB|8. Clock Dimension|9. Titan - GCT|10. The 2D Universe|11. Ancient Battlefield|12. Titan - Jake|13. A Very Strange Place|14. Mega Lands|15. Titan - UUG|16. The Beardverse|17. Titan - Walderp|18. Badly Drawn World|19. Boring-Ass Earth|20. Titan - The Beast|21. Chocolate World|22. The Evilverse|23. Pretty Pink Princess|24. Titan - GREASY NERD|25. Meta Land|26. Interdimensional Party|27. Titan - THE GODMOTHER
	Gui, Add, Text,xs section, Blood Spell
	Var := defMaxSustainableBloodSpellNumber
	Gui, Add, DropDownList, x+10 vBloodSpellChoice altSubmit Choose%Var%, 1. Poke Yourself|2. Filthy Papercuts|3. A Big-Ass Hickey|4. Barbed Wire|5. Grand Theft Blood Bank|6. Self Decapitation|7. Hug a Woodchipper|8. Turn Yourself Inside Out
	Gui, Add, Text,xs section,Wandoos Version
	Var := defWandoosVersion + 2
	Gui, Add, DropDownList, x+10 vWandoosChoice altSubmit Choose%Var%, None|98|MEH|XL
	Gui, Add, Text,xs section,Augmentation
	Var := defOptimalAugmentation + 1
	Gui, Add, DropDownList, x+10 vAugChoice altSubmit Choose%Var%, Safety Scissors|Milk Infusion|Cannon Implant|Shoulder Mounted|Energy Buster|Advanced Exoskeleton|Laser Sword
	Gui, Add, Text,xs,Advanced Options:
	Gui, Add, Checkbox, vEquipLoadout3ForMoneyPit Checked%EquipLoadout3ForMoneyPit%,Loadout 3 for Money Pit
	Gui, Add, Checkbox,vDoNotSave Checked%DoNotSave%,Do Not Save
	Gui, Add, Checkbox,vDoubleBasicTrainingPerk Checked%DoubleBasicTrainingPerk%,Double Basic Training Perk
	Gui, Add, Checkbox,vAlwaysCap Checked%AlwaysCap%,Always Cap Blood Magic/Wandoos
	Gui, Add, Checkbox,vBackgroundMode Checked%BackgroundMode%,Use background clicking/keyboard
	Gui, Add, Text,section,ImageSearch Variance:
	Gui, Add, Edit,x+10 w50
	Gui, Add, Updown, vImageSearchVariance Range0-255,%ImageSearchVariance%
	
	Gui, Tab,NGUs
	Gui, Add, Checkbox, vEnableNGUs gToggleNGUs Checked%defEnableNGUs%, Put energy/magic into NGUs?
	Gui, Add, Text,,Note: disabled during challenges.
	Gui, Add, Text,,
	;Gui, Add, Text,section,Energy NGUs
	;Gui, Add, Checkbox,vENGU1 Checked%defNGU_Augments%,Augments
	;Gui, Add, Checkbox,vENGU2 Checked%defNGU_Wandoos%,Wandoos
	;Gui, Add, Checkbox,vENGU3 Checked%defNGU_Respawn%,Respawn
	;Gui, Add, Checkbox,vENGU4 Checked%defNGU_Gold%,Gold
	;Gui, Add, Checkbox,vENGU5 Checked%defNGU_Adventure%,Adventure
	;Gui, Add, Checkbox,vENGU6 Checked%defNGU_PowerAlpha%,Power A
	;Gui, Add, Checkbox,vENGU7 Checked%defNGU_DropChance%,Drop Chance
	;Gui, Add, Checkbox,vENGU8 Checked%defNGU_MagicNGU%,Magic NGU
	;Gui, Add, Checkbox,vENGU9 Checked%defNGU_PP%,PP
	;Gui, Add, Text,ys,Magic NGUs
	;Gui, Add, Checkbox,vMNGU1 Checked%defNGU_Yggdrasil%,Yggdrasil
	;Gui, Add, Checkbox,vMNGU2 Checked%defNGU_EXP%,EXP
	;Gui, Add, Checkbox,vMNGU3 Checked%defNGU_PowerBeta%,Power B
	;Gui, Add, Checkbox,vMNGU4 Checked%defNGU_Number%,Number
	;Gui, Add, Checkbox,vMNGU5 Checked%defNGU_TimeMachine%,Time Machine
	;Gui, Add, Checkbox,vMNGU6 Checked%defNGU_EnergyNGU%,Energy NGU
	;Gui, Add, Checkbox,vMNGU7 Checked%defNGU_AdventureBeta%,Adventure B
	
	for index in defDiggers
	{
		NumDiggers += defDigger_%index%
	}
	global NumDig
	
	Gui, Tab,Diggers
	Gui, Add, Text,vNumDig,%NumDiggers% Digger Slots Required
	Gui, Add, Text,,
	Gui, Add, Checkbox,gDigCount vDigger1 Checked%defDigger_1% section,Drop Chance
	Gui, Add, Checkbox,gDigCount vDigger2 Checked%defDigger_2% ys,Wandoos
	Gui, Add, Checkbox,gDigCount vDigger3 Checked%defDigger_3% section xs,Stat
	Gui, Add, Checkbox,gDigCount vDigger4 Checked%defDigger_4% ys,Adventure
	Gui, Add, Text,,
	Gui, Add, Checkbox,gDigCount vDigger5 Checked%defDigger_5% section xs,Energy NGU
	Gui, Add, Checkbox,gDigCount vDigger6 Checked%defDigger_6% ys,Magic NGU
	Gui, Add, Checkbox,gDigCount vDigger7 Checked%defDigger_7% section xs,Energy Beard
	Gui, Add, Checkbox,gDigCount vDigger8 Checked%defDigger_8% ys,Magic Beard
	Gui, Add, Text,,
	Gui, Add, Checkbox,gDigCount vDigger9 Checked%defDigger_9% section xs,PP
	Gui, Add, Checkbox,gDigCount vDigger10 Checked%defDigger_10% ys,Daycare
	Gui, Add, Checkbox,gDigCount vDigger11 Checked%defDigger_11% section xs,Blood
	Gui, Add, Checkbox,gDigCount vDigger12 Checked%defDigger_12% ys,EXP
	
	Gui, Tab, Challenge Sequence
	;Gui, Add, Text, +Wrap,Challenge runs will do:
	Gui, Add, Text, +Wrap w200,A. Special runs (up to 15 minutes) to unlock blood magic. ;TODO add option to change this time
	Gui, Add, Text, section, B. 
	Gui, Add, Edit,X+10 w40
	Gui, Add, UpDown, vChallenge1RunIterations Range1-100,%defChallenge1RunIterations%
	Gui, Add, Text,X+10,x
	Gui, Add, Edit,X+10 w40
	Gui, Add, UpDown, vChallenge1RunLength Range3-60,%defChallenge1RunLength%
	Gui, Add, Text, X+10,minute runs
	Gui, Add, Text, xs section, C.
	Gui, Add, Edit,X+10 w40
	Gui, Add, UpDown, vChallenge2RunIterations Range1-100,%defChallenge2RunIterations%
	Gui, Add, Text,X+10,x
	Gui, Add, Edit,X+10 w40
	Gui, Add, UpDown, vChallenge2RunLength Range3-60,%defChallenge2RunLength%
	Gui, Add, Text, X+10,minute runs
	Gui, Add, Text, xs section, D.
	Gui, Add, Edit,X+10 w40
	Gui, Add, UpDown, vChallenge3RunIterations Range1-100,%defChallenge3RunIterations%
	Gui, Add, Text,X+10,x
	Gui, Add, Edit,X+10 w40
	Gui, Add, UpDown, vChallenge3RunLength Range3-60,%defChallenge3RunLength%
	Gui, Add, Text, X+10,minute runs
	Gui, Add, Text, xs section +Wrap w200, E. 60 minute runs repeated, until the challenge is completed.
	
	Gui, Tab, About
	Gui, Add, Text, +Wrap w200,Universal Rebirth AHK Script for NGU Idle
	Gui, Add, Text, +Wrap w200,
	Gui, Add, Text, +Wrap w200,Written by:
	Gui, Add, Text, +Wrap w200,Unponderable and Tatsumasa
	Gui, Add, Text, +Wrap w200,
	Gui, Add, Link, +Wrap w200, Visit #scripting in the <a href="https://discord.gg/HFD6b6">NGU Discord</a>
	Gui, Add, Text, +Wrap w200,
	Gui, Add, Link, +Wrap w200,<a href="https://github.com/Unponderable/NGU-Rebirth-Script">Github</a>
	
	Gui, Show,, Run Options
	OnMessage(0x200, "TTGUI")
	return  ; End of auto-execute section. The script is idle until the user does something.
	

	EnableLoopNumber:
		GuiControlGet, OutputVar ,,RepeatChoice
		if OutputVar = 1
			GuiControl, Enabled, LoopNumberText
		Else
			GuiControl, Disabled, LoopNumberText
	return
	
	DigCount:
		NumDiggers := 0
		for index in defDiggers
		{
			GuiControlGet, OutputVar ,,Digger%index%
			NumDiggers += OutputVar
		}
		GuiControl,Text,NumDig,%NumDiggers% Digger Slots Required
	return
	
	ToggleNGUs:
		GuiControlGet, OutputVar ,,EnableNGUs
		if OutputVar = 1
		{
			for index in EnergyNGU
			{
				GuiControl, Enabled, ENGU%index%
			}
			for index in MagicNGU
			{
				GuiControl, Enabled, MNGU%index%
			}
		}
		Else
		{
			for index in EnergyNGU
			{
				GuiControl, Disabled, ENGU%index%
			}
			for index in MagicNGU
			{
				GuiControl, Disabled, MNGU%index%
			}
		}
	return
	
	LoopUnlimited:
		GuiControlGet, OutputVar ,,LoopNumber
		if LoopNumber = 0
			GuiControl,Text,LoopNumberText,Infinite
	return
	
	ChallengeChoiceChange:
		GuiControlGet, OutputVar ,,ChallengeChoice
		if OutputVar = None
			GuiControl, Enabled, RunDurationChoiceText
		Else
			GuiControl, Disabled, RunDurationChoiceText
	return
	
	ButtonRun:
	Gui, Submit  ; Save the input from the user to each control's associated variable.
	GUIApply()
	Gui Destroy
	Return
	
	ButtonCancel:
	GuiClose:
	GuiEscape:
	Gui Destroy
	Tooltip, Aw  :(
	Sleep, 1000
	ExitApp
	
	SaveDefaults:
	Gui, Submit, NoHide  ; Save the input from the user to each control's associated variable.
	GUIApply()
	SaveINI()
	MsgBox, Saved!
	return
}

GUIApply() ;Called when the GUI is RUN or Save Defaults
{
	MaxAdventureZone := AdvZoneChoice - 1 ;copy setting and convert to the appropriate format
	MaxSustainableBloodSpellNumber := BloodSpellChoice
	WandoosVersion := WandoosChoice - 2
	OptimalAugmentation := AugChoice - 1
	for index in EnergyNGU
	{
		EnergyNGU[index]:= ENGU%index%
	}
	for index in MagicNGU
	{
		MagicNGU[index]:= MNGU%index%
	}
	for index in DiggerLoadout
	{
		DiggerLoadout[index]:= Digger%index%
	}
}

TTGUI(wParam, lParam, Msg) {

MouseGetPos,,,, OutputVarControl

IfEqual, OutputVarControl, Edit1

	Help := "Rebirth time, in minutes."
	
IfEqual, OutputVarControl, Button1

	Help := "When the run is finished, start a new one."
	
IfEqual, OutputVarControl, Edit2

	Help := "Number of times to run the challenge or (if no challenge selected) to rebirth.`n0 = Infinite"

IfEqual, OutputVarControl, Static8

	Help := "The zone that you can adventure in at the start of a rebirth, wearing Loadout 2 gear."

else IfEqual, OutputVarControl, Static9

	Help := "Highest blood spell you can afford and want to put magic into."

else IfEqual, OutputVarControl, Static10

	Help := "Wandoos version to put energy/magic into."
	
else IfEqual, OutputVarControl, Static11

	Help := "Augmentation to put energy into."
	
else IfEqual, OutputVarControl, Button5

	Help := "Switch to Loadout 3 when you throw money into the money pit.`nRequires a third loadout slot, obviously.`nPotentially useful for shocking certain gear.."
	
else IfEqual, OutputVarControl, Button6

	Help := "Don't save to get the daily AP bonus.`nUseful if the save button creates a browser prompt that kills the script."

else IfEqual, OutputVarControl, Button7

	Help := "If you have the double basic training perk from ITOPOD.`nAffects time before the script starts Adv. Training."
	
else IfEqual, OutputVarControl, Button8

	Help := "Always try to cap Blood Magic/Wandoos.`nNote: If you're not maxed out, then always capping means you may never reach a new breakpoint."
	
else IfEqual, OutputVarControl, Static13

	Help := "ImageSearch is how the script detects some things in the game.`nVariance is the fuzz factor if the colors on your screen are slightly off from the image.`nAllowable values are 0-255, but if you get much higher than 50, you're at high risk for script nonfunctionality."	

else IfEqual, OutputVarControl, Button9

	Help := "EXPERIMENTAL: Keys and clicks will be sent without the window being focused.`nWindow must still be maximized and visible (like on a second monitor)!"
	
;ToolTip % OutputVarControl
ToolTip % Help

}

ChallengeNumberSet() ;Converts the challenge choice to an appropriate number. Also provides warnings if the run is not fully supported.
{
	if ChallengeChoice=None
	{
		;Do nothing...
	}
	else if ChallengeChoice=Basic
	{
		ChallengeNumber:=1
	}
	else if ChallengeChoice=No Augs
	{
		ChallengeNumber:=2
	}
	else if ChallengeChoice=24-Hour
	{
		ChallengeNumber:=3
	}
	else if ChallengeChoice=100 Level
	{
		ChallengeNumber:=4
		MsgBox, READ THIS: 100-Level challenge requires you to set limits for Augs and Time Machine ahead of time.`nAlso, turn off all beards.
		MsgBox, Try Time Machine (60 Energy, 10 Magic)`n30 into Energy Buster (or highest augment)`n10 into highest blood magic spell`nAll else set to -1.
		MsgBox, P.S. Did you remember to clear all beards?`nPress Esc to quit now, otherwise here we go...
	}
	else if ChallengeChoice=No Equipment
	{
		ChallengeNumber:=5
	}
	else if ChallengeChoice=Troll
	{
		MsgBox, Really? Troll Challenge in a script?`n`n...okay, I'll give it a shot.
		Run, https://youtu.be/KaqC5FnvAEc?t=13s
		ExitApp
	}
	else if ChallengeChoice=No Rebirth
	{
		ChallengeNumber:=7
	}
	else if ChallengeChoice=Blind
	{
		ChallengeNumber:=9
	}
	else if ChallengeChoice=No NGU
	{
		ChallengeNumber:=10
	}
	else if ChallengeChoice=No TM
	{
		ChallengeNumber:=11
	}
	else
	{
		MsgBox, No valid challenge selected.
	}
	
	Return	
}

ChallengeRun(X)
{
	EnableNGUs := 0 ;disable NGUs during challenges
	
	if (X = 1) || (X = 3) || (X = 5) || (X = 9) || (X=10) ;Basics, 24-Hour, NEC, Blind, No NGU
	{
		ChallengeRunSequence(X)
	}
	if X=7 ;No Rebirth
	{
		NoRebirthRun()
	}
	if X=2 ;No Augs
	{
		NACFlag := 1
		ChallengeRunSequence(X)
		NACFlag := 0
	}
	if X=4 ;100-Level
	{
		;For 100-level, write a function that sets appropriate limits first (or instructs the user to do so)
		Global 100LFlag := 1
		ChallengeRunSequence(X)
		Global 100LFlag := 0
	}
	if X=11
	{
		Global NoTMFlag := 1
		ChallengeRunSequence(X)
		Global NoTMFlag := 0
	}
}

ChallengeRunSequence(ChallengeNumber) ;Runs the challenge specified in ChallengeNumber.
{
	if (BackgroundMode = 0)
	{
		WinActivate, Play NGU IDLE ;kong
		WinActivate, ahk_exe NGUIdle.exe ;kart
	}

	SegmentTimerStart := A_TickCount
	Boss37Check = 0
	
	ChallengeMenu()
	ChallengeStart(ChallengeNumber)

	Rebirths := 1
	While Boss37Check = 0 ;If you can't unlock blood magic on your second rebirth within the first few seconds, repeat FirstRebirth2 until you can.
	{
		CurrentStatus = First RB #%Rebirths%
		if (BackgroundMode = 0)
		{
			WinActivate, Play NGU IDLE
			WinActivate, ahk_exe NGUIdle.exe ;kart
		}

		FirstRebirth2()
		ChallengeCheck()
		if ChallengeFlag = 0
			break
		RebirthBoss37Check()
	}

	
	Rebirths := 1
	While ChallengeFlag = 1 And Rebirths <= Challenge1RunIterations ;Run up to 10 3-minute rebirths (by default)
	{
		CurrentStatus = %Challenge1RunLength% min RB #%Rebirths%/%Challenge1RunIterations%
		if (BackgroundMode = 0)
		{
			WinActivate, Play NGU IDLE ;kong
			WinActivate, ahk_exe NGUIdle.exe ;kart
		}

		RebirthScript2(Challenge1RunLength)
		ChallengeCheck()
		Rebirths++
	}
	Rebirths := 1
	While ChallengeFlag = 1 And Rebirths <= Challenge2RunIterations ;Run up to 5 7-minute rebirths (by default)
	{
		CurrentStatus = %Challenge2RunLength% min RB #%Rebirths%/%Challenge2RunIterations%
		if (BackgroundMode = 0)
		{
			WinActivate, Play NGU IDLE ;kong
			WinActivate, ahk_exe NGUIdle.exe ;kart
		}

		RebirthScript2(Challenge2RunLength)
		ChallengeCheck()
		Rebirths++
	}
	Rebirths := 1
	While ChallengeFlag = 1 And Rebirths <= Challenge3RunIterations ;Run up to 5 12-minute rebirths (by default)
	{
		CurrentStatus = %Challenge3RunLength% min RB #%Rebirths%/%Challenge3RunIterations%
		if (BackgroundMode = 0)
		{
			WinActivate, Play NGU IDLE ;kong
			WinActivate, ahk_exe NGUIdle.exe ;kart
		}

		RebirthScript2(Challenge3RunLength)
		ChallengeCheck()
		Rebirths++
	}
	Rebirths := 1
	While ChallengeFlag = 1 ;Run 60 minute rebirths until your challenge is done
	{
		CurrentStatus = 60 min RB #%Rebirths%
		if (BackgroundMode = 0)
		{
			WinActivate, Play NGU IDLE ;kong
			WinActivate, ahk_exe NGUIdle.exe ;kart
		}

		RebirthScript2(60)
		ChallengeCheck()
		Rebirths++
	}
	LastSegmentTimerTime := A_TickCount - SegmentTimerStart
	Completions++
	Return
}

NoRebirthRun() ;Attempts to do a No Rebirth run.
{
	if (BackgroundMode = 0)
	{
		WinActivate, Play NGU IDLE ;kong
		WinActivate, ahk_exe NGUIdle.exe ;kart
	}

	SegmentTimerStart := A_TickCount
	NRCFlag := 1
	ChallengeMenu()
	ChallengeStart(ChallengeNumber)
	CurrentStatus = No Rebirth Challenge
	FirstRebirth2()
	InventoryMenu()
	Loadout(1)
	BloodMagicMenu()
	BloodMagicSpellMenu()
	SpellUncheck(1)
	SpellUncheck(3)
	SpellCheck(4)
	RegainMagic()
	BloodMagicMenu()
	BloodAssign_CostEfficient(MaxSustainableBloodSpellNumber) ;get some counterfeit gold multiplier to get some gold for augs (until the 20th loop)
	While ChallengeFlag = 1
	{
		if Mod(a_index, 20) = 0 ;Every 20 loops, move to last unlocked adventure zone, reset magic and energy for redistribution
		{
			AdventureMenu()
			AdventureStart()
			if MaxAdventureZone=0
			{
				AdventureMax()
			}
			else
			{
				AdventureRight(MaxAdventureZone)
				TitanCheck2()
			}
			WandoosMenu()
			RegainBoth()
		}
		WandoosMenu()
		WandoosCapBoth()
		TimeMachineMenu()
		Magic2X()
		TimeMachineMagic()
		TimeMachineMagic()
		if !DoubleBasicTrainingPerk
			AdvTrainTime:=1800000
		Else
			AdvTrainTime:=900000
		
		if RebirthTimerTime >= AdvTrainTime ;if advanced training is unlocked (plus a few minutes), boost wandoos speed
		{
			Energy4X()
			AdvTrainingMenu()
			AdvTrainingPlus(4)
			AdvTrainingPlus(5)
		}
		else
		{
			Energy2X()
		}
		AugmentationMenu()
		Augmentation(OptimalAugmentation) ;TODO Figure out how to accomodate the fact that it might be better to do a lower level aug that has the multiplier aug unlocked. Maybe do an image search for "Locked"?
		DiggersSet(DiggerLoadout)
		FightMenu()
		NukeBoss()
		FightBoss()
		StopFight()
		if Mod(a_index, 3) = 0 ;Every 3 loops, try to harvest Ygg fruits and check whether the challenge is done.
		{
			YGGMenu()
			YGGAll()
			ChallengeCheck()
		}
	}
	Completions++
	NRCFlag := 0
	Return
	
}

SaveINI()
{
	Iniwrite, %RunDurationChoice%, Settings.ini,Default Run Options,defRebirthTimeSetting
	Iniwrite, %RepeatChoice%, Settings.ini,Default Run Options,defLoopOption
	Iniwrite, %LoopNumber%, Settings.ini,Default Run Options,defLoopOptionValue
	Iniwrite, %MaxAdventureZone%, Settings.ini,Default Run Options,defMaxAdventureZone
	Iniwrite, %MaxSustainableBloodSpellNumber%, Settings.ini,Default Run Options,defMaxSustainableBloodSpellNumber
	Iniwrite, %WandoosVersion%, Settings.ini,Default Run Options,defWandoosVersion
	Iniwrite, %OptimalAugmentation%, Settings.ini,Default Run Options,defOptimalAugmentation

	Iniwrite, %Challenge1RunIterations%, Settings.ini,Default Run Options,defChallenge1RunIterations
	Iniwrite, %Challenge1RunLength%, Settings.ini,Default Run Options,defChallenge1RunLength
	Iniwrite, %Challenge2RunIterations%, Settings.ini,Default Run Options,defChallenge2RunIterations
	Iniwrite, %Challenge2RunLength%, Settings.ini,Default Run Options,defChallenge2RunLength
	Iniwrite, %Challenge3RunIterations%, Settings.ini,Default Run Options,defChallenge3RunIterations
	Iniwrite, %Challenge3RunLength%, Settings.ini,Default Run Options,defChallenge3RunLength

	Iniwrite, %EnableNGUs%, Settings.ini,Default Run Options,defEnableNGUs
	
	for index in EnergyNGU
	{
		ENGU%index% := EnergyNGU[index]
	}
	
	Iniwrite, %ENGU1%, Settings.ini,Default Run Options,defNGU_Augments
	Iniwrite, %ENGU2%, Settings.ini,Default Run Options,defNGU_Wandoos
	Iniwrite, %ENGU3%, Settings.ini,Default Run Options,defNGU_Respawn
	Iniwrite, %ENGU4%, Settings.ini,Default Run Options,defNGU_Gold
	Iniwrite, %ENGU5%, Settings.ini,Default Run Options,defNGU_Adventure
	Iniwrite, %ENGU6%, Settings.ini,Default Run Options,defNGU_PowerAlpha
	Iniwrite, %ENGU7%, Settings.ini,Default Run Options,defNGU_DropChance
	Iniwrite, %ENGU8%, Settings.ini,Default Run Options,defNGU_MagicNGU
	Iniwrite, %ENGU9%, Settings.ini,Default Run Options,defNGU_PP
	
	for index in MagicNGU
	{
		MNGU%index% := MagicNGU[index]
	}
	
	Iniwrite, %MNGU1%, Settings.ini,Default Run Options,defNGU_Yggdrasil
	Iniwrite, %MNGU2%, Settings.ini,Default Run Options,defNGU_EXP
	Iniwrite, %MNGU3%, Settings.ini,Default Run Options,defNGU_PowerBeta
	Iniwrite, %MNGU4%, Settings.ini,Default Run Options,defNGU_Number
	Iniwrite, %MNGU5%, Settings.ini,Default Run Options,defNGU_TimeMachine
	Iniwrite, %MNGU6%, Settings.ini,Default Run Options,defNGU_EnergyNGU
	Iniwrite, %MNGU7%, Settings.ini,Default Run Options,defNGU_AdventureBeta
	
	for index in DiggerLoadout
	{
		Digger%index% := DiggerLoadout[index]
	}
	
	Iniwrite, %Digger1%, Settings.ini,Diggers,defDigger_1
	Iniwrite, %Digger2%, Settings.ini,Diggers,defDigger_2
	Iniwrite, %Digger3%, Settings.ini,Diggers,defDigger_3
	Iniwrite, %Digger4%, Settings.ini,Diggers,defDigger_4
	Iniwrite, %Digger5%, Settings.ini,Diggers,defDigger_5
	Iniwrite, %Digger6%, Settings.ini,Diggers,defDigger_6
	Iniwrite, %Digger7%, Settings.ini,Diggers,defDigger_7
	Iniwrite, %Digger8%, Settings.ini,Diggers,defDigger_8
	Iniwrite, %Digger9%, Settings.ini,Diggers,defDigger_9
	Iniwrite, %Digger10%, Settings.ini,Diggers,defDigger_10
	Iniwrite, %Digger11%, Settings.ini,Diggers,defDigger_11
	Iniwrite, %Digger12%, Settings.ini,Diggers,defDigger_12
	
	Iniwrite, %EquipLoadout3ForMoneyPit%,Settings.ini,Miscellaneous Settings,EquipLoadout3ForMoneyPit
	Iniwrite, %DoNotSave%,Settings.ini,Miscellaneous Settings,DoNotSave
	Iniwrite, %DoubleBasicTrainingPerk%,Settings.ini,Miscellaneous Settings,DoubleBasicTrainingPerk
	Iniwrite, %AlwaysCap%,Settings.ini,Miscellaneous Settings,AlwaysCap
	Iniwrite, %BackgroundMode%,Settings.ini,Miscellaneous Settings,BackgroundMode
	Iniwrite, %ImageSearchVariance%,Settings.ini,Miscellaneous Settings,ImageSearchVariance

}

LoadINI()
{
	Iniread, defRebirthTimeSetting, Settings.ini,Default Run Options,defRebirthTimeSetting,3
	Iniread, defLoopOption, Settings.ini,Default Run Options,defLoopOption,1
	Iniread, defLoopOptionValue, Settings.ini,Default Run Options,defLoopOptionValue,0
	Iniread, defMaxAdventureZone, Settings.ini,Default Run Options,defMaxAdventureZone,16
	Iniread, defMaxSustainableBloodSpellNumber, Settings.ini,Default Run Options,defMaxSustainableBloodSpellNumber,5
	Iniread, defWandoosVersion, Settings.ini,Default Run Options,defWandoosVersion,0
	Iniread, defOptimalAugmentation, Settings.ini,Default Run Options,defOptimalAugmentation,1
	
	Iniread, defChallenge1RunIterations, Settings.ini,Default Run Options,defChallenge1RunIterations,10
	Iniread, defChallenge1RunLength, Settings.ini,Default Run Options,defChallenge1RunLength,3
	Iniread, defChallenge2RunIterations, Settings.ini,Default Run Options,defChallenge2RunIterations,5
	Iniread, defChallenge2RunLength, Settings.ini,Default Run Options,defChallenge2RunLength,7
	Iniread, defChallenge3RunIterations, Settings.ini,Default Run Options,defChallenge3RunIterations,5
	Iniread, defChallenge3RunLength, Settings.ini,Default Run Options,defChallenge3RunLength,12
	
	Iniread, defEnableNGUs, Settings.ini,Default Run Options,defEnableNGUs,0
	
	Iniread, defNGU_Augments, Settings.ini,Default Run Options,defNGU_Augments,0
	Iniread, defNGU_Wandoos, Settings.ini,Default Run Options,defNGU_Wandoos,0
	Iniread, defNGU_Respawn, Settings.ini,Default Run Options,defNGU_Respawn,0
	Iniread, defNGU_Gold, Settings.ini,Default Run Options,defNGU_Gold,0
	Iniread, defNGU_Adventure, Settings.ini,Default Run Options,defNGU_Adventure,0
	Iniread, defNGU_PowerAlpha, Settings.ini,Default Run Options,defNGU_PowerAlpha,0
	Iniread, defNGU_DropChance, Settings.ini,Default Run Options,defNGU_DropChance,0
	Iniread, defNGU_MagicNGU, Settings.ini,Default Run Options,defNGU_MagicNGU,0
	Iniread, defNGU_PP, Settings.ini,Default Run Options,defNGU_PP,0
	
	Iniread, defNGU_Yggdrasil, Settings.ini,Default Run Options,defNGU_Yggdrasil,0
	Iniread, defNGU_EXP, Settings.ini,Default Run Options,defNGU_EXP,0
	Iniread, defNGU_PowerBeta, Settings.ini,Default Run Options,defNGU_PowerBeta,0
	Iniread, defNGU_Number, Settings.ini,Default Run Options,defNGU_Number,0
	Iniread, defNGU_TimeMachine, Settings.ini,Default Run Options,defNGU_TimeMachine,0
	Iniread, defNGU_EnergyNGU, Settings.ini,Default Run Options,defNGU_EnergyNGU,0
	Iniread, defNGU_AdventureBeta, Settings.ini,Default Run Options,defNGU_AdventureBeta,0
	
	Iniread, defDigger_1, Settings.ini,Diggers,defDigger_1,0
	Iniread, defDigger_2, Settings.ini,Diggers,defDigger_2,0
	Iniread, defDigger_3, Settings.ini,Diggers,defDigger_3,0
	Iniread, defDigger_4, Settings.ini,Diggers,defDigger_4,0
	Iniread, defDigger_5, Settings.ini,Diggers,defDigger_5,0
	Iniread, defDigger_6, Settings.ini,Diggers,defDigger_6,0
	Iniread, defDigger_7, Settings.ini,Diggers,defDigger_7,0
	Iniread, defDigger_8, Settings.ini,Diggers,defDigger_8,0
	Iniread, defDigger_9, Settings.ini,Diggers,defDigger_9,0
	Iniread, defDigger_10, Settings.ini,Diggers,defDigger_10,0
	Iniread, defDigger_11, Settings.ini,Diggers,defDigger_11,0
	Iniread, defDigger_12, Settings.ini,Diggers,defDigger_12,0
	
	Iniread, EquipLoadout3ForMoneyPit,Settings.ini,Miscellaneous Settings,EquipLoadout3ForMoneyPit,0
	Iniread, DoNotSave,Settings.ini,Miscellaneous Settings,DoNotSave,0
	Iniread, DoubleBasicTrainingPerk,Settings.ini,Miscellaneous Settings,DoubleBasicTrainingPerk,0
	Iniread, AlwaysCap,Settings.ini,Miscellaneous Settings,AlwaysCap,0
	Iniread, BackgroundMode,Settings.ini,Miscellaneous Settings,BackgroundMode,0
	Iniread, ImageSearchVariance,Settings.ini,Miscellaneous Settings,ImageSearchVariance,10
}

;TODO add option to start runs from current rebirth instead of starting a new one
;TODO Add objective to the display
;TODO Add support for hacks - imagesearch for Hacks on Features menu