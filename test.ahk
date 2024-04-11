

^!+j:: {
    TestHeroSelection()
}

^!+p:: {
    LogMsg("Script stopped")
    Reload()
}

TestHeroSelection() {
    test := IniRead("config.ini", "settings")
    LogMsg(test)
}
