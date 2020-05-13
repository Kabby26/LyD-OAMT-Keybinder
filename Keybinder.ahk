Version := 0.1
/*
IfExist update.bat
{
	FileDelete update.bat
}

UrlDownloadToFile http://212.48.117.34/Ordnungsamt/Version.txt, version.txt

FileRead, NewestVersion, version.txt
FileDelete version.txt

if NewestVersion is not number
{
	MsgBox, 48, Fehler, Die Updateserver sind derzeit nicht erreichbar!`nBitte bei Kabby melden. Der Keybinder kann trotzdessen weiter verwendet werden.`nEs können aber keine Hintergrundbilder oder ähnliches heruntergeladen werden!
	SERVERDOWN := 1
}

if(SERVERDOWN == 1){
}else if(NewestVersion > version){
	MsgBox, 68, Update verfügbar, Es ist ein Update verfügbar!`n`nAktuelle Version:     [%Version%]`nNeue Version:          [%NewestVersion%]`n`nMöchtest du den Keybinder aktualisieren?
	IfMsgBox, YES
	{
		SplashTextOn, 200, 50, Keybinder, Der Keybinder wird geupdated! Bitte warten...
		UrlDownloadToFile http://212.48.117.34/Ordnungsamt/Keybinder.exe, %A_ScriptName%.new
		UpdateBat=
			(
				Del "%A_ScriptName%"
				Rename "%A_ScriptName%.new" "%A_ScriptName%
				cd "%A_ScriptFullPath%"
				"%A_ScriptName%"
			)
		FileAppend, %UpdateBat%, update.bat
		Run, update.bat, , hide
		SplashTextOff
		ExitApp
		}
	IfMsgBox, NO
	{
	}
}else{
}
*/
#IfWinActive, ahk_exe gta_sa.exe
#SingleInstance, Force
#MaxHotkeysPerInterval  1000000
;#NoTrayIcon
#UseHook
#NoEnv

IfNotExist, %A_AppData%\Keybinder\LyD_Keybinder\config\
{
	FileCreateDir, %A_AppData%\Keybinder\LyD_Keybinder\config\
}

IfNotExist %A_AppData%\Keybinder\LyD_Keybinder\blau.jpg
{
	URLDownloadToFile, http://80.252.107.195/LyD_Keybinder/blau.jpg, %A_AppData%\Keybinder\LyD_Keybinder\blau.jpg
}

IfNotExist %A_AppData%\Keybinder\LyD_Keybinder\grau.jpg
{
	URLDownloadToFile, http://80.252.107.195/LyD_Keybinder/grau.jpg, %A_AppData%\Keybinder\LyD_Keybinder\grau.jpg
}
/*
IfNotExist %A_AppData%\Keybinder\Open-SAMP-API.dll
{
	URLDownloadToFile, http://212.48.117.34/LyD_Keybinder/Open-SAMP-API.dll, %A_AppData%\Keybinder\Open-SAMP-API.dll
}
*/
debug(myDebug){
	return addChatMessage("{FBEFEF}[{FF0000}DEBUG-INFO{FBEFEF}]{64FE2E} " myDebug)
}

#Include, API.ahk

global cTime := 120

setTimer, MainTimer, On
setTimer, TowTimer, On
setTimer, aEngine, On

RegRead, sampuser, HKEY_CURRENT_USER, Software\SAMP, PlayerName

#if !isChatOpen() && !IsDialogOpen()

gosub, main
return

main:
Gui, Add, Picture, x267 y-1 w450 h80 , C:\Users\Pascal\Desktop\Screenshot_2.png

Gui, Add, GroupBox, x12 y79 w470 h330

Gui, Add, Edit, x22 y99 w80 h20 ReadOnly, ^
Gui, Add, Text, x102 y99 w20 h20 , und
Gui, Add, Edit, x122 y99 w80 h20 ReadOnly, 1
Gui, Add, Text, x212 y99 w260 h30 , Räumen Sie sofort die Straße!

Gui, Add, Edit, x22 y129 w80 h20 ReadOnly, ^
Gui, Add, Text, x102 y129 w20 h20 , und
Gui, Add, Edit, x122 y129 w80 h20 ReadOnly, 2
Gui, Add, Text, x212 y129 w260 h30 , Allgemeine Verkehrskontrolle!

Gui, Add, Edit, x22 y159 w80 h20 ReadOnly, ^
Gui, Add, Text, x102 y159 w20 h20 , und
Gui, Add, Edit, x122 y159 w80 h20 ReadOnly, 3
Gui, Add, Text, x212 y159 w260 h30 , Letzte Aufforderung!

Gui, Add, Edit, x22 y189 w80 h20 ReadOnly, ^
Gui, Add, Text, x102 y189 w20 h20 , und
Gui, Add, Edit, x122 y189 w80 h20 ReadOnly, 4
Gui, Add, Text, x212 y189 w260 h30 , Guten Tag. San Andreas Ordnungsamt.

Gui, Add, Edit, x22 y219 w80 h20 ReadOnly, ^
Gui, Add, Text, x102 y219 w20 h20 , und
Gui, Add, Edit, x122 y219 w80 h20 ReadOnly, 5
Gui, Add, Text, x212 y219 w260 h30 , Wissen Sie warum ich Sie angehalten habe?

Gui, Add, Edit, x22 y249 w80 h20 ReadOnly, ^
Gui, Add, Text, x102 y249 w20 h20 , und
Gui, Add, Edit, x122 y249 w80 h20 ReadOnly, 6
Gui, Add, Text, x212 y249 w260 h30 , Bitte zeigen Sie mir ihren Ausweis`, Führerschein und ihren Fahrzeugschein.

Gui, Add, Edit, x22 y279 w80 h20 ReadOnly, ^
Gui, Add, Text, x102 y279 w20 h20 , und
Gui, Add, Edit, x122 y279 w80 h20 ReadOnly, 7
Gui, Add, Text, x212 y279 w260 h30 , Haben Sie Waffen oder verbotene Gegenstände dabei?

Gui, Add, Edit, x22 y309 w80 h20 ReadOnly, ^
Gui, Add, Text, x102 y309 w20 h20 , und
Gui, Add, Edit, x122 y309 w80 h20 ReadOnly, 8
Gui, Add, Text, x212 y309 w260 h30 , Bitte öffnen und zeigen Sie mir ihren Kofferraum.

Gui, Add, Edit, x22 y339 w80 h20 ReadOnly, ^
Gui, Add, Text, x102 y339 w20 h20 , und
Gui, Add, Edit, x122 y339 w80 h20 ReadOnly, 9
Gui, Add, Text, x212 y339 w260 h30 , Vielen Dank für ihre Kooperation!

Gui, Add, Edit, x22 y369 w80 h20 ReadOnly, ^
Gui, Add, Text, x102 y369 w20 h20 , und
Gui, Add, Edit, x122 y369 w80 h20 ReadOnly, 0
Gui, Add, Text, x212 y369 w260 h30 , Ich wünsche Ihnen noch einen angenehmen Tag und eine gute Weiterfahrt!


Gui, Add, GroupBox, x502 y79 w470 h120

Gui, Add, Edit, x512 y99 w80 h20 ReadOnly, <
Gui, Add, Text, x592 y99 w20 h20 , und
Gui, Add, Edit, x612 y99 w80 h20 ReadOnly, 1
Gui, Add, Text, x702 y99 w260 h30 , /parkscheinkontrolle

Gui, Add, Edit, x512 y129 w80 h20 ReadOnly, <
Gui, Add, Text, x592 y129 w20 h20 , und
Gui, Add, Edit, x612 y129 w80 h20 ReadOnly, 2
Gui, Add, Text, x702 y129 w260 h30 , /strafzettel

Gui, Add, Edit, x512 y159 w80 h20 ReadOnly, <
Gui, Add, Text, x592 y159 w20 h20 , und
Gui, Add, Edit, x612 y159 w80 h20 ReadOnly, 3
Gui, Add, Text, x702 y159 w260 h30 , /parkstrafe


Gui, Add, GroupBox, x502 y199 w370 h270

Gui, Add, Edit, x512 y219 w80 h20 ReadOnly, Alt + 1
Gui, Add, Text, x602 y219 w260 h30 , San Andreas Ordnungsamt! Wie können wir helfen?

Gui, Add, Edit, x512 y249 w80 h20 ReadOnly, Alt + 2
Gui, Add, Text, x602 y249 w260 h30 , Vereinfachte Punktevergabe

Gui, Add, Edit, x512 y279 w80 h20 ReadOnly, Alt + 3
Gui, Add, Text, x602 y279 w260 h30 , Zwei Minuten Countdown

Gui, Add, Edit, x512 y309 w80 h20 ReadOnly, Alt + 4
Gui, Add, Text, x602 y309 w260 h30 , Abschleppnachricht

Gui, Add, Edit, x512 y339 w80 h20 ReadOnly, Alt + 5
Gui, Add, Text, x602 y339 w260 h30 , /motor /licht /flock

Gui, Add, Edit, x512 y369 w80 h20 ReadOnly, Alt + 6
Gui, Add, Text, x602 y369 w260 h30 , /flock

Gui, Add, Edit, x512 y399 w80 h20 ReadOnly, Alt + 7
Gui, Add, Text, x602 y399 w260 h30 , /olight

Gui, Add, Edit, x512 y429 w80 h20 ReadOnly, Alt + 8
Gui, Add, Text, x602 y429 w260 h30 , /oparken /fparken


Gui, Add, Button, x372 y429 w100 h30 , Einstellungen
Gui, Add, Button, x252 y429 w100 h30 , Eigene Hotkeys
Gui, Add, Button, x132 y429 w100 h30 , Weitere Befehle
Gui, Add, Button, x12 y429 w100 h30 , Button
Gui, Show, w988 h480, San Andreas Ordnungsamt Keybinder | Version: %Version%
return

GuiClose:
ExitApp

~^ & ~1::
SendChat("/m [->] San Andreas Ordnungsamt [<-]")
SendChat("/m <- <- Räumen Sie sofort die Straße! -> ->")
return

~^ & ~2::
SendChat("/m [->] San Andreas Ordnungsamt [<-]")
SendChat("/m --- Allgemeine Verkehrskontrolle! ---")
SendChat("/m -> -> Fahren Sie rechts ran! -> ->")
return

~^ & ~3::
SendChat("/m [->] San Andreas Ordnungsamt [<-]")
SendChat("/m --- Letzte Aufforderung! ---")
SendChat("/m -> -> Fahren Sie umgehend rechts ran! -> ->")
return

~^ & ~4::
getPlayerName(name, 65)
SendChat("Guten Tag. San Andreas Ordnungsamt. " name " mein Name.")
i := playerInput("ID/Name: ")
if(i == ""){
	KMSG("Dienstmarke konnte nicht gezeigt werden")
	return
}
setTimer, showBadge, 1000
return

showBadge:
setTimer, showBadge, Off
SendChat("/dienstmarke " i)
return

~^ & ~5::
SendChat("Wissen Sie warum ich Sie angehalten habe?")
return

~^ & ~6::
SendChat("Bitte zeigen Sie mir ihren Ausweis, Führerschein und ihren Fahrzeugschein.")
return

~^ & ~7::
SendChat("Haben Sie Waffen oder verbotene Gegenstände dabei?")
return

~^ & ~8::
SendChat("Bitte öffnen und zeigen Sie mir ihren Kofferraum.")
return

~^ & ~9::
SendChat("Vielen Dank für ihre Kooperation!")
return

~^ & ~0::
SendChat("Ich wünsche Ihnen noch einen angenehmen Tag und eine gute Weiterfahrt!")
return

~< & ~1::
SendChat("/parkscheinkontrolle")
return

~< & ~3::
SendChat("/strafzettel")
return

~< & ~2::
SendChat("/parkstrafe")
return

~!1::
SendChat("/abnehmen")
SendChat("San Andreas Ordnungsamt! Wie können wir helfen?")
return

~!2::
KMSG("Bitte gib die ID an!")
id := PlayerInput("ID: ")
KMSG("Bitte gib den Schein an!")
KMSG("{FFE600}1 = Auto, 2 = Flug, 3 = Motorrad, 4 = LKW, 5 = Waffen")
schein := PlayerInput("Schein: ")
KMSG("Bitte gib den Grund an!")
KMSG("1 = Absl. Anfahren von Personen             | 8 = Fahren ohne Licht")
KMSG("2 = Absl. Zerstören von Ampeln               | 9 = Fahren unter Alkohol/Drogeneinfluss")
KMSG("3 = Behinderung des Verkehrsfluss          | 10 = Missachtung von Vorfahrstregeln")
KMSG("4 = Behinderung von Einsatzfahrzeugen  | 11 = Parken im Halteverbot")
KMSG("5 = Fahren auf falscher Straßenseite        | 12 = Verursachen eines Unfalles")
KMSG("6 = Fahren abseits der Straße                  | 13 = Fahren über Rot")
KMSG("7 = Fahren ohne Helm")
grund := PlayerInput("Grund: ")
if(schein >= 1 && schein <= 6 && grund >= 1 && grund <= 13) {
	if(grund == 1) {
		SendChat("/fpunkte " id " " schein " 10 Absichtliches Anfahren von Personen")
	}else if(grund == 2){
		SendChat("/fpunkte " id " " schein " 2 Absichtliches zerstören von Verkehrsanlagen")
	}else if(grund == 3){
		SendChat("/fpunkte " id " " schein " 1 Behinderung des Verkehrsflusses")
	}else if(grund == 4){
		SendChat("/fpunkte " id " " schein " 5 Behinderung von Einsatzfahrzeugen ")
	}else if(grund == 5){
		SendChat("/fpunkte " id " " schein " 6 Fahren auf falscher Straßenseite")
	}else if(grund == 6){
		SendChat("/fpunkte " id " " schein " 3 Fahren abseits der Straße")
	}else if(grund == 7){
		SendChat("/fpunkte " id " " schein " 3 Fahren ohne Helm ")
	}else if(grund == 8){
		SendChat("/fpunkte " id " " schein " 3 Fahren ohne Licht")
	}else if(grund == 9){
		SendChat("/fpunkte " id " " schein " 10 Fahren ohne Alkohol-/Drogeneinfluss")
	}else if(grund == 10){
		SendChat("/fpunkte " id " " schein " 3 Missachtung der Vorfahrtsregeln")
	}else if(grund == 11){
		SendChat("/fpunkte " id " " schein " 2 Parken im Halteverbot")
	}else if(grund == 12){
		SendChat("/fpunkte " id " " schein " 4 Verursachen eines Unfalles")
	}else if(grund == 13){
		SendChat("/fpunkte " id " " schein " 7 Fahren über Rot ")
	}else{
		KMSG("Angaben inkorrekt!")
	}
}
return

~!3::
if(isCountdown){
	isCountdown := false
	cTime := 120
	setTimer, Countdown, Off
	KMSG("Du hast den Countdown ausgeschaltet!")
	return
}
isCountdown := true
setTimer, Countdown, 1000
Gosub, Countdown
return

Countdown:
if(cTime == 0){
	KMSG("Der Countdown ist abgelaufen!")
	isCountdown := false
	setTimer, Countdown, Off
	cTime := 120
}
cTime--
showGameText(cTime, 1000, 6)
return

~!4::
getPlayerName(name, 65)
getZoneName(zone, 65)
getCityName(city, 65)
fName := PlayerInput("Fahrzeugname: ")
SendChat("Guten tag, San Andreas Ordnungsamt")
SendChat("Ordnungsbeamter " name " hier")
SendChat("Sie haben Ihr Fahrzeug im Halteverbot stehen.")
SendChat("Ich gebe Ihnen 2 Minuten Zeit, um Ihr Fahrzeug umzuparken.")
SendChat("Wenn Sie es nicht abholen, wird es kostenpflichtig abgeschleppt!")
if(Fname != ""){
	SendChat("Es handelt sich um einen " fName " in " zone ".")
}else{
	SendChat("Das Fahrzeug befindet sich in " city " " zone)
}
return

~!5::
SendChat("/flock")
SendChat("/motor")
SendChat("/licht")
return

~!6::
SendChat("/Flock")
return

~!7::
SendChat("/olight")
return

~!8::
SendChat("/oparken")
SendChat("/fparken")
return

!l::
getPlayerName(name, 65)
addChatMessage("Ordnungsbeamter " name " hat das Fahrzeug von der Fraktion")
return

TowTimer:
getPlayerName(name, 65)
GetChatLine(0, towLine)
if(InStr(towLine, "Ordnungsbeamter " name " hat das Fahrzeug von der Fraktion")){
	debug("+1 fraktion")
}else if(InStr(towLine, "Ordnungsbeamter " name " hat das Fahrzeug von")){
	debug("+1 zivi")
}
return

MainTimer:
GetChatLine(0, mainFirstLine)
if(InStr(mainFirstLine, "Zollstation") && InStr(mainFirstLine, "/zoll")){
	SendChat("/zollamt")
}
return

:?:/rc::
if(isRespawn == true){
	KMSG("Es ist bereits ein laufender Carrespawn aktiviert!")
	return
}
/*
if(FRang < 4){
	KMSG("Du benötigst mindestens Rang 4 um einen Carrespawn zu betätigen.")
	return
}
*/
sleep, 500
rTime := PlayerInput("Zeit: ")
if rTime is not Integer
	return
if(rTime == ""){
	return
}
if(rTime > 60){
	addChatMessage("{A4A4A4}Computer sagt:{B40404} Nein")
	return
}
if(rTime < 10){
	addChatMessage("{A4A4A4}Computer sagt:{B40404} Nein")
	return
}
KMSG("Der Carrespawn findet in " rTime " Sekunden statt!")
isRespawn := true
SetTimer, respawn, 1000
return

respawn:
rTime--
if(rTime == 0){
	SendChat("/respawncars")
	isRespawn := false
	SetTimer, respawn, Off
}
if(rTime == 60){
	sendChat("/fc Carrespawn in " rTime " Sekunden!")
}
if(rTime == 50){
	sendChat("/fc Carrespawn in " rTime " Sekunden!")
}
if(rTime == 40){
	sendChat("/fc Carrespawn in " rTime " Sekunden!")
}
if(rTime == 30){
	sendChat("/fc Carrespawn in " rTime " Sekunden!")
}
if(rTime == 20){
	sendChat("/fc Carrespawn in " rTime " Sekunden!")
}
if(rTime == 10){
	sendChat("/fc Carrespawn in " rTime " Sekunden!")
}
if(rTime == 5){
	sendChat("/fc Carrespawn in " rTime " Sekunden!")
}
if(rTime == 3){
	sendChat("/fc Carrespawn in " rTime " Sekunden!")
}
if(rTime == 2){
	sendChat("/fc Carrespawn in " rTime " Sekunden!")
}
if(rTime == 1){
	sendChat("/fc Carrespawn in einer Sekunde!")
}
return

aEngine:
if(getVehicleType() != 9){
	if(helm == true){
		SendChat("/helm")
		helm := false
	}
}
if(DoOnce == 0){
	OldState := isPlayerDriver()
	DoOnce := 1
}
NewState := isPlayerDriver()
if(OldState == 1 && NewState != 1){
	OldState := isPlayerDriver()
	OnPlayerExitVehicle()
}else if(OldState != 1 && NewState == 1){
	OldState := isPlayerDriver()
	OnPlayerEnterVehicle()
}
return

~F::
if(IsChatOpen() || IsDialogOpen()){
	return
}
If(IsPlayerinAnyVehicle() == 1 && IsPlayerDriver() == 1 && IsVehicleEngineEnabled() == 1){
	SendChat("/motor")
	if(IsVehicleLightEnabled() == 1){
		SendChat("/licht")
	}
}
return

~Enter::
if(IsChatOpen() || IsDialogOpen()){
	return
}
If(IsPlayerinAnyVehicle() == 1 && IsPlayerDriver() == 1 && IsVehicleEngineEnabled() == 1){
	SendChat("/motor")
	if(IsVehicleLightEnabled() == 1){
		SendChat("/licht")
	}
}
return