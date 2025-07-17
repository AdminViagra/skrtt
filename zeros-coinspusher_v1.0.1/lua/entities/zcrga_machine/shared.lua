/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.RenderGroup = RENDERGROUP_OPAQUE
ENT.Spawnable = true
ENT.AdminSpawnable = false
ENT.PrintName = "CoinPusher"
ENT.Author = "ClemensProduction aka Zerochain"
ENT.Information = "info"
ENT.Category = "Zeros ArcadePack"
ENT.Model = "models/zerochain/props_arcade/zap_coinpusher.mdl"
ENT.AutomaticFrameAdvance = true
ENT.DisableDuplicator = false
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- e5b57696689da578c8432bb3542d7788ee093cf686edea1c7e2de2467fc996d8

function ENT:SetupDataTables()
	self:NetworkVar("Float", 0, "MoneyCount")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- ac2dd94e2e8be9f30e74fa060ef402dbf94020000986fa93f0e512faf91942ab

	if (SERVER) then
		self:SetMoneyCount(0)
	end
end

function ENT:AddMoneyButton(ply)
	local trace = ply:GetEyeTrace()
	local lp = self:WorldToLocal(trace.HitPos)

	if lp.x > 12 and lp.x < 28 and lp.y < -28 and lp.y > -30 and lp.z > 71.78 and lp.z < 76 then
		return true
	else
		return false
	end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988009

function ENT:RemoveMoneyButton(ply)
	local trace = ply:GetEyeTrace()
	local lp = self:WorldToLocal(trace.HitPos)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- c7366de8d60cdeb6b5adf16076095a94d4b0917d6f44e4c13484fe20b6688ab6

	if lp.x > 12 and lp.x < 28 and lp.y < -28 and lp.y > -30 and lp.z > 66.78 and lp.z < 71 then
		return true
	else
		return false
	end
end
