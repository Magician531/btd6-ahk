#SingleInstance Force
#MaxThreadsPerHotkey 3
#Include %A_ScriptDir%

#Include maps\_include.ahk
#Include utils\_include.ahk
#Include data\_include.ahk

^!+j:: {
    TestHeroSelection()
}

^!+p:: {

    Reload()
}

TestHeroSelection() {
    if ImageSearch(&xCoord, &yCoord, 1584, 468, 1920, 1080, "*" 120 " *TransBlack " A_ScriptDir "\img\instaCount\5.png") {
        click(xCoord, yCoord)
    }
}


