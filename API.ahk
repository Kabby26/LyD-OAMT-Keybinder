PATH_SAMP_API := PathCombine(A_AppData, "Keybinder\Open-SAMP-API.dll")

hModule := DllCall("LoadLibrary", Str, PATH_SAMP_API)
if(hModule == -1 || hModule == 0)
{
	MsgBox, 48, Error, The dll-file couldn't be found!
	ExitApp
}

;Client.hpp
Init_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "Init")
SetParam_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "SetParam")

;GTAFunctions.hpp
GetGTACommandLine_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetGTACommandLine")
IsMenuOpen_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsMenuOpen")
ScreenToWorld_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "ScreenToWorld")
WorldToScreen_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "WorldToScreen")

;PlayerFunctions.hpp
GetPlayerCPed_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerCPed")
GetPlayerHealth_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerHealth")
GetPlayerArmor_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerArmor")
GetPlayerMoney_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerMoney")
GetPlayerSkinID_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerSkinID")
GetPlayerInterior_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerInterior")
IsPlayerInAnyVehicle_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsPlayerInAnyVehicle")
IsPlayerDriver_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsPlayerDriver")
IsPlayerPassenger_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsPlayerPassenger")
IsPlayerInInterior_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsPlayerInInterior")
GetPlayerX_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerX")
GetPlayerY_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerY")
GetPlayerZ_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerZ")
GetPlayerPosition_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerPosition")
IsPlayerInRange2D_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsPlayerInRange2D")
IsPlayerInRange3D_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsPlayerInRange3D")
GetCityName_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetCityName")
GetZoneName_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetZoneName")

;RenderFunctions.hpp
TextCreate_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "TextCreate")
TextDestroy_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "TextDestroy")
TextSetShadow_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "TextSetShadow")
TextSetShown_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "TextSetShown")
TextSetColor_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "TextSetColor")
TextSetPos_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "TextSetPos")
TextSetString_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "TextSetString")
TextUpdate_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "TextUpdate")
BoxCreate_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "BoxCreate")
BoxDestroy_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "BoxDestroy")
BoxSetShown_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "BoxSetShown")
BoxSetBorder_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "BoxSetBorder")
BoxSetBorderColor_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "BoxSetBorderColor")
BoxSetColor_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "BoxSetColor")
BoxSetHeight_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "BoxSetHeight")
BoxSetPos_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "BoxSetPos")
BoxSetWidth_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "BoxSetWidth")
LineCreate_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "LineCreate")
LineDestroy_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "LineDestroy")
LineSetShown_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "LineSetShown")
LineSetColor_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "LineSetColor")
LineSetWidth_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "LineSetWidth")
LineSetPos_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "LineSetPos")
ImageCreate_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "ImageCreate")
ImageDestroy_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "ImageDestroy")
ImageSetShown_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "ImageSetShown")
ImageSetAlign_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "ImageSetAlign")
ImageSetPos_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "ImageSetPos")
ImageSetRotation_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "ImageSetRotation")
DestroyAllVisual_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "DestroyAllVisual")
ShowAllVisual_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "ShowAllVisual")
HideAllVisual_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "HideAllVisual")
GetFrameRate_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetFrameRate")
GetScreenSpecs_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetScreenSpecs")
SetCalculationRatio_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "SetCalculationRatio")
SetOverlayPriority_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "SetOverlayPriority")
SetOverlayCalculationEnabled_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "SetOverlayCalculationEnabled")

;SAMPFunctions.hpp
GetServerIP_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetServerIP")
GetServerPort_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetServerPort")
SendChat_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "SendChat")
ShowGameText_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "ShowGameText")
AddChatMessage_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "AddChatMessage")
ShowDialog_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "ShowDialog")
GetPlayerNameByID_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerNameByID")
GetPlayerIDByName_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerIDByName")
GetPlayerName_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerName")
GetPlayerId_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerId")
IsChatOpen_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsChatOpen")
IsDialogOpen_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsDialogOpen")

;VehicleFunctions.hpp
GetVehiclePointer_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehiclePointer")
GetVehicleSpeed_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehicleSpeed")
GetVehicleHealth_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehicleHealth")
GetVehicleModelId_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehicleModelId")
GetVehicleModelName_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehicleModelName")
GetVehicleModelNameById_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehicleModelNameById")
GetVehicleType_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehicleType")
GetVehicleFreeSeats_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehicleFreeSeats")
GetVehicleFirstColor_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehicleFirstColor")
GetVehicleSecondColor_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehicleSecondColor")
GetVehicleColor_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetVehicleColor")
IsVehicleSeatUsed_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleSeatUsed")
IsVehicleLocked_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleLocked")
IsVehicleHornEnabled_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleHornEnabled")
IsVehicleSirenEnabled_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleSirenEnabled")
IsVehicleAlternateSirenEnabled_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleAlternateSirenEnabled")
IsVehicleEngineEnabled_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleEngineEnabled")
IsVehicleLightEnabled_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleLightEnabled")
IsVehicleCar_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleCar")
IsVehiclePlane_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehiclePlane")
IsVehicleBoat_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleBoat")
IsVehicleTrain_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleTrain")
IsVehicleBike_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "IsVehicleBike")

;WeaponFunctions.hpp
HasWeaponIDClip_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "HasWeaponIDClip")
GetPlayerWeaponID_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerWeaponID")
GetPlayerWeaponType_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerWeaponType")
GetPlayerWeaponSlot_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerWeaponSlot")
GetPlayerWeaponName_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerWeaponName")
GetPlayerWeaponClip_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerWeaponClip")
GetPlayerWeaponTotalClip_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerWeaponTotalClip")
GetPlayerWeaponState_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerWeaponState")
GetPlayerWeaponAmmo_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerWeaponAmmo")
GetPlayerWeaponAmmoInClip_func := DllCall("GetProcAddress", "UInt", hModule, "AStr", "GetPlayerWeaponAmmoInClip")

Init()
{
	global Init_func
	return DllCall(Init_func)
}

SetParam(_szParamName, _szParamValue)
{
	global SetParam_func
	return DllCall(SetParam_func, "AStr", _szParamName, "AStr", _szParamValue)
}

URLtoVar(url) {
    hObject := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    hObject.Open("GET", url)
    hObject.Send()
    return hObject.ResponseText
}

GetGTACommandLine(ByRef line, max_len)
{
	global GetGTACommandLine_func
	VarSetCapacity(line, max_len * (A_IsUnicode ? 2 : 1), 0)
	res := DllCall(GetGTACommandLine_func, "StrP", line, "Int", max_len)
	; We need StrGet to convert the API answer (ANSI) to the charset AHK uses (ANSI or Unicode)
	line := StrGet(&line, "cp0")
	return res
}

IsMenuOpen()
{
	global IsMenuOpen_func
	return DllCall(IsMenuOpen_func)
}

ScreenToWorld(x, y, ByRef worldX, ByRef worldY, ByRef worldZ)
{
	global ScreenToWorld_func
	return DllCall(ScreenToWorld_func, "Float", x, "Float", y, "FloatP", worldX, "FloatP", worldY, "FloatP", worldZ)
}

WorldToScreen(x, y, z, ByRef screenX, ByRef screenY)
{
	global WorldToScreen_func
	return DllCall(WorldToScreen_func, "Float", x, "Float", y, "Float", z, "FloatP", screenX, "FloatP", screenY)
}

GetPlayerCPed()
{
	global GetPlayerCPed_func
	return DllCall(GetPlayerCPed_func)
}

GetPlayerHealth()
{
	global GetPlayerHealth_func
	return DllCall(GetPlayerHealth_func)
}

GetPlayerArmor()
{
	global GetPlayerArmor_func
	return DllCall(GetPlayerArmor_func)
}

GetPlayerMoney()
{
	global GetPlayerMoney_func
	return DllCall(GetPlayerMoney_func)
}

GetPlayerSkinID()
{
	global GetPlayerSkinID_func
	return DllCall(GetPlayerSkinID_func)
}

GetPlayerInterior()
{
	global GetPlayerInterior_func
	return DllCall(GetPlayerInterior_func)
}

IsPlayerInAnyVehicle()
{
	global IsPlayerInAnyVehicle_func
	return DllCall(IsPlayerInAnyVehicle_func)
}

IsPlayerDriver()
{
	global IsPlayerDriver_func
	return DllCall(IsPlayerDriver_func)
}

IsPlayerPassenger()
{
	global IsPlayerPassenger_func
	return DllCall(IsPlayerPassenger_func)
}

IsPlayerInInterior()
{
	global IsPlayerInInterior_func
	return DllCall(IsPlayerInInterior_func)
}

GetPlayerX(ByRef posX)
{
	global GetPlayerX_func
	return DllCall(GetPlayerX_func, "FloatP", posX)
}

GetPlayerY(ByRef posY)
{
	global GetPlayerY_func
	return DllCall(GetPlayerY_func, "FloatP", posY)
}

GetPlayerZ(ByRef posZ)
{
	global GetPlayerZ_func
	return DllCall(GetPlayerZ_func, "FloatP", posZ)
}

GetPlayerPosition(ByRef posX, ByRef posY, ByRef posZ)
{
	global GetPlayerPosition_func
	return DllCall(GetPlayerPosition_func, "FloatP", posX, "FloatP", posY, "FloatP", posZ)
}

IsPlayerInRange2D(posX, posY, radius)
{
	global IsPlayerInRange2D_func
	return DllCall(IsPlayerInRange2D_func, "Float", posX, "Float", posY, "Float", radius)
}

IsPlayerInRange3D(posX, posY, posZ, radius)
{
	global IsPlayerInRange3D_func
	return DllCall(IsPlayerInRange3D_func, "Float", posX, "Float", posY, "Float", posZ, "Float", radius)
}

GetCityName(ByRef cityName, max_len)
{
	global GetCityName_func
	VarSetCapacity(cityName, max_len * (A_IsUnicode ? 2 : 1), 0)
	res := DllCall(GetCityName_func, "StrP", cityName, "Int", max_len)
	; We need StrGet to convert the API answer (ANSI) to the charset AHK uses (ANSI or Unicode)
	cityName := StrGet(&cityName, "cp0")
	return res
}

GetZoneName(ByRef zoneName, max_len)
{
	global GetZoneName_func
	VarSetCapacity(zoneName, max_len * (A_IsUnicode ? 2 : 1), 0)
	res := DllCall(GetZoneName_func, "StrP", zoneName, "Int", max_len)
	; We need StrGet to convert the API answer (ANSI) to the charset AHK uses (ANSI or Unicode)
	zoneName := StrGet(&zoneName, "cp0")
	return res
}

TextCreate(Font, FontSize, bBold, bItalic, x, y, color, text, bShadow, bShow)
{
	global TextCreate_func
	return DllCall(TextCreate_func, "AStr", Font, "Int", FontSize, "UChar", bBold, "UChar", bItalic, "Int", x, "Int", y, "UInt", color, "AStr", text, "UChar", bShadow, "UChar", bShow)
}

TextDestroy(ID)
{
	global TextDestroy_func
	return DllCall(TextDestroy_func, "Int", ID)
}

TextSetShadow(id, b)
{
	global TextSetShadow_func
	return DllCall(TextSetShadow_func, "Int", id, "UChar", b)
}

TextSetShown(id, b)
{
	global TextSetShown_func
	return DllCall(TextSetShown_func, "Int", id, "UChar", b)
}

TextSetColor(id, color)
{
	global TextSetColor_func
	return DllCall(TextSetColor_func, "Int", id, "UInt", color)
}

TextSetPos(id, x, y)
{
	global TextSetPos_func
	return DllCall(TextSetPos_func, "Int", id, "Int", x, "Int", y)
}

TextSetString(id, str)
{
	global TextSetString_func
	return DllCall(TextSetString_func, "Int", id, "AStr", str)
}

TextUpdate(id, Font, FontSize, bBold, bItalic)
{
	global TextUpdate_func
	return DllCall(TextUpdate_func, "Int", id, "AStr", Font, "Int", FontSize, "UChar", bBold, "UChar", bItalic)
}

BoxCreate(x, y, w, h, dwColor, bShow)
{
	global BoxCreate_func
	return DllCall(BoxCreate_func, "Int", x, "Int", y, "Int", w, "Int", h, "UInt", dwColor, "UChar", bShow)
}

BoxDestroy(id)
{
	global BoxDestroy_func
	return DllCall(BoxDestroy_func, "Int", id)
}

BoxSetShown(id, bShown)
{
	global BoxSetShown_func
	return DllCall(BoxSetShown_func, "Int", id, "UChar", bShown)
}

BoxSetBorder(id, height, bShown)
{
	global BoxSetBorder_func
	return DllCall(BoxSetBorder_func, "Int", id, "Int", height, "UChar", bShown)
}

BoxSetBorderColor(id, dwColor)
{
	global BoxSetBorderColor_func
	return DllCall(BoxSetBorderColor_func, "Int", id, "UInt", dwColor)
}

BoxSetColor(id, dwColor)
{
	global BoxSetColor_func
	return DllCall(BoxSetColor_func, "Int", id, "UInt", dwColor)
}

BoxSetHeight(id, height)
{
	global BoxSetHeight_func
	return DllCall(BoxSetHeight_func, "Int", id, "Int", height)
}

BoxSetPos(id, x, y)
{
	global BoxSetPos_func
	return DllCall(BoxSetPos_func, "Int", id, "Int", x, "Int", y)
}

BoxSetWidth(id, width)
{
	global BoxSetWidth_func
	return DllCall(BoxSetWidth_func, "Int", id, "Int", width)
}

LineCreate(x1, y1, x2, y2, width, color, bShow)
{
	global LineCreate_func
	return DllCall(LineCreate_func, "Int", x1, "Int", y1, "Int", x2, "Int", y2, "Int", width, "UInt", color, "UChar", bShow)
}

LineDestroy(id)
{
	global LineDestroy_func
	return DllCall(LineDestroy_func, "Int", id)
}

LineSetShown(id, bShown)
{
	global LineSetShown_func
	return DllCall(LineSetShown_func, "Int", id, "UChar", bShown)
}

LineSetColor(id, color)
{
	global LineSetColor_func
	return DllCall(LineSetColor_func, "Int", id, "UInt", color)
}

LineSetWidth(id, width)
{
	global LineSetWidth_func
	return DllCall(LineSetWidth_func, "Int", id, "Int", width)
}

LineSetPos(id, x1, y1, x2, y2)
{
	global LineSetPos_func
	return DllCall(LineSetPos_func, "Int", id, "Int", x1, "Int", y1, "Int", x2, "Int", y2)
}

ImageCreate(path, x, y, rotation, align, bShow)
{
	global ImageCreate_func
	return DllCall(ImageCreate_func, "AStr", path, "Int", x, "Int", y, "Int", rotation, "Int", align, "UChar", bShow)
}

ImageDestroy(id)
{
	global ImageDestroy_func
	return DllCall(ImageDestroy_func, "Int", id)
}

ImageSetShown(id, bShown)
{
	global ImageSetShown_func
	return DllCall(ImageSetShown_func, "Int", id, "UChar", bShown)
}

ImageSetAlign(id, align)
{
	global ImageSetAlign_func
	return DllCall(ImageSetAlign_func, "Int", id, "Int", align)
}

ImageSetPos(id, x, y)
{
	global ImageSetPos_func
	return DllCall(ImageSetPos_func, "Int", id, "Int", x, "Int", y)
}

ImageSetRotation(id, rotation)
{
	global ImageSetRotation_func
	return DllCall(ImageSetRotation_func, "Int", id, "Int", rotation)
}

DestroyAllVisual()
{
	global DestroyAllVisual_func
	return DllCall(DestroyAllVisual_func)
}

ShowAllVisual()
{
	global ShowAllVisual_func
	return DllCall(ShowAllVisual_func)
}

HideAllVisual()
{
	global HideAllVisual_func
	return DllCall(HideAllVisual_func)
}

GetFrameRate()
{
	global GetFrameRate_func
	return DllCall(GetFrameRate_func)
}

GetScreenSpecs(ByRef width, ByRef height)
{
	global GetScreenSpecs_func
	return DllCall(GetScreenSpecs_func, "IntP", width, "IntP", height)
}

SetCalculationRatio(width, height)
{
	global SetCalculationRatio_func
	return DllCall(SetCalculationRatio_func, "Int", width, "Int", height)
}

SetOverlayPriority(id, priority)
{
	global SetOverlayPriority_func
	return DllCall(SetOverlayPriority_func, "Int", id, "Int", priority)
}

SetOverlayCalculationEnabled(id, enabled)
{
	global SetOverlayCalculationEnabled_func
	return DllCall(SetOverlayCalculationEnabled_func, "Int", id, "UChar", enabled)
}

GetServerIP(ByRef ip, max_len)
{
	global GetServerIP_func
	VarSetCapacity(ip, max_len * (A_IsUnicode ? 2 : 1), 0)
	res := DllCall(GetServerIP_func, "StrP", ip, "Int", max_len)
	; We need StrGet to convert the API answer (ANSI) to the charset AHK uses (ANSI or Unicode)
	ip := StrGet(&ip, "cp0")
	return res
}

GetServerPort()
{
	global GetServerPort_func
	return DllCall(GetServerPort_func)
}

SendChat(msg)
{
	global SendChat_func
	return DllCall(SendChat_func, "AStr", msg)
}

ShowGameText(msg, time, style)
{
	global ShowGameText_func
	return DllCall(ShowGameText_func, "AStr", msg, "Int", time, "Int", style)
}

AddChatMessage(msg)
{
	global AddChatMessage_func
	return DllCall(AddChatMessage_func, "AStr", msg)
}

ShowDialog(id, style, caption, text, button, button2)
{
	global ShowDialog_func
	return DllCall(ShowDialog_func, "Int", id, "Int", style, "AStr", caption, "AStr", text, "AStr", button, "AStr", button2)
}

GetPlayerNameByID(id, ByRef playername, max_len)
{
	global GetPlayerNameByID_func
	VarSetCapacity(playername, max_len * (A_IsUnicode ? 2 : 1), 0)
	res := DllCall(GetPlayerNameByID_func, "Int", id, "StrP", playername, "Int", max_len)
	; We need StrGet to convert the API answer (ANSI) to the charset AHK uses (ANSI or Unicode)
	playername := StrGet(&playername, "cp0")
	return res
}

GetPlayerIDByName(name)
{
	global GetPlayerIDByName_func
	return DllCall(GetPlayerIDByName_func, "AStr", name)
}

GetPlayerName(ByRef playername, max_len)
{
	global GetPlayerName_func
	VarSetCapacity(playername, max_len * (A_IsUnicode ? 2 : 1), 0)
	res := DllCall(GetPlayerName_func, "StrP", playername, "Int", max_len)
	; We need StrGet to convert the API answer (ANSI) to the charset AHK uses (ANSI or Unicode)
	playername := StrGet(&playername, "cp0")
	return res
}

GetPlayerId()
{
	global GetPlayerId_func
	return DllCall(GetPlayerId_func)
}

IsChatOpen()
{
	global IsChatOpen_func
	return DllCall(IsChatOpen_func)
}

IsDialogOpen()
{
	global IsDialogOpen_func
	return DllCall(IsDialogOpen_func)
}

GetVehiclePointer()
{
	global GetVehiclePointer_func
	return DllCall(GetVehiclePointer_func)
}

GetVehicleSpeed(factor)
{
	global GetVehicleSpeed_func
	return DllCall(GetVehicleSpeed_func, "Float", factor)
}

GetVehicleHealth()
{
	global GetVehicleHealth_func
	return DllCall(GetVehicleHealth_func, "Cdecl float")
}

GetVehicleModelId()
{
	global GetVehicleModelId_func
	return DllCall(GetVehicleModelId_func)
}

GetVehicleModelName(ByRef name, max_len)
{
	global GetVehicleModelName_func
	VarSetCapacity(name, max_len * (A_IsUnicode ? 2 : 1), 0)
	res := DllCall(GetVehicleModelName_func, "StrP", name, "Int", max_len)
	; We need StrGet to convert the API answer (ANSI) to the charset AHK uses (ANSI or Unicode)
	name := StrGet(&name, "cp0")
	return res
}

GetVehicleModelNameById(vehicleID, ByRef name, max_len)
{
	global GetVehicleModelNameById_func
	VarSetCapacity(name, max_len * (A_IsUnicode ? 2 : 1), 0)
	res := DllCall(GetVehicleModelNameById_func, "Int", vehicleID, "StrP", name, "Int", max_len)
	; We need StrGet to convert the API answer (ANSI) to the charset AHK uses (ANSI or Unicode)
	name := StrGet(&name, "cp0")
	return res
}

GetVehicleType()
{
	global GetVehicleType_func
	return DllCall(GetVehicleType_func)
}

GetVehicleFreeSeats(ByRef seatFL, ByRef seatFR, ByRef seatRL, ByRef seatRR)
{
	global GetVehicleFreeSeats_func
	return DllCall(GetVehicleFreeSeats_func, "IntP", seatFL, "IntP", seatFR, "IntP", seatRL, "IntP", seatRR)
}

GetVehicleFirstColor()
{
	global GetVehicleFirstColor_func
	return DllCall(GetVehicleFirstColor_func)
}

GetVehicleSecondColor()
{
	global GetVehicleSecondColor_func
	return DllCall(GetVehicleSecondColor_func)
}

GetVehicleColor(ByRef color1, ByRef color2)
{
	global GetVehicleColor_func
	return DllCall(GetVehicleColor_func, "IntP", color1, "IntP", color2)
}

IsVehicleSeatUsed(seat)
{
	global IsVehicleSeatUsed_func
	return DllCall(IsVehicleSeatUsed_func, "Int", seat)
}

IsVehicleLocked()
{
	global IsVehicleLocked_func
	return DllCall(IsVehicleLocked_func)
}

IsVehicleHornEnabled()
{
	global IsVehicleHornEnabled_func
	return DllCall(IsVehicleHornEnabled_func)
}

IsVehicleSirenEnabled()
{
	global IsVehicleSirenEnabled_func
	return DllCall(IsVehicleSirenEnabled_func)
}

IsVehicleAlternateSirenEnabled()
{
	global IsVehicleAlternateSirenEnabled_func
	return DllCall(IsVehicleAlternateSirenEnabled_func)
}

IsVehicleEngineEnabled()
{
	global IsVehicleEngineEnabled_func
	return DllCall(IsVehicleEngineEnabled_func)
}

IsVehicleLightEnabled()
{
	global IsVehicleLightEnabled_func
	return DllCall(IsVehicleLightEnabled_func)
}

IsVehicleCar()
{
	global IsVehicleCar_func
	return DllCall(IsVehicleCar_func)
}

IsVehiclePlane()
{
	global IsVehiclePlane_func
	return DllCall(IsVehiclePlane_func)
}

IsVehicleBoat()
{
	global IsVehicleBoat_func
	return DllCall(IsVehicleBoat_func)
}

IsVehicleTrain()
{
	global IsVehicleTrain_func
	return DllCall(IsVehicleTrain_func)
}

IsVehicleBike()
{
	global IsVehicleBike_func
	return DllCall(IsVehicleBike_func)
}

HasWeaponIDClip(weaponID)
{
	global HasWeaponIDClip_func
	return DllCall(HasWeaponIDClip_func, "Int", weaponID)
}

GetPlayerWeaponID()
{
	global GetPlayerWeaponID_func
	return DllCall(GetPlayerWeaponID_func)
}

GetPlayerWeaponType()
{
	global GetPlayerWeaponType_func
	return DllCall(GetPlayerWeaponType_func)
}

GetPlayerWeaponSlot()
{
	global GetPlayerWeaponSlot_func
	return DllCall(GetPlayerWeaponSlot_func)
}

GetPlayerWeaponName(dwWeapSlot, ByRef _szWeapName, max_len)
{
	global GetPlayerWeaponName_func
	VarSetCapacity(_szWeapName, max_len * (A_IsUnicode ? 2 : 1), 0)
	res := DllCall(GetPlayerWeaponName_func, "Int", dwWeapSlot, "StrP", _szWeapName, "Int", max_len)
	; We need StrGet to convert the API answer (ANSI) to the charset AHK uses (ANSI or Unicode)
	_szWeapName := StrGet(&_szWeapName, "cp0")
	return res
}

GetPlayerWeaponClip(dwWeapSlot)
{
	global GetPlayerWeaponClip_func
	return DllCall(GetPlayerWeaponClip_func, "Int", dwWeapSlot)
}

GetPlayerWeaponTotalClip(dwWeapSlot)
{
	global GetPlayerWeaponTotalClip_func
	return DllCall(GetPlayerWeaponTotalClip_func, "Int", dwWeapSlot)
}

GetPlayerWeaponState()
{
	global GetPlayerWeaponState_func
	return DllCall(GetPlayerWeaponState_func)
}

GetPlayerWeaponAmmo(weaponType)
{
	global GetPlayerWeaponAmmo_func
	return DllCall(GetPlayerWeaponAmmo_func, "Int", weaponType)
}

GetPlayerWeaponAmmoInClip(weaponType)
{
	global GetPlayerWeaponAmmoInClip_func
	return DllCall(GetPlayerWeaponAmmoInClip_func, "Int", weaponType)
}


PathCombine(abs, rel) {
	VarSetCapacity(dest, (A_IsUnicode ? 2 : 1) * 260, 1) ; MAX_PATH
	DllCall("Shlwapi.dll\PathCombine", "UInt", &dest, "UInt", &abs, "UInt", &rel)
	Return, dest
}

OnPlayerEnterVehicle(){
	Sleep, 100
	if(IsPlayerDriver() == 1 && IsVehicleLocked() == 0){
		SendChat("/flock")
	}
	if(IsPlayerDriver() == 1 && IsVehicleEngineEnabled() == 0){
		SendChat("/motor")
	}
	if(IsPlayerDriver() == 1 && IsVehicleLightEnabled() == 0){
		SendChat("/licht")
	}
	if(IsPlayerDriver() == 1 && getVehicleType() == 9){
		SendChat("/helm")
		helm := true
	}
}

OnPlayerExitVehicle(){
	if(IsPlayerDriver() == 1 && IsVehicleEngineEnabled() == 1){
		SendChat("/motor")
	}
	if(IsPlayerDriver() == 1 && IsVehicleLightEnabled() == 1){
		SendChat("/licht")
	}
	if(IsPlayerDriver() == 1 && IsVehicleLocked() == 1){
		SendChat("/flock")
	}
	if(IsPlayerDriver() == 1 && getVehicleType() == 9){
		SendChat("/helm")
		helm := false
	}
}

KMSG(myText){
	return AddChatMessage("{58FA82}[Keybinder]{FBEFEF} " myText)
}

GetChatLine(Line, ByRef Output, timestamp=0, color=0){
	chatindex := 0
	FileRead, file, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
	loop, Parse, file, `n, `r
	{
		if(A_LoopField)
	chatindex := A_Index
	}
	loop, Parse, file, `n, `r
	{
		if(A_Index = chatindex - line){
			output := A_LoopField
			break
		}
	}
	file := ""
	if(!timestamp)
		output := RegExReplace(output, "U)^\[\d{2}:\d{2}:\d{2}\]")
	if(!color)
		output := RegExReplace(output, "Ui)\{[a-f0-9]{6}\}")
	return
}

PlayerInput(text){
	s := A_IsSuspended
	Suspend On
	KeyWait Enter
	SendInput t^a{backspace}%text%
	Input, var, v, {enter}
	SendInput ^a{backspace 100}{enter}
	Sleep, 20
	if(!s)
	Suspend Off
	return var
}

SendBind(i){
	IniRead, myKills, %A_AppData%\Keybinder\LyD_Keybinder\config\Settings.ini, KillCounter, Anzahl
	IniRead, myDeaths, %A_AppData%\Keybinder\LyD_Keybinder\config\Settings.ini, DeathCounter, Anzahl
	ID := getPlayerID()
	VehType := getVehicleType()
	getZoneName(Zone, 65)
	getCityName(City, 65)
	getPlayerName(Name, 65)
	StringReplace, i, i, [ID], %ID%, All
	StringReplace, i, i, [VehType], %VehType%, All
	StringReplace, i, i, [Zone], %Zone%, All
	StringReplace, i, i, [City], %City%, All
	StringReplace, i, i, [Name], %Name%, All
	StringReplace, i, i, [Kills], %myKills%, All
	StringReplace, i, i, [Deaths], %myDeaths%, All
	return SendChat(i)
}

/*!
* Improv3d MySQL/PHP API v0.3.2.2
* http://api.improv3d.de/
*/

;Der Pfad der improv3d.php auf ihrem Server
global imp_server := "http://kabby.cf/OAMT_Keybinder/improv3d.php"

;Pin zur Verschlüsselung der Verbindung
global imp_pin := 0

;-------------------------------------------------------------------------------------------

imp_read(table, a, b) {
	query := imp_server "?action=read&table=" table "&a=" a "&b=" b imp_secure()
	return imp_query(query)
}

imp_read_where(table, a, b, c) {
	query := imp_server "?action=read_where&table=" table "&where=" a "&is=" b "&column=" c imp_secure()
	return imp_query(query)
	
}

imp_read_where_not(table, a, b, c) {
	query := imp_server "?action=read_where_not&table=" table "&where=" a "&is=" b "&column=" c imp_secure()
	return imp_query(query)
}

imp_read_where_greater(table, a, b, c) {
	query := imp_server "?action=read_where_greater&table=" table "&where=" a "&is=" b "&column=" c imp_secure()
	return imp_query(query)
}

imp_read_where_less(table, a, b, c) {
	query := imp_server "?action=read_where_less&table=" table "&where=" a "&is=" b "&column=" c imp_secure()
	return imp_query(query)
}

imp_write(table, a, b, c) {
	query := imp_server "?action=write&table=" table "&a=" a "&b=" b "&c=" c imp_secure()
	return imp_query(query)
}

imp_compare(table, a, b, c) {
	query := imp_server "?action=compare&table=" table "&a=" a "&b=" b "&c=" c imp_secure()
	return imp_query(query)
}

imp_create_row(table, a) {
	query := imp_server "?action=create_row&table=" table "&a=" a imp_secure()
	return imp_query(query)
}

imp_delete_row(table, a) {
	query := imp_server "?action=delete_row&table=" table "&row=" a imp_secure()
	return imp_query(query)
}

imp_create_table(table, a) {
	query := imp_server "?action=create_table&name=" table "&columns=" a imp_secure()
	return imp_query(query)
}

imp_delete_table(table) {
	query := imp_server "?action=delete_table&name=" table imp_secure()
	return imp_query(query)
}

imp_list_columns(table) {
	query := imp_server "?action=list_columns&table=" table imp_secure()
	return imp_query(query)
}

imp_list_rows(table) {
	query := imp_server "?action=list_rows&table=" table imp_secure()
	return imp_query(query)
}

imp_add_column(table, a) {
	query := imp_server "?action=add_column&table=" table "&column=" a imp_secure()
	return imp_query(query)
}

imp_delete_column(table, a) {
	query := imp_server "?action=delete_column&table=" table "&column=" a imp_secure()
	return imp_query(query)
}

imp_rename_column(table, a, b) {
	query := imp_server "?action=rename_column&table=" table "&column=" a "&newname=" b imp_secure()
	return imp_query(query)
}

imp_row_exist(table, a) {
	query := imp_server "?action=row_exist&table=" table "&row=" a imp_secure()
	return imp_query(query)
}

imp_exec(a) {
	query := imp_server "?action=exec&query=" a imp_secure()
	return imp_query(query)
}

imp_hash(a, b = "md5") {
	query := imp_server "?action=hash&str=" a "&algo=" b imp_secure()
	return imp_query(query)
}

imp_mail(a, c, b = "E-Mail") {
	query := imp_server "?action=mail&to=" a "&subject=" b "&message=" c imp_secure()
	return imp_query(query)
}

imp_table_exist(table) {
	query := imp_server "?action=table_exist&name=" table imp_secure()
	return imp_query(query)
	
}

imp_count_rows(table) {
	query := imp_server "?action=count_rows&table=" table imp_secure()
	return imp_query(query)
	
}

imp_get_row(table, a) {
	query := imp_server "?table=" table "&action=get_row&row=" a imp_secure()
	return imp_query(query)
}

imp_set_column(table, a, b, c) {
	query := imp_server "?table=" table "&action=set_column&column=" a "&type=" b "&len=" c imp_secure()
	return imp_query(query)
}


imp_check_table(table) {
	query := imp_server "?table=" table "&action=check_table" imp_secure()
	return imp_query(query)
}

imp_file_write(file, content = "", mode = "end") {
	query := imp_server "?action=file_write&file=" file "&content=" content "&mode=" mode imp_secure()
	return imp_query(query)
}

imp_file_read(file) {
	query := imp_server "?action=file_read&file=" file imp_secure()
	return imp_query(query)
}

imp_file_delete(file) {
	query := imp_server "?action=file_delete&file=" file imp_secure()
	return imp_query(query)
}

imp_file_rename(file, name) {
	query := imp_server "?action=file_rename&file=" file "&name=" name imp_secure()
	return imp_query(query)
}

imp_file_exists(file) {
	query := imp_server "?action=file_exists&file=" file imp_secure()
	return imp_query(query)
}

imp_file_copy(file, dest) {
	query := imp_server "?action=file_copy&file=" file "&dest=" dest imp_secure()
	return imp_query(query)
}

imp_file_size(file, unit = "b") {
	query := imp_server "?action=file_get_size&file=" file "&unit=" unit imp_secure()
	return imp_query(query)
}

imp_query(a) {
	urlDownloadToFile, %a%, %A_Temp%/response.tmp
	FileRead, response, %A_Temp%/response.tmp
	FileDelete, %A_Temp%/response.tmp
	if(response) {
		regex = <!--imp_return="(.*)"-->
		response := RegExMatch(response, regex, match)
		return match1
	}	
	else
		return 0
}

imp_secure() {
	if(imp_pin > 0)
		return "&key=" round(A_Hour * imp_pin, 4)
}