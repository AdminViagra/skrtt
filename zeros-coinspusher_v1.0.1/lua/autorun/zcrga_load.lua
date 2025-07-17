/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

include("zcrga/sh/zcrga_config.lua")
AddCSLuaFile("zcrga/sh/zcrga_config.lua")

local function zcrga_LoadAllFiles(fdir)
	local files, dirs = file.Find(fdir .. "*", "LUA")

	for _, afile in ipairs(files) do
		if string.match(afile, ".lua") then
			if SERVER then
				AddCSLuaFile(fdir .. afile)
			end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- b4d111bd2d917d0b32660c0b2d59a0bfc7f6ab5c8b2782742f5148913baf0c52
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- ac2dd94e2e8be9f30e74fa060ef402dbf94020000986fa93f0e512faf91942ab

			include(fdir .. afile)
		end
	end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 2a2c71c075741758c8db51ece82715fd961299aab437af26ac6afe2665acf9f9
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- b4d111bd2d917d0b32660c0b2d59a0bfc7f6ab5c8b2782742f5148913baf0c52

	for _, dir in ipairs(dirs) do
		zcrga_LoadAllFiles(fdir .. dir .. "/")
	end
end

zcrga_LoadAllFiles("zcrga/")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- c7366de8d60cdeb6b5adf16076095a94d4b0917d6f44e4c13484fe20b6688ab6
