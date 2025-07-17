/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

if CLIENT then return end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988009

if zcrga.config.EnableResourceAddfile then
	zcrga = zcrga or {}
	zcrga.force = zcrga.force or {}

	function zcrga.force.AddDir(path)
		local files, folders = file.Find(path .. "/*", "GAME")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- ac2dd94e2e8be9f30e74fa060ef402dbf94020000986fa93f0e512faf91942ab

		for k, v in pairs(files) do
			resource.AddFile(path .. "/" .. v)
		end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016

		for k, v in pairs(folders) do
			zcrga.force.AddDir(path .. "/" .. v)
		end
	end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016

	zcrga.force.AddDir("particles")
	zcrga.force.AddDir("sound/zap")
	zcrga.force.AddDir("models/zerochain/props_arcade")
	zcrga.force.AddDir("materials/zerochain/props_arcade/coin")
	zcrga.force.AddDir("materials/zerochain/props_arcade/coinpusher")
	zcrga.force.AddDir("materials/zerochain/zap/particles")
else
	resource.AddWorkshop("1344490358") -- Zeros CoinPusher Contentpack
end
