/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

include("shared.lua")

function ENT:Draw_Info()
	if (IsValid(self)) then
		local attach = self:GetAttachment(1)

		if (attach) then
			local Pos = attach.Pos
			local Ang = attach.Ang
			local moneycount = zcrga.config.Currency .. tostring(math.Round(self:GetMoneyCount()))
			cam.Start3D2D(Pos, Ang, 0.1)
				draw.SimpleText(moneycount, "zcrga_coinpusher_moneycount", 0, 0, Color(100, 255, 0, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			cam.End3D2D()

			if table.Count(zcrga.config.OwnerJobs) > 0 and table.HasValue(zcrga.config.OwnerJobs, team.GetName(LocalPlayer():Team())) then
				cam.Start3D2D(self:LocalToWorld(Vector(20, -30, 74)), self:LocalToWorldAngles(Angle(0, 0, 90)), 0.1)
					if self:AddMoneyButton(LocalPlayer()) then

						draw.RoundedBox(5, -80 , -20, 160, 40,Color(125,200,125))
					else
						draw.RoundedBox(5, -80 , -20, 160, 40,Color(125,125,125))
					end
					draw.SimpleText("+ " .. zcrga.config.Currency .. zcrga.config.TransferAmount, "zcrga_coinpusher_button", 0, 0, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- e5b57696689da578c8432bb3542d7788ee093cf686edea1c7e2de2467fc996d8


					if self:RemoveMoneyButton(LocalPlayer()) then
						draw.RoundedBox(5, -80 , 30, 160, 40,Color(200,125,125))
					else
						draw.RoundedBox(5, -80 , 30, 160, 40,Color(125,125,125))
					end
					draw.SimpleText("- " .. zcrga.config.Currency .. zcrga.config.TransferAmount, "zcrga_coinpusher_button", 0, 50, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)


				cam.End3D2D()
			end
		end
	end
end

function ENT:Draw()
	self:DrawModel()

	if zcrga.f.InDistance(self:GetPos(), LocalPlayer():GetPos(), 300) then
		self:Draw_Info()
		self:MachineLight01()
		//self:MachineLight02()
	end
end

function ENT:MachineLight02()
	local dlight01 = DynamicLight(self:EntIndex())
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988009
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- e5b57696689da578c8432bb3542d7788ee093cf686edea1c7e2de2467fc996d8

	if (dlight01) then
		local pos = self:GetPos() + self:GetUp() * 65 + self:GetForward() * 10
		dlight01.pos = pos
		dlight01.r = 255
		dlight01.g = 100
		dlight01.b = 0
		dlight01.brightness = 1
		dlight01.Decay = 1000
		dlight01.Size = 256
		dlight01.DieTime = CurTime() + 1
	end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- c7366de8d60cdeb6b5adf16076095a94d4b0917d6f44e4c13484fe20b6688ab6

function ENT:MachineLight01()
	local dlight01 = DynamicLight(self:EntIndex())

	if (dlight01) then
		local pos = self:GetPos() + self:GetUp() * 60 + self:GetForward() * -15
		dlight01.pos = pos
		dlight01.r = 255
		dlight01.g = 175
		dlight01.b = 255
		dlight01.brightness = 1
		dlight01.Decay = 1000
		dlight01.Size = 256
		dlight01.DieTime = CurTime() + 1
	end
end

function ENT:DrawTranslucent()
	self:Draw()
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016

function ENT:Initialize()
	if (zcrga.config.NoMusic == false) then
		self:PlayMachineMusic()
	end
end

function ENT:PlayMachineMusic()
	sound.PlayFile("sound/zap/coinpusher/arcade_game_8bit_style.mp3", "3d", function(station)
		if (IsValid(station)) then
			self.bonusSound = station
			self.bonusSound:SetPos(self:GetPos() + self:GetUp() * 5 + self:GetForward() * -15)
			self.bonusSound:Set3DFadeDistance(100, 500)
			self.bonusSound:SetVolume(0.2)
			self.bonusSound:EnableLooping(true)
			station:Play()
		end
	end)
end

function ENT:Think()
	self:SetNextClientThink(CurTime())

	if self.bonusSound ~= nil && IsValid(self.bonusSound) then
		self.bonusSound:SetPos(self:GetPos() + self:GetUp() * 10 + self:GetForward() * -45)
	end

	return true
end

function ENT:OnRemove()
	if self.bonusSound ~= nil && IsValid(self.bonusSound) then
		self.bonusSound:Stop()
	end
end
