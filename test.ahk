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
    counterTolerance := 0
    counterImag := 0
    loop 11{
        counterTolerance := 0
        loop 120{
            if ImageSearch(&xCoord, &yCoord, 0, 0, 1920, 1080, "*" counterTolerance " *TransBlack " A_ScriptDir "\img\towers\SuperTest\" counterImag ".png") {
                LogMsg("Found with tolerance " counterTolerance "and insta " counterImag)
                click(xCoord, yCoord)
            }
            click(1920/2, 1080/2)
            ++counterTolerance
        }
        ++counterImag
    }
}

