/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include("shared.lua")

function ENT:SpawnFunction(ply, tr)
	if (not tr.Hit) then return end
	local SpawnPos = tr.HitPos + tr.HitNormal * 1
	local ent = ents.Create(self.ClassName)
	local angle = ply:GetAimVector():Angle()
	angle = Angle(0, angle.yaw, 0)
	angle:RotateAroundAxis(angle:Up(), 0)
	ent:SetAngles(angle)
	ent:SetPos(SpawnPos)
	ent:Spawn()
	ent:Activate()

	return ent
end

function ENT:Initialize()
	self:SetModel(self.Model)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetUseType(SIMPLE_USE)
	local phys = self:GetPhysicsObject()

	if (phys:IsValid()) then
		phys:Wake()
		phys:EnableMotion(false)
	end

	self:UseClientSideAnimation()
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988009

	zcrga.f.Machine_Initialize(self)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- ac2dd94e2e8be9f30e74fa060ef402dbf94020000986fa93f0e512faf91942ab
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988009
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- b4d111bd2d917d0b32660c0b2d59a0bfc7f6ab5c8b2782742f5148913baf0c52

function ENT:Use(ply, caller)
	zcrga.f.Machine_USE(self,ply)
end
