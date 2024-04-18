

ChooseInsta(){
    allTowers := [
        "dart","boomer","bomb","tack","ice","glue",
        "sniper","sub","boat","ace","heli","mortar","dartling",
        "wizard","super","ninja","alch","druid",
        "spike","village","engineer","beast", "farm"
    ]
    Sleep(10000)
    for preference in instaPreferences{
        if (ArrayHas(allTowers, preference)){
            if ClickImage("towers\" preference){
                LogMsg("Selected " preference)
                return
            }
        } else {
            break
        }
    }
    LogMsg("Selected random")
}

ArrayHas(testArray, val){
    for member in testArray{
        if (member = val){
            return true
        }
    }
    return false
}

