

ChooseInsta(){
    allTowers := [
        "dart","boomer","bomb","tack","ice","glue",
        "sniper","sub","boat","ace","heli","mortar","dartling",
        "wizard","super","ninja","alch","druid",
        "spike","village","engineer","beast"
    ]

    for preference in instaPreferences{
        if allTowers.Has(preference){
            if ClickInsta(preference){
                LogMsg("Selected " preference)
                return
            }
        } else {
            break
        }
    }
    LogMsg("Selected random")
}

ClickInsta(preference){
    if ClickImage("towers\" preference, , , 1105, 284, 1194, 374){
        return true
    } else if (ClickImage("towers\" preference, , , 1105, 374, 1194, 453)){
        return true
    } else if (ClickImage("towers\" preference, , , 1212, 284, 1288, 374)){
        return true
    } else if ClickImage("towers\" preference, , , 1212, 374, 1288, 453){
        return true
    } else{
        return false
    }
}

