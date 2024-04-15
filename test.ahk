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
    counter := 0
    while(ClickImage("towers\" "ace") != true){
        ++counter
        Sleep(1000)
    }
}

