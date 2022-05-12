AddCSLuaFile()

--Awesome code
--Nice comments

SWEP.PrintName = "TTT Config SWEP"
SWEP.Author = "Isemenuk27"
SWEP.Purpose = ""

SWEP.Slot = 1
SWEP.SlotPos = 2

SWEP.Spawnable = true

SWEP.ViewModel = Model( "models/weapons/c_smg1.mdl" )
SWEP.WorldModel = Model( "models/weapons/w_smg1.mdl" )
SWEP.ViewModelFOV = 54
SWEP.UseHands = true

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.DrawAmmo = false
SWEP.AdminOnly = true

SWEP.CurrentEnt = "weapon_zm_shotgun"
SWEP.Frame = false
SWEP.PlyAllowPickup = false
SWEP.FrameNamer = false
SWEP.LastSpawnedEnt = nil

function SWEP:Reload()
	return false
end
function SWEP:Deploy()
	self:SetNWString("CurrentEnt",self.CurrentEnt)
end

local AmmoList = {
	["item_ammo_357_ttt"] = { 		model = "models/items/357ammo.mdl"},
	["item_ammo_pistol_ttt"] = { 	model = "models/items/boxsrounds.mdl"},
	["item_ammo_revolver_ttt"] = { 	model = "models/items/357ammo.mdl"},
	["item_ammo_smg1_ttt"] = { 		model = "models/items/boxmrounds.mdl"},
	["item_box_buckshot_ttt"] = { 	model = "models/items/boxbuckshot.mdl"},
	["ttt_random_ammo"] = { 		model = "models/props_lab/box01a.mdl"}
}

local WeaponsList = {
	["weapon_zm_sledge"] = { 	model = "models/weapons/w_mach_m249para.mdl", 	ammo = false, 					name = "H.U.G.E-249"},
	["weapon_zm_shotgun"] = { 	model = "models/weapons/w_shot_xm1014.mdl",		ammo = "item_box_buckshot_ttt", name = "Shotgun"},
	["weapon_zm_rifle"] = { 	model = "models/weapons/w_snip_scout.mdl", 		ammo = "item_ammo_357_ttt", 	name = "Sniper Rifle (scout)"},
	["weapon_zm_revolver"] = { 	model = "models/weapons/w_pist_deagle.mdl",		ammo = "item_ammo_revolver_ttt", name = "Deagle"},
	["weapon_zm_pistol"] = {	model = "models/weapons/w_pist_fiveseven.mdl", 	ammo = "item_ammo_pistol_ttt", 	name = "Pistol"},
	["weapon_zm_mac10"] = { 	model = "models/weapons/w_smg_mac10.mdl", 		ammo ="item_ammo_smg1_ttt", 	name = "MAC10"},
	["weapon_ttt_m16"] = { 		model = "models/weapons/w_rif_m4a1.mdl", 		ammo = "item_ammo_pistol_ttt", 	name = "M16"},
	["weapon_ttt_glock"] = { 	model = "models/weapons/w_pist_glock18.mdl", 	ammo = "item_ammo_pistol_ttt", 	name = "Glock"},
	["weapon_ttt_confgrenade"] = { model = "models/weapons/w_eq_fraggrenade.mdl", ammo = false, 				name = "Discombobulator"},
	["weapon_zm_molotov"] = { 	model = "models/weapons/w_eq_flashbang.mdl", 	ammo = false, 					name = "Incendiary grenade" },
	["weapon_ttt_smokegrenade"] = { model = "models/weapons/w_eq_smokegrenade.mdl", ammo = false, 				name = "Smoke grenade" },
	["ttt_random_weapon"] = { 	model = "models/weapons/w_smg_p90.mdl", 	ammo = "ttt_random_ammo", 			name = "Random Weapon" }
}

local ItemListT = {
	["weapon_ttt_c4"] = {	model = "models/weapons/w_c4.mdl",	ammo = false, name = "C4"},
	["weapon_ttt_flaregun"] = {	model = "models/weapons/w_357.mdl",	ammo = false, name = "Flare gun"},
	["weapon_ttt_knife"] = {	model = "models/weapons/w_knife_t.mdl",	ammo = false, name = "Knife"},
	["weapon_ttt_phammer"] = {	model = "models/weapons/w_IRifle.mdl",	ammo = false, name = "Poltergeist"},
	["weapon_ttt_push"] = {	model = "models/weapons/w_physics.mdl",	ammo = false, name = "Newton launcher"},
	["weapon_ttt_radio"] = {	model = "models/props/cs_office/radio.mdl",	ammo = false, name = "Radio"},
	["weapon_ttt_sipistol"] = {	model = "models/weapons/w_pist_usp_silencer.mdl",	ammo = false, name = "Silenced Pistol"},
	["weapon_ttt_teleport"] = {	model = "models/weapons/w_slam.mdl",	ammo = false, name = "Teleporter"},
	["weapon_ttt_decoy"] = {	model = "models/props_lab/reciever01b.mdl",	ammo = false, name = "Decoy"}
}

local ItemListD = {
	["weapon_ttt_binoculars"] = {	model = "models/props/cs_office/paper_towels.mdl",	ammo = false, name = "Binoculars"},
	["weapon_ttt_defuser"] = {	model = "models/weapons/w_defuser.mdl",	ammo = false, name = "Defuser"},
	["weapon_ttt_health_station"] = {	model = "models/props/cs_office/microwave.mdl",	ammo = false, name = "Health Station"},
	["weapon_ttt_stungun"] = {	model = "models/weapons/w_smg_ump45.mdl",	ammo = "item_ammo_smg1_ttt", name = "UMP Prototype"},
	["weapon_ttt_cse"] = {	model = "models/Items/battery.mdl",	ammo = false, name = "Visualizer"},
	["weapon_ttt_teleport"] = {	model = "models/weapons/w_slam.mdl",	ammo = false, name = "Teleporter"}
}

local ItemsList = {
	["weapon_ttt_wtester"] = {	model = "models/props_lab/huladoll.mdl",	ammo = false, name = "DNA scanner"},
	["weapon_ttt_beacon"] = {	model = "models/props_lab/reciever01b.mdl",	ammo = false, name = "Beacon"},
	["ttt_playerspawn"] = {	model = "models/editor/playerstart.mdl",	ammo = false, name = "Spawn Point"}
}

concommand.Add( "tttcfg_class", function( ply, cmd, args )
    ply:GetActiveWeapon().CurrentEnt = args[1]
    ply:GetActiveWeapon():SetNWString("CurrentEnt", args[1])
end )

concommand.Add( "tttcfg_print", function( ply, cmd, args )
    ply:GetActiveWeapon():PrintCFG()
end )

concommand.Add( "tttcfg_name", function( ply, cmd, args )
	ply:GetActiveWeapon().LastSpawnedEnt:SetName("tttCFGTool." .. args[1])
end )

function SWEP:Initialize()

	self:SetHoldType( "smg" )

end
if CLIENT then
	surface.CreateFont( "TTTCFGFONT", {
		font = "Arial",
		extended = false,
		size = ScrW() / 100,
		weight = 500,
		blursize = 0,
		scanlines = 0,
		antialias = true,
		underline = false,
		italic = false,
		strikeout = false,
		symbol = false,
		rotary = false,
		shadow = false,
		additive = false,
		outline = false,
	} )
end

function SWEP:DrawHUD()
	surface.SetFont( "TTTCFGFONT" )
	surface.SetTextColor( 255, 255, 255 )
	surface.SetTextPos( ScrW() - ScrW() / 5, ScrH() - ScrH() / 8 ) 
	surface.DrawText( self:GetNWString( "CurrentEnt" ) )

	surface.SetTextPos( ScrW() - ScrW() / 5, ScrH() - ScrH() / 12 ) 
	surface.DrawText( "Hold 'RELOAD' key to spawn ammo" )

	surface.SetTextPos( ScrW() - ScrW() / 5, ScrH() - ScrH() / 15.2 ) 
	surface.DrawText( "Hold 'RMB' key to open menu" )

	surface.SetTextPos( ScrW() - ScrW() / 5, ScrH() - ScrH() / 20 ) 
	surface.DrawText( "Hold 'Move Slowly' key to spawn unlisted entity" )
end

function SWEP:PlyAllowPickup()
	return false
end

function SWEP:PrintCFG()
	if self:GetNextPrimaryFire() > CurTime() then return false end
	local entts = ents.FindByName("tttCFGTool.*")
	self:EmitSound( "common/bugreporter_succeeded.wav" )
	print("TTT Map Config: ".. game.GetMap() .. "_ttt.txt")
	if #entts == 0 then
		print("Bruh")
		return false
	end

	for i,v in ipairs(entts) do
		if v:GetName() == "tttCFGTool.ttt_playerspawn" then
			print("setting:	replacespawns 1")
			break
		end
	end
	for i,v in ipairs(entts) do
		--weapon_ttt_glock	5060.6592 4413.1538 -863.7147	-0.131 36.017 88.229
		local words = string.Explode( ".", v:GetName() )
		print(words[2], v:GetPos(), v:GetAngles())
	end
	print("----------------------------------------------")

	self:SetNextPrimaryFire( CurTime() + 1 )
end

function SWEP:CanBePickedUpByNPCs()
	return true
end

function SWEP:PrimaryAttack()
	self:SetNextPrimaryFire( CurTime() + 0.1 )
	local CurClass = self:GetNWString("CurrentEnt") --self.CurrentEnt 
	self:EmitSound( "buttons/lightswitch2.wav" )
	if CLIENT then return end
	local boxent = ents.Create("prop_physics")
	
	if CurClass == "" then return false end
	local EntModel = ""
	local UsedTable

	--print(table.HasValue(WeaponsList, CurClass))
	if WeaponsList[CurClass] then EntModel = WeaponsList[CurClass].model UsedTable = WeaponsList
	elseif ItemListT[CurClass] then EntModel = ItemListT[CurClass].model UsedTable = ItemListT
	elseif ItemListD[CurClass] then EntModel = ItemListD[CurClass].model UsedTable = ItemListD
	elseif ItemsList[CurClass] then EntModel = ItemsList[CurClass].model UsedTable = ItemsList
	end


	if CurClass == "ttt_playerspawn" then
		boxent:Remove()
		local effectent = ents.Create("prop_effect")
		effectent:SetModel(EntModel)
		effectent:SetPos(self:GetOwner():GetEyeTrace().HitPos + Vector(0, 0, 5))
		effectent:SetAngles(Angle(0, (self:GetOwner():GetAngles().y) - 180), 0)
		effectent:SetName("tttCFGTool." .. CurClass)
		effectent:Spawn()

		undo.Create("TTT: " .. CurClass)
			undo.AddEntity(effectent)
			undo.SetPlayer(self:GetOwner())
		undo.Finish()
		return
	end

	if CurClass == "ttt_random_weapon" then
		boxent:SetColor(Color(255, 43, 255, 255))
	end

	if self:GetOwner():KeyDown(IN_RELOAD) then
		if !UsedTable[CurClass].ammo then
			boxent:SetModel(EntModel)
		else
			boxent:SetModel(AmmoList[UsedTable[CurClass].ammo].model)
			CurClass = UsedTable[CurClass].ammo
		end
	elseif self:GetOwner():KeyDown(IN_WALK) then
		boxent:Remove()
		self:CreateBlankEntity(EntModel)
		return false
	else
		boxent:SetModel(EntModel)
	end
	boxent:SetPos(self:GetOwner():GetEyeTrace().HitPos - boxent:GetCollisionBounds())
	boxent:SetAngles(Angle(0, (self:GetOwner():GetAngles().y) - 180), 0)
	boxent:SetName("tttCFGTool." .. CurClass)
	boxent:Spawn()

	undo.Create("TTT: " .. CurClass)
		undo.AddEntity(boxent)
		undo.SetPlayer(self:GetOwner())
	undo.Finish()
end

function SWEP:OpenTextEntryMenu()
	if CLIENT then
		self:OpenMenuNamer()
	end
	if game.SinglePlayer() then
		self:GetOwner():SendLua("LocalPlayer():GetActiveWeapon():OpenMenuNamer()")
	end
end

function SWEP:CreateBlankEntity(EntModel)
	if CLIENT then return end
	local boxent = ents.Create("prop_physics")


	boxent:SetPos(self:GetOwner():GetEyeTrace().HitPos - boxent:GetCollisionBounds())
	boxent:SetModel("models/props_junk/CinderBlock01a.mdl")
	boxent:SetName("tttCFGTool.BLANK")
	boxent:SetMaterial("models/props_combine/tprings_globe")
	boxent:Spawn()
	self.LastSpawnedEnt = boxent
	undo.Create("TTT: Custom entity")
		undo.AddEntity(boxent)
		undo.SetPlayer(self:GetOwner())
	undo.Finish()
	self:CallOnClient( "OpenTextEntryMenu" )
end

local function CreateWeaponMenu(preset)
	local ButtonSize = {}
	ButtonSize.x, ButtonSize.y = 300, 200
	ButtonColors = Color( 255, 255, 255, 100 )

	--print( table.Count(WeaponsList) * ButtonSize.y )
	local Frame = vgui.Create( "DFrame" )
	Frame:SetTitle( "Items" )
	Frame:SetSize( 500, 600  )
	Frame:Center()			
	Frame:MakePopup()
	Frame:SetKeyboardInputEnabled(false)
	Frame.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 120,120,120, 150 ) )
		if LocalPlayer():KeyReleased(IN_ATTACK2) then
			self:Close()
		end
	end

	local num = 1

	local DScrollPanel = vgui.Create( "DScrollPanel", Frame )

	DScrollPanel:DockMargin(0, 0, 0, 10)
	DScrollPanel:Dock( FILL )
	for key,value in pairs(WeaponsList) do
		local pos1 = ButtonSize.y * num
		local WepButton = DScrollPanel:Add( "DButton" )
		WepButton:SetText( tostring(value.name))
		WepButton:Dock( TOP )
		WepButton:DockMargin( 0, 0, 0, 5 )

		WepButton.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, ButtonColors )
		end

		WepButton.DoClick = function()
			LocalPlayer():ConCommand( "tttcfg_class " .. key )
			LocalPlayer():ChatPrint( "You selected: " .. key )
			surface.PlaySound( "buttons/button14.wav" )
		end

		num = num + 1
	end

	local lbl = DScrollPanel:Add( "DLabel" )
	lbl:SetFont( "DermaLarge" )
	lbl:SetText( "Traitor Items" )
	lbl:SizeToContents()
	lbl:Dock( TOP )
	lbl:DockMargin( 0, 0, 0, 5 )
	for key,value in pairs(ItemListT) do
		local pos1 = ButtonSize.y * num
		local WepButton = DScrollPanel:Add( "DButton" )
		WepButton:SetText( tostring(value.name))
		WepButton:Dock( TOP )
		WepButton:DockMargin( 0, 0, 0, 5 )

		WepButton.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, ButtonColors )
		end

		WepButton.DoClick = function()
			LocalPlayer():ConCommand( "tttcfg_class " .. key )
			LocalPlayer():ChatPrint( "You selected: " .. key )
			surface.PlaySound( "buttons/button14.wav" )
		end

		num = num + 1
	end

	local lbl2 = DScrollPanel:Add( "DLabel" )
	lbl2:SetFont( "DermaLarge" )
	lbl2:SetText( "Detective Items" )
	lbl2:SizeToContents()
	lbl2:Dock( TOP )
	lbl2:DockMargin( 0, 0, 0, 5 )
	for key,value in pairs(ItemListD) do
		local pos1 = ButtonSize.y * num
		local WepButton = DScrollPanel:Add( "DButton" )
		WepButton:SetText( tostring(value.name))
		WepButton:Dock( TOP )
		WepButton:DockMargin( 0, 0, 0, 5 )

		WepButton.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, ButtonColors )
		end

		WepButton.DoClick = function()
			LocalPlayer():ConCommand( "tttcfg_class " .. key )
			LocalPlayer():ChatPrint( "You selected: " .. key )
			surface.PlaySound( "buttons/button14.wav" )
		end

		num = num + 1
	end

	local lbl3 = DScrollPanel:Add( "DLabel" )
	lbl3:SetFont( "DermaLarge" )
	lbl3:SetText( "Other Items" )
	lbl3:SizeToContents()
	lbl3:Dock( TOP )
	lbl3:DockMargin( 0, 0, 0, 5 )

	for key,value in pairs(ItemsList) do
		local pos1 = ButtonSize.y * num
		local WepButton = DScrollPanel:Add( "DButton" )
		WepButton:SetText( tostring(value.name))
		WepButton:Dock( TOP )
		WepButton:DockMargin( 0, 0, 0, 5 )

		WepButton.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, ButtonColors )
		end

		WepButton.DoClick = function()
			LocalPlayer():ConCommand( "tttcfg_class " .. key )
			LocalPlayer():ChatPrint( "You selected: " .. key )
			surface.PlaySound( "buttons/button14.wav" )
		end

		num = num + 1
	end

		local CloseButton = vgui.Create("DButton", Frame )
		CloseButton:SetText( "Close" )
		CloseButton:SetPos( 100, 0 )
		CloseButton:SetSize( 60, 30 )
		CloseButton:Dock( BOTTOM )
		CloseButton:DockMargin( 0, 0, 0, 5 )

		CloseButton.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, Color(255, 255, 255, 200) )
		end

		CloseButton.DoClick = function()
			Frame:Close()
		end

		local PrintButton = vgui.Create("DButton", Frame )
		PrintButton:SetText( "Print Config" )
		PrintButton:SetPos( 100, 0 )
		PrintButton:SetSize( 60, 30 )
		PrintButton:Dock( BOTTOM )
		PrintButton:DockMargin( 0, 0, 0, 5 )

		PrintButton.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, Color(255, 255, 255, 200) )
		end

		PrintButton.DoClick = function()
			LocalPlayer():ConCommand( "tttcfg_print")
			Frame:Close()
		end
end

function SWEP:OpenMenu( preset )
	if (!self.Frame) then
		self.Frame = CreateWeaponMenu( preset )
	end
	
	if (IsValid(self.Frame)) then
		self.Frame:SetVisible(true)
		self.Frame:MakePopup()
	else
		self.Frame = nil
	end
	
end
local function CreateWeaponMenuNamer(preset)
	local frame = vgui.Create( "DFrame" )
	frame:SetSize( 400, 200 )
	frame:SetTitle( "Custom Class" )
	frame:Center()
	frame:MakePopup()

	local TextEntry = vgui.Create( "DTextEntry", frame )
	TextEntry:Dock( TOP )
	TextEntry.OnEnter = function( self )
		if self:GetValue() != "" then
			LocalPlayer():ConCommand( "tttcfg_name " .. self:GetValue())
		end
		frame:Close()
	end
end
function SWEP:OpenMenuNamer( preset )
	if (!self.FrameNamer) then
		self.FrameNamer = CreateWeaponMenuNamer( preset )
	end
	
	if (IsValid(self.FrameNamer)) then
		self.FrameNamer:SetVisible(true)
		self.FrameNamer:MakePopup()
	else
		self.FrameNamer = nil
	end
end

function SWEP:SecondaryAttack()

	if CLIENT then
		self:OpenMenu()
	end
	if game.SinglePlayer() then
		self:GetOwner():SendLua("LocalPlayer():GetActiveWeapon():OpenMenu()")
	end

	--self:GetOwner():ChatPrint( tostring(self:GetOwner():GetEyeTrace().Entity:GetPos() ) )
	--self:GetOwner():ChatPrint( tostring(self:GetOwner():GetEyeTrace().Entity:GetAngles() ) )

end

hook.Add( "AllowPlayerPickup", "AllowAdminsPickUp", function( ply, ent )
	return ply:GetActiveWeapon().PlyAllowPickup
end )