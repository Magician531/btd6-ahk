towers := Map(
    "hero", "{vk55}",
    "dart", "{vk51}",
    "tack", "{vk52}",
    "sniper", "{vk5A}",
    "sub", "{vk58}",
    "boat", "{vk43}",
    "ace", "{vk56}",
    "wizard", "{vk41}",
    "ninja", "{vk44}",
    "alch", "{vk46}",
    "spike", "{vk4A}"
)

Place(tower, x, y) {
    Send(towers[tower])
    Sleep(100)
    MouseMove(x,y)
    Sleep(100)
    Click(x,y)
    Sleep(100)
}

Targeting(x, y, tabCount) {
    Click(x,y)          ; Open Tower
    Sleep(100)
    Loop tabCount {
        Send("{vk09}")
    }
    Click(x,y)          ; Close Tower
    Sleep(100)
}

Upgrade(x, y, topCount, middleCount, bottomCount) {
    Click(x,y)          ; Open Tower
    Sleep(100)
    Loop topCount {
        UpgradeTop()
    }
    Loop middleCount {
        UpgradeMiddle()
    }
    Loop bottomCount {
        UpgradeBottom()
    }
    Click(x,y)          ; Close Tower
    Sleep(100)
}

UpgradeTop() {
    Send("{vkBC}")
    Sleep(100)
}

UpgradeMiddle() {
    Send("{vkBE}")
    Sleep(100)
}

UpgradeBottom() {
    Send("{sc035}")
    Sleep(100)
}
