/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

TEAM_ZCRGA_ARCADEOWNER = DarkRP.createJob("Arcade Owner", {
    color = Color(225, 75, 75, 255),
    model = {"models/player/group03/male_04.mdl"},
    description = [[You make money using Arcade Machines.]],
    weapons = {},
    command = "zcrga_arcadeowner",
    max = 2,
    salary = 0,
    admin = 0,
    vote = false,
    category = "Citizens",
    hasLicense = false,
})
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988009

DarkRP.createCategory{
    name = "Arcade Owner",
    categorises = "entities",
    startExpanded = true,
    color = Color(255, 107, 0, 255),
    canSee = function(ply) return true end,
    sortOrder = 104
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- ac2dd94e2e8be9f30e74fa060ef402dbf94020000986fa93f0e512faf91942ab
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- c7366de8d60cdeb6b5adf16076095a94d4b0917d6f44e4c13484fe20b6688ab6

DarkRP.createEntity("CoinPusher", {
    ent = "zcrga_machine",
    model = "models/zerochain/props_arcade/zap_coinpusher.mdl",
    price = 5000,
    max = 1,
    cmd = "buyzcrga_machine",
    allowed = {TEAM_ZCRGA_ARCADEOWNER},
    category = "Arcade Owner"
})
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016
