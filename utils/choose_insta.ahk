towerChoice := 4

ChooseInsta(){
    allTowers := [
        "dart","boomer","bomb","tack","ice","glue",
        "sniper","sub","boat","ace","heli","mortar","dartling",
        "wizard","super","ninja","alch","druid",
        "spike","village","engineer","beast"
    ]
    towerChoice := 4
    for preference in instaPreferences{
        if allTowers.Has(preference){
            if ClickInsta(preference){
                break
            }
        } else {
            break
        }
    }
    ClickInsta()
}

ClickInsta(preference){
    
}

