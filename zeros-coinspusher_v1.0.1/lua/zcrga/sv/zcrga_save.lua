/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

if (not SERVER) then return end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- ac2dd94e2e8be9f30e74fa060ef402dbf94020000986fa93f0e512faf91942ab

function zcrga_PublicEnts_Save(ply)
	local data = {}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- e5b57696689da578c8432bb3542d7788ee093cf686edea1c7e2de2467fc996d8

	if not file.Exists("zcrga", "DATA") then
		file.CreateDir("zcrga")
	end

	for u, j in pairs(ents.FindByClass("zcrga_machine")) do
		table.insert(data, {
			class = j:GetClass(),
			pos = j:GetPos(),
			ang = j:GetAngles()
		})
	end

	file.Write("zcrga/" .. string.lower(game.GetMap()) .. "_PublicEnts" .. ".txt", util.TableToJSON(data))

	if (IsValid(ply)) then
		zcrga.f.Notify(ply, "The CoinPusher Entities have been saved for the map " .. string.lower(game.GetMap()) .. "!", 0)
	end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 2a2c71c075741758c8db51ece82715fd961299aab437af26ac6afe2665acf9f9



function zcrga_PublicEnts_Load()
	local path = "zcrga/" .. string.lower(game.GetMap()) .. "_PublicEnts" .. ".txt"

	if file.Exists(path, "DATA") then
		local data = file.Read(path, "DATA")
		data = util.JSONToTable(data)

		for k, v in pairs(data) do
			local ent = ents.Create(v.class)
			ent:SetPos(v.pos)
			ent:SetAngles(v.ang)
			ent:Spawn()
		end

		print("[Zeros CoinPusher] Finished loading CoinPusher entities.")
	else
		print("[Zeros CoinPusher] No map data found for CoinPusher entities.")
	end
end

hook.Add( "InitPostEntity", "zcrga_PublicEnts_OnMapLoad", zcrga_PublicEnts_Load)
hook.Add("PostCleanupMap", "zcrga_PublicEnts_PostCleanUp", zcrga_PublicEnts_Load)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 2a2c71c075741758c8db51ece82715fd961299aab437af26ac6afe2665acf9f9
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 2a2c71c075741758c8db51ece82715fd961299aab437af26ac6afe2665acf9f9

concommand.Add("zcrga_savepublicentities", function(ply, cmd, args)
	if zcrga.f.IsAdmin(ply) then
		zcrga_PublicEnts_Save(ply)
	else
		zcrga.f.Notify(ply, "You do not have permission to perform this action, please contact an admin.", 1)
	end
end)

hook.Add("PlayerSay", "zcrga_HandleConCanCommands", function(ply, text)
	if string.sub(string.lower(text), 1, 15) == "!savecoinpusher" then
		if zcrga.f.IsAdmin(ply) then
			zcrga_PublicEnts_Save(ply)
		else
			zcrga.f.Notify(ply, "You do not have permission to perform this action, please contact an admin.", 1)
		end
	end
end)
