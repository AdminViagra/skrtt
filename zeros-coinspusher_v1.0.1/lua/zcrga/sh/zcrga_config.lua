/*
    Addon id: 5c4c2c82-a77f-4f8a-88b9-60acbd238a40
    Version: v1.0.1 (stable)
*/

zcrga = zcrga || {}
zcrga.config = zcrga.config || {}

// Version 1.0.9
////////////////////////////////////////////////////////////////////////////////
// Developed by ZeroChain:
// http://steamcommunity.com/id/zerochain/

// If you wish to contact me:
// clemensproduction@gmail.com

////////////////////////////////////////////////////////////////////////////////
//////////////BEFORE YOU START BE SURE TO READ THE README.TXT///////////////////
////////////////////////////////////////////////////////////////////////////////

// General
///////////////////////
// This is used for making sure the right functions are used
zcrga.config.MoneyType = "DarkRP"
// Currently available:
// "DarkRP" is used for the DarkRP GameMode and all that derieve from it
// "BaseWars" is used for the BaseWars GameMode
// "PointShop01" uses points from Pointshop01 instaead of cash (Adjust the Prizes and PlayPrice so players dont gets 1000 of Points!)
// "PointShop02" uses points from Pointshop02 instaead of cash (Adjust the Prizes and PlayPrice so players dont gets 1000 of Points!)

// The Currency
zcrga.config.Currency = "$"
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- ac2dd94e2e8be9f30e74fa060ef402dbf94020000986fa93f0e512faf91942ab

// These Ranks are allowed do use the save command  !savecoinpusher
zcrga.config.allowedRanks = {
	"superadmin",
	"owner"
}

// Do we want FastDL or the Workshop for downloading the Content
zcrga.config.EnableResourceAddfile = false

// This disables the music of the machine
zcrga.config.NoMusic = false
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- b4d111bd2d917d0b32660c0b2d59a0bfc7f6ab5c8b2782742f5148913baf0c52

// This disables the music the machine plays when the players wins a Prize
zcrga.config.NoWinMusic = false

// How long after a Players last interaction before other people can play with the Machine again
zcrga.config.PlayerCoolDown = 10
///////////////////////
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016

///// Lockpick
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198122988016

// Can a Player Lockpick the machines?
zcrga.config.CanBeLockPicked = true

// How long does it take do lockpick the machine?
zcrga.config.LockPickTime = 6 // seconds

// How big is the chance of the player getting cash if the lockpick is completed
zcrga.config.LockPick_WinChance = 0.3 //30%

// How much of the money inside the machine is the Player receiving
zcrga.config.LockPick_WinAmount = 0.6 //60%

// This is the Police Team on the Server, if no Player with that Team on the Server then nobody can lockpick the Machine
// *Note Leave Empty to disable this check
zcrga.config.TEAM_POLICE = {"Civil Protection", "Swat"}

/////


///// Economy
// Do we want the machine do start empty or with a random amount?
zcrga.config.StartEmpty = false

// Under this value the machine will be refilled with a random amount of money
zcrga.config.AmountToReset = 0

// How big is the chance that we win at all
zcrga.config.WinChance = 0.25 //25%
//*Note* This this sets the basic WinChance, if there is less then a third of Money in the machine then the player wont win at all

// How much does it cost do play the game
zcrga.config.PlayPrice = 1000

// This is the amount at which the chance of wining is very high because the machine is very full
zcrga.config.TriggerAmount = 30000

// This is the WinChance if the Machine gets very full
zcrga.config.TriggerChance = 0.9 // 90% Chance of wining big

// These Jobs are allowed to add/remove money from the machine via the 2d3d Buttons
zcrga.config.OwnerJobs = {"Arcade Owner"}

// How much money can the Arcade Owner Add/Remove from the Machine via the 2d3d Buttons
zcrga.config.TransferAmount = 500

                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- e5b57696689da578c8432bb3542d7788ee093cf686edea1c7e2de2467fc996d8

// There are currently 3 pize amounts do win, You can change its amount and WinChance but dont add more items do the list
zcrga.config.Prize = {
	[1] = {
		Name = "Small Prize",
		Amount = 1000,
		WinChance = 60, //% How big is the chance of getting a small Prize
	},
	[2] = {
		Name = "Medium Prize",
		Amount = 6000,
		WinChance = 30,
	},
	[3] = {
		Name = "Big Prize",
		Amount = 10000,
		WinChance = 10,
	},
}
///////////////////////
