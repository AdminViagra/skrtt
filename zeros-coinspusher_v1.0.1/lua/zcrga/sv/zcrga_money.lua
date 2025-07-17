/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

if not SERVER then return end
zcrga = zcrga or {}
zcrga.f = zcrga.f or {}

function zcrga.f.MoneyPay(ply)
	if (not IsValid(ply) or not ply:IsPlayer()) then return false end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 2a2c71c075741758c8db51ece82715fd961299aab437af26ac6afe2665acf9f9
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- b4d111bd2d917d0b32660c0b2d59a0bfc7f6ab5c8b2782742f5148913baf0c52

	local ply_canAfford = zcrga.f.Money_CanAfford(ply,zcrga.config.PlayPrice)

	if ply_canAfford then
		zcrga.f.Money_Take(ply, zcrga.config.PlayPrice)
	else
		zcrga.f.Notify(ply, "You cant afford this!", 1)
	end

	return ply_canAfford
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016

function zcrga.f.MoneySend(ply, money)
	if (not IsValid(ply) or not ply:IsPlayer()) then return end
	local aMoney = math.Round(money)

	if (zcrga.config.MoneyType == "DarkRP") then
		ply:addMoney(aMoney)
		zcrga.f.Notify(ply, "You Won " .. aMoney .. zcrga.config.Currency .. "!", 0)
	elseif (zcrga.config.MoneyType == "BaseWars") then
		ply:GiveMoney(aMoney)
		zcrga.f.Notify(ply, "You Won " .. aMoney .. zcrga.config.Currency .. "!", 0)
	elseif (zcrga.config.MoneyType == "PointShop01") then
		ply:PS_GivePoints(aMoney)
		zcrga.f.Notify(ply, "You Won " .. tostring(aMoney) .. "Points!", 0)
	elseif (zcrga.config.MoneyType == "PointShop02") then
		ply:PS2_AddStandardPoints(aMoney, "CoinPusher Prize", true)
		zcrga.f.Notify(ply, "You Won " .. tostring(aMoney) .. "Points!", 0)
	end
end



                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016

function zcrga.f.Money_CanAfford(ply,money)
	local ply_canAfford = false

	if (zcrga.config.MoneyType == "DarkRP") then
		if (ply:canAfford(money)) then
			ply_canAfford = true
		end
	elseif (zcrga.config.MoneyType == "BaseWars") then
		if (ply:GetMoney() >= money) then
			ply_canAfford = true
		end
	elseif (zcrga.config.MoneyType == "PointShop01") then
		if (ply:PS_HasPoints(money)) then
			ply_canAfford = true
		end
	elseif (zcrga.config.MoneyType == "PointShop02") then
		if ply.PS2_Wallet and ply.PS2_Wallet.points >= money then
			ply_canAfford = true
		end
	end
	return ply_canAfford
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- b4d111bd2d917d0b32660c0b2d59a0bfc7f6ab5c8b2782742f5148913baf0c52

function zcrga.f.Money_Take(ply, money)
	if (zcrga.config.MoneyType == "DarkRP") then
		ply:addMoney(-money)
	elseif (zcrga.config.MoneyType == "BaseWars") then
		ply:TakeMoney(money)
	elseif (zcrga.config.MoneyType == "PointShop01") then
		ply:PS_TakePoints(money)
	elseif (zcrga.config.MoneyType == "PointShop02") then
		ply:PS2_AddStandardPoints(-money)
	end
end

function zcrga.f.Money_Give(ply, money)
	if (zcrga.config.MoneyType == "DarkRP") then
		ply:addMoney(money)
	elseif (zcrga.config.MoneyType == "BaseWars") then
		ply:GiveMoney(money)
	elseif (zcrga.config.MoneyType == "PointShop01") then
		ply:PS_GivePoints(money)
	elseif (zcrga.config.MoneyType == "PointShop02") then
		ply:PS2_AddStandardPoints(money)
	end
end
