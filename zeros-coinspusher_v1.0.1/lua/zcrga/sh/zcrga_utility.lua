/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

zcrga = zcrga or {}
zcrga.f = zcrga.f or {}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988009
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- e5b57696689da578c8432bb3542d7788ee093cf686edea1c7e2de2467fc996d8

                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- b4d111bd2d917d0b32660c0b2d59a0bfc7f6ab5c8b2782742f5148913baf0c52

if SERVER then
	function zcrga.f.Notify(ply, msg, ntfType)
		if gmod.GetGamemode().Name == "DarkRP" then
			DarkRP.notify(ply, ntfType, 8, msg)
		else
			ply:ChatPrint(msg)
		end
	end
end

function zcrga.f.LerpColor(t, c1, c2)
	local c3 = Color(0, 0, 0)
	c3.r = Lerp(t, c1.r, c2.r)
	c3.g = Lerp(t, c1.g, c2.g)
	c3.b = Lerp(t, c1.b, c2.b)
	c3.a = Lerp(t, c1.a, c2.a)

	return c3
end

//Used to fix the Duplication Glitch
function zcrga.f.CollisionCooldown(ent)
	if ent.zcrga_CollisionCooldown == nil then
		ent.zcrga_CollisionCooldown = true

		timer.Simple(0.1,function()
			if IsValid(ent) then
				ent.zcrga_CollisionCooldown = false
			end
		end)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016

		return false
	else
		if ent.zcrga_CollisionCooldown then
			return true
		else
			ent.zcrga_CollisionCooldown = true

			timer.Simple(0.1,function()
				if IsValid(ent) then
					ent.zcrga_CollisionCooldown = false
				end
			end)
			return false
		end
	end
end


function zcrga.f.InDistance(pos01, pos02, dist)
	local inDistance = pos01:DistToSqr(pos02) < (dist * dist)
	return  inDistance
end

// This returns true if the player is a admin
function zcrga.f.IsAdmin(ply)
	if IsValid(ply) and ply:IsPlayer() then
		//xAdmin Support
		if xAdmin then
			return ply:IsAdmin()
		else
			if table.HasValue(zcrga.config.allowedRanks,ply:GetUserGroup()) then
				return true
			else
				return false
			end
		end
	else
		return false
	end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016
