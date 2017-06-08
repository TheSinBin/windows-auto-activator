#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseUpx=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

FileInstall("Re-LoaderByR@1n.exe", "Re-LoaderByR@1n.exe")

Global $onay = MsgBox(4, "TheSinBin Aktivasyon Aracı", "Aktivasyon İşleminin Otomatik Olarak Yapılmasını İstiyormusunuz", 3, 0)
Global $sayac = "0"

Select
	Case $onay = 6
		;YES
		$sayac = "1"
	Case $onay = 7
		;NO
		$sayac = "2"
EndSelect

If $sayac = "2" Then
	_iptal()
ElseIf $sayac = "1" Then
	_kur()
ElseIf $sayac = "0" Then
	_kur()
EndIf

Func _kur()
	;TimeOut
	ShellExecuteWait("Re-LoaderByR@1n.exe", "/ActAuto")
	FileDelete("Re-LoaderByR@1n.exe")
	FileDelete(@DesktopCommonDir&"\R@1n.txt")
	MsgBox(0, "TheSinBin Aktivasyon Aracı", "Aktivasyon İşlemi Tamamlandı", 2)
	$sayac = "1"
EndFunc   ;==>_kur

Func _iptal()
	FileDelete("Re-LoaderByR@1n.exe")
	MsgBox(0, "TheSinBin Aktivasyon Aracı", "Aktivasyon İşlemi İptal Edildi", 1)
EndFunc   ;==>_iptal
