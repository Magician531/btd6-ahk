

ChooseInsta(){
    allTowers := [
        "dart","boomer","bomb","tack","ice","glue",
        "sniper","sub","boat","ace","heli","mortar","dartling",
        "wizard","super","ninja","alch","druid","mermonkey",
        "spike","village","engineer","beast", "farm"
    ]
    for preference in instaPreferences{
        if (ArrayHas(allTowers, preference)){
            if SearchInsta(preference){
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

