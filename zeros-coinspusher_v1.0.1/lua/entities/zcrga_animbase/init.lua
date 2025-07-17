/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

------------------------------//
function ENT:SpawnFunction(ply, tr)
	if (not tr.Hit) then return end
	local SpawnPos = tr.HitPos + tr.HitNormal * 1
	local ent = ents.Create(self.ClassName)
	local angle = ply:GetAimVector():Angle()
	angle = Angle(0, angle.yaw, 0)
	angle:RotateAroundAxis(angle:Up(), 180)
	ent:SetAngles(angle)
	ent:SetPos(SpawnPos)
	ent:Spawn()
	ent:Activate()
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- c7366de8d60cdeb6b5adf16076095a94d4b0917d6f44e4c13484fe20b6688ab6

	return ent
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- ac2dd94e2e8be9f30e74fa060ef402dbf94020000986fa93f0e512faf91942ab
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 2a2c71c075741758c8db51ece82715fd961299aab437af26ac6afe2665acf9f9
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 2a2c71c075741758c8db51ece82715fd961299aab437af26ac6afe2665acf9f9

function ENT:Initialize()
	--self:SetModel(self.Model)
	self:PhysicsInit(SOLID_NONE)
	self:SetMoveType(SOLID_NONE)
	self:SetSolid(SOLID_NONE)
	self:UseClientSideAnimation()
end
