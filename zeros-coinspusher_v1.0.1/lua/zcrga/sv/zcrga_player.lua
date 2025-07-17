/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

if (not SERVER) then return end
zcrga = zcrga or {}
zcrga.f = zcrga.f or {}

// How often are clients allowed to send net messages to the server
zcrga_NW_TIMEOUT = 0.25
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- b4d111bd2d917d0b32660c0b2d59a0bfc7f6ab5c8b2782742f5148913baf0c52
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- e5b57696689da578c8432bb3542d7788ee093cf686edea1c7e2de2467fc996d8

function zcrga.f.NW_Player_Timeout(ply)
    local Timeout = false

    if ply.zcrga_NWTimeout and ply.zcrga_NWTimeout > CurTime() then
        Timeout = true
    end

    ply.zcrga_NWTimeout = CurTime() + zcrga_NW_TIMEOUT

    return Timeout
end

if zcrga_PlayerList == nil then
    zcrga_PlayerList = {}
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- b4d111bd2d917d0b32660c0b2d59a0bfc7f6ab5c8b2782742f5148913baf0c52

function zcrga.f.Add_Player(ply)
    table.insert(zcrga_PlayerList, ply)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- b4d111bd2d917d0b32660c0b2d59a0bfc7f6ab5c8b2782742f5148913baf0c52

hook.Add("PlayerInitialSpawn", "zcrga_PlayerInitialSpawn", function(ply)
    timer.Simple(1, function()
        zcrga.f.Add_Player(ply)
    end)
end)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 2a2c71c075741758c8db51ece82715fd961299aab437af26ac6afe2665acf9f9
