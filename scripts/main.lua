--[[
ROMEO IS A DEAD MAN
Rotter Paradise MOD(UE4SS)
v1.0.0
]]

--[[
デフォルトではロッター(内部名ではWalker)が10倍出現するようにしてあります。
「setting_enemy1～10」の右側に書いてある「ESpawnAICharaID_Walker」を別の敵の名前に変えればロッター以外も出現させることができます。
「setting_spawner_enemy」の行では空中に浮いてるスポナーから出てくる敵を指定できます。

By default, Rotters (internal name Walker) are set to spawn 10 times more often.
You can spawn enemies other than Rotters by changing "ESpawnAICharaID_Walker" written to the right of "setting_enemy1-10" to the name of a different enemy.
The "setting_spawner_enemy" line allows you to specify which enemies will spawn from floating spawners.
]]

local setting_enemy1 = "ESpawnAICharaID_Walker"
local setting_enemy2 = "ESpawnAICharaID_Walker"
local setting_enemy3 = "ESpawnAICharaID_Walker"
local setting_enemy4 = "ESpawnAICharaID_Walker"
local setting_enemy5 = "ESpawnAICharaID_Walker"
local setting_enemy6 = "ESpawnAICharaID_Walker"
local setting_enemy7 = "ESpawnAICharaID_Walker"
local setting_enemy8 = "ESpawnAICharaID_Walker"
local setting_enemy9 = "ESpawnAICharaID_Walker"
local setting_enemy10 = "ESpawnAICharaID_Walker"

local setting_spawner_enemy = "ESpawnAICharaID_Walker"


--[[
■Enemy List
ESpawnAICharaID_Walker：ロッター(Rotter)
ESpawnAICharaID_WalkerHandgun：ハンドガン持ちのロッター(HandgunRotter)
ESpawnAICharaID_WalkerRifle：ライフル持ちのロッター(RifleRotter)
ESpawnAICharaID_TomatoHead：トマトヘッド(Tomato Head)
ESpawnAICharaID_BuffZombie：ダンサー(Negative Dancer)
ESpawnAICharaID_GekkoZombie：ゲッコー(Gecko)
ESpawnAICharaID_TankZombie：フラブ(Flab)
ESpawnAICharaID_Mantis：マンティス(Mantis)
ESpawnAICharaID_Jelly：ジェリー(Jelly)
ESpawnAICharaID_ZombieBlack：サイコ・ロッター(Psycho Rotter)
ESpawnAICharaID_BirdZombie：フレッシュペッカー(Flesh Pecker)
ESpawnAICharaID_PunisherPhase1：パニッシャー(Punisher)
ESpawnAICharaID_PunisherPhase2：エクセキューショナー(Executioner)
ESpawnAICharaID_WeakFirstRotter：弱いファーストロッター(WeakFirstRotter)


■デフォルトの状態(ロッター10倍)
■Default state (Rotter 10x)
local setting_enemy1 = "ESpawnAICharaID_Walker"
local setting_enemy2 = "ESpawnAICharaID_Walker"
local setting_enemy3 = "ESpawnAICharaID_Walker"
local setting_enemy4 = "ESpawnAICharaID_Walker"
local setting_enemy5 = "ESpawnAICharaID_Walker"
local setting_enemy6 = "ESpawnAICharaID_Walker"
local setting_enemy7 = "ESpawnAICharaID_Walker"
local setting_enemy8 = "ESpawnAICharaID_Walker"
local setting_enemy9 = "ESpawnAICharaID_Walker"
local setting_enemy10 = "ESpawnAICharaID_Walker"

local setting_spawner_enemy = "ESpawnAICharaID_Walker"


■例：ロッター3倍状態にしたい場合
■Example: If you want to set Rotor to 3x
local setting_enemy1 = "ESpawnAICharaID_Walker"
local setting_enemy2 = "ESpawnAICharaID_Walker"
local setting_enemy3 = "ESpawnAICharaID_Walker"
local setting_enemy4 = ""
local setting_enemy5 = ""
local setting_enemy6 = ""
local setting_enemy7 = ""
local setting_enemy8 = ""
local setting_enemy9 = ""
local setting_enemy10 = ""

local setting_spawner_enemy = "ESpawnAICharaID_Walker"


■例：トマトヘッド、ダンサー、ゲッコーをセットで出したい場合
■Example: If you want to release Tomato Head, Negative Dancer, and Gecko as a set.
local setting_enemy1 = "ESpawnAICharaID_TomatoHead"
local setting_enemy2 = "ESpawnAICharaID_BuffZombie"
local setting_enemy3 = "ESpawnAICharaID_GekkoZombie"
local setting_enemy4 = ""
local setting_enemy5 = ""
local setting_enemy6 = ""
local setting_enemy7 = ""
local setting_enemy8 = ""
local setting_enemy9 = ""
local setting_enemy10 = ""

local setting_spawner_enemy = "ESpawnAICharaID_TomatoHead"


■例：パニッシャーと戦いたい場合
■Example: If you want to fight the Punisher
local setting_enemy1 = "ESpawnAICharaID_PunisherPhase1"
local setting_enemy2 = ""
local setting_enemy3 = ""
local setting_enemy4 = ""
local setting_enemy5 = ""
local setting_enemy6 = ""
local setting_enemy7 = ""
local setting_enemy8 = ""
local setting_enemy9 = ""
local setting_enemy10 = ""

local setting_spawner_enemy = "ESpawnAICharaID_PunisherPhase1"

]]





--[[
～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～
]]








print("[Rotter Paradise] OK")

ExecuteInGameThread(function()
	
	-- 敵書き換え(通常マップ)
	local dt_enemy_set_list = StaticFindObject("/Game/DataTable/EnemySet/DT_EnemySetList.DT_EnemySetList")
	if dt_enemy_set_list:IsValid() then
		
		-- Walkerパッチ用に単体のWalkerのデータを用意する。
		local dummy_walker_row = dt_enemy_set_list:FindRow("TEST_TestZombies")
		dummy_walker_row.Enemy1 = "ESpawnAICharaID_Walker"
		dummy_walker_row.Enemy2 = ""
		dummy_walker_row.Enemy3 = ""
		dummy_walker_row.Enemy4 = ""
		dummy_walker_row.Enemy5 = ""
		dummy_walker_row.Enemy6 = ""
		dummy_walker_row.Enemy7 = ""
		dummy_walker_row.Enemy8 = ""
		dummy_walker_row.Enemy9 = ""
		dummy_walker_row.Enemy10 = ""
		dummy_walker_row.Enemy11 = ""
		dummy_walker_row.Enemy12 = ""
		dummy_walker_row.Enemy13 = ""
		dummy_walker_row.Enemy14 = ""
		dummy_walker_row.Enemy15 = ""
		dummy_walker_row.Enemy16 = ""
		dummy_walker_row.Enemy17 = ""
		dummy_walker_row.Enemy18 = ""
		dummy_walker_row.Enemy19 = ""
		dummy_walker_row.Enemy20 = ""
		dummy_walker_row.Enemy21 = ""
		dummy_walker_row.Enemy22 = ""
		dummy_walker_row.Enemy23 = ""
		dummy_walker_row.Enemy24 = ""
		dummy_walker_row.Enemy25 = ""
		dummy_walker_row.Enemy26 = ""
		dummy_walker_row.Enemy27 = ""
		dummy_walker_row.Enemy28 = ""
		dummy_walker_row.Enemy29 = ""
		dummy_walker_row.Enemy30 = ""
		
		-- Tankパッチ用に単体のTankのデータを用意する。
		local dummy_tank_row = dt_enemy_set_list:FindRow("TEST_MultiTypeZombies")
		dummy_tank_row.Enemy1 = "ESpawnAICharaID_TankZombie"
		dummy_tank_row.Enemy2 = ""
		dummy_tank_row.Enemy3 = ""
		dummy_tank_row.Enemy4 = ""
		dummy_tank_row.Enemy5 = ""
		dummy_tank_row.Enemy6 = ""
		dummy_tank_row.Enemy7 = ""
		dummy_tank_row.Enemy8 = ""
		dummy_tank_row.Enemy9 = ""
		dummy_tank_row.Enemy10 = ""
		dummy_tank_row.Enemy11 = ""
		dummy_tank_row.Enemy12 = ""
		dummy_tank_row.Enemy13 = ""
		dummy_tank_row.Enemy14 = ""
		dummy_tank_row.Enemy15 = ""
		dummy_tank_row.Enemy16 = ""
		dummy_tank_row.Enemy17 = ""
		dummy_tank_row.Enemy18 = ""
		dummy_tank_row.Enemy19 = ""
		dummy_tank_row.Enemy20 = ""
		dummy_tank_row.Enemy21 = ""
		dummy_tank_row.Enemy22 = ""
		dummy_tank_row.Enemy23 = ""
		dummy_tank_row.Enemy24 = ""
		dummy_tank_row.Enemy25 = ""
		dummy_tank_row.Enemy26 = ""
		dummy_tank_row.Enemy27 = ""
		dummy_tank_row.Enemy28 = ""
		dummy_tank_row.Enemy29 = ""
		dummy_tank_row.Enemy30 = ""
		
		--[[
		・DT_EnemySetListのIDリスト
		TEST_TestZombies
		TEST_Walkers
		TEST_MultiTypeZombies
		TEST_StrobePhantasm
		WALKER
		Religious
		WalkerStrong
		TankZombi
		TomatoHead
		BuffZombi
		Punisher_1st
		Punisher_2nd
		ProtoBurning
		SupportZombi
		BossGuru
		BossMayorHuman
		Generator_TypeA
		Generator_TypeB
		BossMayor
		HandgunWalker
		RifleWalker
		ZombiBlack
		GekkeoZombie
		BirdZombie
		JELLY
		VS_DeadBurg_WP_EnemySet_001
		VS_DeadBurg_WP_EnemySet_002
		VS_DeadBurg_WP_EnemySet_003
		VS_DeadBurg_WP_EnemySet_004
		VS_DeadBurg_WP_EnemySet_005
		VS_DeadBurg_WP_EnemySet_006
		VS_DeadBurg_WP_EnemySet_007
		VS_DeadBurg_WP_EnemySet_008
		DeadBurg_CH02_GuruHouse1F01
		DeadBurg_CH02_GuruHouse1F02
		DeadBurg_CH02_GuruHouse2F01
		DeadBurg_CH02_GuruHouse2F02
		DeadBurg_CH02_CultChurch
		DeadBurg_CH02_CultSquare01
		DeadBurg_CH02_CultSquare02
		DeadBurg_CH02_CultSquare03
		DeadBurg_CH02_CultSquare04
		DeadBurg_CH02_CultSquare05
		DeadBurg_CH02_CultSquare_Presentation_01
		DeadBurg_CH02_CultSquare_Presentation_02
		DeadBurg_CH01_Cemetery01
		DeadBurg_CH01_Cemetery02
		DeadBurg_CH01_Cemetery_DefBattle_01
		DeadBurg_CH01_Cemetery_DefBattle_02
		Test_Walker_Cult
		DeadBurg_1968_AroundCultArea_01
		DeadBurg_1968_AroundCultArea_02
		DeadBurg_1968_AroundCultArea_03
		DeadBurg_1968_AroundCultArea_04
		BossReanimatedOldBrother
		BossReanimatedYoungBrother
		BurningRotterFirst
		FirstRotter
		WeakFirstRotter
		DoctorHill
		StrobePhantasm
		SubHuman
		MANTIS
		GiantBody
		]]
		local target_enemy_set_id_list = {
			"Walker",
			"Religious",
			"WalkerStrong",
			"TankZombi",
			"TomatoHead",
			"BuffZombi",
			"Punisher_1st",
			"Punisher_2nd",
			"Generator_TypeA",
			"Generator_TypeB",
			"HandgunWalker",
			"RifleWalker",
			"ZombiBlack",
			"GekkeoZombie",
			"BirdZombie",
			"Jelly",
			"VS_DeadBurg_WP_EnemySet_001",
			"VS_DeadBurg_WP_EnemySet_002",
			"VS_DeadBurg_WP_EnemySet_003",
			"VS_DeadBurg_WP_EnemySet_004",
			"VS_DeadBurg_WP_EnemySet_005",
			"VS_DeadBurg_WP_EnemySet_006",
			"VS_DeadBurg_WP_EnemySet_007",
			"VS_DeadBurg_WP_EnemySet_008",
			"DeadBurg_CH02_GuruHouse1F01",
			"DeadBurg_CH02_GuruHouse1F02",
			"DeadBurg_CH02_GuruHouse2F01",
			"DeadBurg_CH02_GuruHouse2F02",
			"DeadBurg_CH02_CultChurch",
			"DeadBurg_CH02_CultSquare01",
			"DeadBurg_CH02_CultSquare02",
			"DeadBurg_CH02_CultSquare03",
			"DeadBurg_CH02_CultSquare04",
			"DeadBurg_CH02_CultSquare05",
			"DeadBurg_CH02_CultSquare_Presentation_01",
			"DeadBurg_CH02_CultSquare_Presentation_02",
			"DeadBurg_CH01_Cemetery01",
			"DeadBurg_CH01_Cemetery02",
			"DeadBurg_CH01_Cemetery_DefBattle_01",
			"DeadBurg_CH01_Cemetery_DefBattle_02",
			"DeadBurg_1968_AroundCultArea_01",
			"DeadBurg_1968_AroundCultArea_02",
			"DeadBurg_1968_AroundCultArea_03",
			"DeadBurg_1968_AroundCultArea_04",
			"Mantis",
		}
		for i, enemy_set_id in ipairs(target_enemy_set_id_list) do
			local target_row = dt_enemy_set_list:FindRow(enemy_set_id)
			
			target_row.Enemy1 = setting_enemy1
			target_row.Enemy2 = setting_enemy2
			target_row.Enemy3 = setting_enemy3
			target_row.Enemy4 = setting_enemy4
			target_row.Enemy5 = setting_enemy5
			target_row.Enemy6 = setting_enemy6
			target_row.Enemy7 = setting_enemy7
			target_row.Enemy8 = setting_enemy8
			target_row.Enemy9 = setting_enemy9
			target_row.Enemy10 = setting_enemy10
			
			-- 11以降にセットすると敵が出てこなくなる。
			--[[
			target_row.Enemy11 = "ESpawnAICharaID_Walker"
			target_row.Enemy12 = "ESpawnAICharaID_Walker"
			target_row.Enemy13 = "ESpawnAICharaID_Walker"
			]]
		end
		
	end
	
	-- 敵書き換え(パレス・アテネ)
	-- DataTableを書き換えても反映されない。
	--[[
	local dt_dungeons_room_enemies_set = StaticFindObject("/Game/DataTable/Dungeons/DT_DungeonsRoomEnemiesSet.DT_DungeonsRoomEnemiesSet")
	
	if dt_dungeons_room_enemies_set:IsValid() then
		dt_dungeons_room_enemies_set:ForEachRow(function(row_name, row_data)
			print(row_data.Comment:ToString())
			print(row_data.Enemies0.EnemyID)
			print(row_data.Enemies1.EnemyID)
			print(row_data.Enemies2.EnemyID)
			print(row_data.Enemies3.EnemyID)
			
			if row_data.Enemies0.EnemyID ~= 0 then
				row_data.Enemies0.EnemyID = 1
			end
			
			if row_data.Enemies1.EnemyID ~= 0 then
				row_data.Enemies1.EnemyID = 1
			end
			
			if row_data.Enemies2.EnemyID ~= 0 then
				row_data.Enemies2.EnemyID = 1
			end
			
			if row_data.Enemies3.EnemyID ~= 0 then
				row_data.Enemies3.EnemyID = 1
			end

			--[[
			
			row_data.Enemies1.EnemyID = 1
			row_data.Enemies2.EnemyID = 1
			row_data.Enemies3.EnemyID = 1
			
			--[[
			row_data.Enemies0.EnemyID = "ESpawnAICharaID::ESpawnAICharaID_Walker"
			row_data.Enemies0.AITag = "WalkOnlyRotterVisModernRotterVisClassicRotterVisCityHallRotterVisPolice"
			row_data.Enemies0.Num = 1
			
			row_data.Enemies1.EnemyID = "ESpawnAICharaID::ESpawnAICharaID_None"
			row_data.Enemies1.AITag = "None"
			row_data.Enemies1.Num = 0
			
			row_data.Enemies2.EnemyID = "ESpawnAICharaID::ESpawnAICharaID_None"
			row_data.Enemies2.AITag = "None"
			row_data.Enemies2.Num = 0
			
			row_data.Enemies3.EnemyID = "ESpawnAICharaID::ESpawnAICharaID_None"
			row_data.Enemies3.AITag = "None"
			row_data.Enemies3.Num = 0
			]]
	--[[
		end)
	end
	]]
end)


-- スポナーから出てくる敵を書き換える。
local spawner_enemy_id_mapping = {
	ESpawnAICharaID_Walker = 1,
	ESpawnAICharaID_WalkerHandgun = 2,
	ESpawnAICharaID_WalkerRifle = 3,
	ESpawnAICharaID_TomatoHead = 4,
	ESpawnAICharaID_BuffZombie = 6,
	ESpawnAICharaID_GekkoZombie = 7,
	ESpawnAICharaID_TankZombie = 5,
	ESpawnAICharaID_Mantis = 11,
	ESpawnAICharaID_Jelly = 10,
	ESpawnAICharaID_ZombieBlack = 8,
	ESpawnAICharaID_BirdZombie = 9,
	ESpawnAICharaID_PunisherPhase1 = 14,
	ESpawnAICharaID_PunisherPhase2 = 15,
	ESpawnAICharaID_WeakFirstRotter = 12,
}
NotifyOnNewObject("/Game/Blueprint/Object/DimensionEyeSpawnEnemy/BP_DimensionEyeSpawnEnemy.BP_DimensionEyeSpawnEnemy_C", function(target_object)
	if target_object:IsValid() then
	
		-- 「mEnemyCharaIDs」がセットされるのを待ち、セットされたら書き換える。
		local function patch()
			local patch_target_object = target_object
			
			if not(patch_target_object:IsValid()) or patch_target_object.mEnemyCharaIDs[1] == 0 then
				-- print("まだ初期化前？")
				
				ExecuteWithDelay(1, patch)
				return
			end
			
			--[[
			print("パッチ前")
			patch_target_object.mEnemyCharaIDs:ForEach(function(index, value)
				print(index .. " = " .. value:get())
			end)
			]]
			
			-- 全ての敵をWalkerにしつつ、スポナーから出てくる敵の数を3倍にする。
			-- print("パッチ実行:" .. patch_target_object.mEnemyCharaIDs[1])
			local id_length = #patch_target_object.mEnemyCharaIDs
			for i = 1 , id_length do
				-- 「1」はWalker
				-- 「4」はTomatoHead
				patch_target_object.mEnemyCharaIDs[i] = spawner_enemy_id_mapping[setting_spawner_enemy]
				
				patch_target_object.mEnemyCharaIDs[id_length + i] = spawner_enemy_id_mapping[setting_spawner_enemy]
				patch_target_object.mEnemyCharaIDs[(id_length * 2) + i] = spawner_enemy_id_mapping[setting_spawner_enemy]
			end
			
			--[[
			print("パッチ後")
			patch_target_object.mEnemyCharaIDs:ForEach(function(index, value)
				print(index .. " = " .. value:get())
			end)
			]]
			
			-- 同時出現の上限数
			patch_target_object.mEnemyCapacity = 10
		end
		ExecuteWithDelay(1, patch)
	end
end)



--[[
Walkerを複数体 or 別の敵に変えるとCity Hallの最初のイベントで敵が出ずに進まなくなってしまうので、
MAPの出現情報を強制的にWalkerに書き換えて回避する。
]]
-- /Game/Blueprint/Enemy/BP_SevTargetPoint_EnemySet.BP_SevTargetPoint_EnemySet_C
NotifyOnNewObject("/Game/Blueprint/Enemy/BP_SevTargetPoint_EnemySet.BP_SevTargetPoint_EnemySet_C", function(target_object)
	if target_object:IsValid() then
		
		-- FullNameチェック用
		--[[
		ExecuteWithDelay(100, function()
			print(target_object:GetFullName())
			print(target_object.mEnemySetID:ToString())
		end)
		]]
		
		-- local full_name_prefix = "BP_SevTargetPoint_EnemySet_C ";
		-- local target_path = string.sub(target_object:GetFullName(), string.len(full_name_prefix))
		-- print(target_path)
		
		
		
		local walker_patch_target_class_list = {
			-- 最初のファーストロッター戦でエリア外にロッターがハミ出る。
			"/Game/Map/Cassini/OWL_CassiniSt/_Generated_/7ZBY7MXT8B2GRQC91JEGX9SAC.OWL_CassiniSt:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_7085C29403A8E48F02_c8fc790242ec4bde_2007637712",
			"/Game/Map/Cassini/OWL_CassiniSt/_Generated_/7ZBY7MXT8B2GRQC91JEGX9SAC.OWL_CassiniSt:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_7085C29403A8E48F02_c8fc790242ec4bde_2010096713",
			"/Game/Map/Cassini/OWL_CassiniSt/_Generated_/7ZBY7MXT8B2GRQC91JEGX9SAC.OWL_CassiniSt:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_7085C29403A8E48F02_c8fc790242ec4bde_2013145714",
			
			-- CHAPTER 2の最初のロッターが飛び降りてくるところで敵が出てこなくてハマる。
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_2_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_0",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_2_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_1",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_3_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_0",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_3_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_1",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_4_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_0",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_4_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_1",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_5_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_0",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_5_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_1",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_6_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_0",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_6_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_1",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_7_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_0",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_7_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_1",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_8_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_0",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_8_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_1",
			"/Game/Map/RouteMap/CH_Juliet/OWL_Juliet/_Generated_/B219P6HYIUUZPN9XFZ1ULKKCK.OWL_Juliet:PersistentLevel.BP_SevTargetPoint_EnemySet_GEN_VARIABLE_BP_SevTargetPoint_EnemySet_C_CAT_1",
			
			-- CHAPTER 6の教会内のパニッシャー戦の所でエリア外にロッターがハミ出る。
			"/Game/Map/RouteMap/CH_Guru/OWL_Guru/_Generated_/3C4COUCFY1R43G0IKR8UE44G7.OWL_Guru:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_04421A9A7D48180802_40dbbc9cab6d8a24_1231675311",
			"/Game/Map/RouteMap/CH_Guru/OWL_Guru/_Generated_/3C4COUCFY1R43G0IKR8UE44G7.OWL_Guru:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_04421A9A7D48180802_40dbbc9cab6d8a24_1263938313",
			"/Game/Map/RouteMap/CH_Guru/OWL_Guru/_Generated_/3C4COUCFY1R43G0IKR8UE44G7.OWL_Guru:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_04421A9A7D48180802_40dbbc9cab6d8a24_1272261314",
			"/Game/Map/RouteMap/CH_Guru/OWL_Guru/_Generated_/3C4COUCFY1R43G0IKR8UE44G7.OWL_Guru:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_04421A9A7D48180802_40dbbc9cab6d8a24_1287315315",
			"/Game/Map/RouteMap/CH_Guru/OWL_Guru/_Generated_/3C4COUCFY1R43G0IKR8UE44G7.OWL_Guru:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_04421A9A7D48180802_40dbbc9cab6d8a24_1292856316",
			"/Game/Map/RouteMap/CH_Guru/OWL_Guru/_Generated_/3C4COUCFY1R43G0IKR8UE44G7.OWL_Guru:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_04421A9A7D48180802_40dbbc9cab6d8a24_1297767317",
			
			-- CHAPTER 7の最初のエントランスのDJシーンでロッターが出てこなくてハマる。
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F1D1D02_855478004eaf65da_1822361451",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1241338705",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1244399706",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1248844707",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1251366708",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1254758709",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1256976710",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1260574711",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1264660712",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1273346713",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1277283714",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1278914715",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1283855716",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1288250717",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1292537718",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1298701719",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1311011720",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1318623721",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1322920722",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1326546723",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1331016724",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1334344725",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1337917726",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1341028727",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1343619728",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1348536729",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1355652730",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1360284731",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1363826732",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1368209733",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1371455734",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1376343735",
			"/Game/Map/RouteMap/CH_GrimReaper/OWL_GrimReaper/_Generated_/4IMIMUG84M1Y7BPSJC5S6SJI7.OWL_GrimReaper:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F741D02_855478004eaf65da_1381362736",
			
			-- CHAPTER 8(亜空間ヒルズ)は複数体設定すると敵が出てこなくなる。
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/DBVECI11GWN3ZGUHLRPG6STJG.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FD13702_dde2451dade2e1a2_1529554854",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F084B02_a4ff769c8b73584a_1500841796",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F084B02_a4ff769c8b73584a_1542402797",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F084B02_a4ff769c8b73584a_1553586798",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F084B02_a4ff769c8b73584a_1555636799",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F084B02_a4ff769c8b73584a_1558305800",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F094A02_a4ff769c8b73584a_1433481653",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F094B02_a4ff769c8b73584a_2072765035",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F094B02_a4ff769c8b73584a_2072770036",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F094B02_a4ff769c8b73584a_2072773037",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F094B02_a4ff769c8b73584a_2072776038",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F094B02_a4ff769c8b73584a_2072779039",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F094B02_a4ff769c8b73584a_2077456040",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0A4B02_a4ff769c8b73584a_1803355258",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0A4B02_a4ff769c8b73584a_1826653259",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0A4B02_a4ff769c8b73584a_1849772260",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0A4B02_a4ff769c8b73584a_1874940261",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4B02_a4ff769c8b73584a_1225104440",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F134B02_a4ff769c8b73584a_1913399203",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1583639739",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1618358740",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F154B02_a4ff769c8b73584a_1691132634",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F154B02_a4ff769c8b73584a_1741848635",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1884677850",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1888630851",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1889823852",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1895479855",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1906190858",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1911008859",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F199202_a4ff769c8b73584a_1210848607",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F199202_a4ff769c8b73584a_1210868608",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F199202_a4ff769c8b73584a_1210871609",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F199202_a4ff769c8b73584a_1210874610",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F199202_a4ff769c8b73584a_1210876611",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F214A02_a4ff769c8b73584a_1557640501",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F214A02_a4ff769c8b73584a_1586687502",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F214A02_a4ff769c8b73584a_1587817503",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F214A02_a4ff769c8b73584a_1591307504",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F214A02_a4ff769c8b73584a_1592416505",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F214A02_a4ff769c8b73584a_1593720506",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F6C6A02_a4ff769c8b73584a_1884950221",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F836802_a4ff769c8b73584a_1189125297",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F836802_a4ff769c8b73584a_1190767298",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F9A6802_a4ff769c8b73584a_1618399255",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F9A6802_a4ff769c8b73584a_1620503256",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F9A6802_a4ff769c8b73584a_1628681257",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F9A6802_a4ff769c8b73584a_1649476258",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F9A6802_a4ff769c8b73584a_1653910259",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F9A6802_a4ff769c8b73584a_1665999260",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEA6702_a4ff769c8b73584a_2046143958",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEA6702_a4ff769c8b73584a_2068361959",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/15EPDMATD8BX935MX0IMWGVVF.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEA6702_a4ff769c8b73584a_2115313960",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1478879737",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1533781738",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F154A02_a4ff769c8b73584a_1603107000",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F154A02_a4ff769c8b73584a_1648073001",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F154A02_a4ff769c8b73584a_1649391002",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1892110853",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1893493854",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1899776856",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1902802857",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F164A02_a4ff769c8b73584a_1913208860",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F166502_a4ff769c8b73584a_2023304839",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F1A9202_a4ff769c8b73584a_1605262963",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F1B9202_a4ff769c8b73584a_1702733230",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F2E6502_a4ff769c8b73584a_1730280902",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F529202_a4ff769c8b73584a_1981502218",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F6C6A02_a4ff769c8b73584a_1819863220",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F836802_a4ff769c8b73584a_1169274296",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F844902_a4ff769c8b73584a_1944440678",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F866802_a4ff769c8b73584a_1762676160",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F866802_a4ff769c8b73584a_1822208161",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F866802_a4ff769c8b73584a_1843484162",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FA04602_a4ff769c8b73584a_1842869608",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FA04602_a4ff769c8b73584a_1889396609",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FA04602_a4ff769c8b73584a_1902633610",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FA04602_a4ff769c8b73584a_1908496611",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FA04602_a4ff769c8b73584a_1916703612",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FA04602_a4ff769c8b73584a_1939262613",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEA6702_a4ff769c8b73584a_2001482956",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEA6702_a4ff769c8b73584a_2011139957",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEB6702_a4ff769c8b73584a_2106653148",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/7SEAYU9HM7BKQRLN63YKZRJU6.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEC6702_a4ff769c8b73584a_1092069326",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1601597029",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1652962030",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1654995031",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1658619032",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1661293033",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1684919035",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1944103079",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1973083080",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1974344081",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1998433082",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F134A02_a4ff769c8b73584a_2031803516",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F134A02_a4ff769c8b73584a_2088982518",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F134A02_a4ff769c8b73584a_2121762519",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1634938741",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1669166742",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1670644743",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1675318744",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1677766745",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1679886746",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1722840747",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1730985748",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1732378749",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F154B02_a4ff769c8b73584a_1594496633",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F189202_a4ff769c8b73584a_1939830357",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F189202_a4ff769c8b73584a_2036575358",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F189202_a4ff769c8b73584a_2068108359",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F189202_a4ff769c8b73584a_2070187360",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F189202_a4ff769c8b73584a_2075435361",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F189202_a4ff769c8b73584a_2078437362",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F244A02_a4ff769c8b73584a_1697780039",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F244A02_a4ff769c8b73584a_1713101040",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F244A02_a4ff769c8b73584a_1743664041",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1858823101",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1866480102",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1866484103",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1866486104",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1870342105",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1870346106",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1870349107",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1959176108",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1987041109",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1990617110",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1998604111",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_2009170112",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_2032950113",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_2077272114",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F9A6802_a4ff769c8b73584a_1901994286",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F9A6802_a4ff769c8b73584a_1936381287",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEB6702_a4ff769c8b73584a_1945949144",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEB6702_a4ff769c8b73584a_2036719146",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEB6702_a4ff769c8b73584a_2049012147",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/EZQKI0BTIJFY59AEJ9WAPABGT.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEC6702_a4ff769c8b73584a_1266431328",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F084B02_a4ff769c8b73584a_1432198794",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F084B02_a4ff769c8b73584a_1460131795",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1678641034",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1686530036",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1794761057",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4A02_a4ff769c8b73584a_1920048078",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F0B4B02_a4ff769c8b73584a_1334516441",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F124B02_a4ff769c8b73584a_2136237891",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F134A02_a4ff769c8b73584a_1982758514",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F134A02_a4ff769c8b73584a_2012978515",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F134A02_a4ff769c8b73584a_2075126517",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F134A02_a4ff769c8b73584a_2133763520",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1432925735",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F144A02_a4ff769c8b73584a_1444300736",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F214A02_a4ff769c8b73584a_1153817498",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F214A02_a4ff769c8b73584a_1627676507",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F244A02_a4ff769c8b73584a_1686950038",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F4F7C02_a4ff769c8b73584a_1526303607",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F4F7C02_a4ff769c8b73584a_1537537608",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1706675093",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1778430094",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1824195095",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1834008096",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1848536097",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1850457098",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1858817099",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_1858821100",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F826802_a4ff769c8b73584a_2132608115",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F836802_a4ff769c8b73584a_1087832292",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F836802_a4ff769c8b73584a_1114807293",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F836802_a4ff769c8b73584a_1136634294",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F836802_a4ff769c8b73584a_1142851295",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F886802_a4ff769c8b73584a_2139743902",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29F9A6802_a4ff769c8b73584a_1783123285",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEB6702_a4ff769c8b73584a_1871745143",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEB6702_a4ff769c8b73584a_1980330145",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEB6702_a4ff769c8b73584a_2145415149",
			"/Game/Map/RouteMap/CH_SubHuman/OWL_SubHuman/_Generated_/95SYS4BRL47LIT67XPRZUGI03.OWL_SubHuman:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF29FEC6702_a4ff769c8b73584a_1239162327",
		}
		
		local tank_patch_target_class_list = {
			-- CHAPTER 6の骨の柱の先の隠し通路のFlabを出現させる。(出現させないとバッヂが取れなくなる。)
			"/Game/Map/RouteMap/CH_Guru/OWL_Guru/_Generated_/05ONK8QHWQAFDQYZL7H6CJ22S.OWL_Guru:PersistentLevel.SevTargetPoint_Enemy_UAID_047C160FF2A8361002_9e392988188d8fc6_2129200124",
			
			-- CHAPTER 6のボス戦後の脱出時にFlabが出てこなくてハマる。
			"/Game/Map/RouteMap/CH_Guru/OWL_Guru/_Generated_/8C0KZE6Y9W1QPE0DYKU4AXP23.OWL_Guru:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_047C160FF2A8781D02_aca934691d95e35b_1930050861",
		}
		
		local is_target = false
		local target_path = nil
		local enemy_set_id = nil
		
		for i, path in ipairs(walker_patch_target_class_list) do
			-- print(target_object:GetFullName())
			-- print(("BP_SevTargetPoint_EnemySet_C " .. path))
			if ("BP_SevTargetPoint_EnemySet_C " .. path) == target_object:GetFullName() then
				is_target = true
				target_path = path
				enemy_set_id = "TEST_TestZombies"
				break
			end
		end
		
		for i, path in ipairs(tank_patch_target_class_list) do
			-- print(target_object:GetFullName())
			-- print(("BP_SevTargetPoint_EnemySet_C " .. path))
			if ("BP_SevTargetPoint_EnemySet_C " .. path) == target_object:GetFullName() then
				is_target = true
				target_path = path
				enemy_set_id = "TEST_MultiTypeZombies"
				break
			end
		end
		
		
		if target_path == nil then
			-- print("対象外：" .. target_object:GetFullName())
			-- print(target_object.mEnemySetID:ToString())
			return
		end
		
		-- 「mEnemySetID」がセットされるのを待ち、セットされたら書き換える。
		local function patch()
			-- local patch_target_object = StaticFindObject(target_path)
			local patch_target_object = target_object
			if not(patch_target_object:IsValid()) or patch_target_object.mEnemySetID:ToString() == "None" then
				-- print("まだ初期化前？")
				
				ExecuteWithDelay(1, patch)
				return
			end
			
			-- print("パッチ実行:" .. patch_target_object.mEnemySetID:ToString())
			patch_target_object.mEnemySetID = FName(enemy_set_id)
		end
		ExecuteWithDelay(1, patch)
	end
end)
