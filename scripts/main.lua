print("[Rotter Paradise] OK")




--[[
■メモ
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

ExecuteInGameThread(function()
	
	-- 敵書き換え(通常マップ)
	local dt_enemy_set_list = StaticFindObject("/Game/DataTable/EnemySet/DT_EnemySetList.DT_EnemySetList")
	if dt_enemy_set_list:IsValid() then
		
		-- City Hallのパッチ用にWalkerのデータを用意する。
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
			
			target_row.Enemy1 = "ESpawnAICharaID_Walker"
			target_row.Enemy2 = "ESpawnAICharaID_Walker"
			target_row.Enemy3 = "ESpawnAICharaID_Walker"
			
			target_row.Enemy4 = "ESpawnAICharaID_Walker"
			target_row.Enemy5 = "ESpawnAICharaID_Walker"
			
			target_row.Enemy6 = "ESpawnAICharaID_Walker"
			target_row.Enemy7 = "ESpawnAICharaID_Walker"
			target_row.Enemy8 = "ESpawnAICharaID_Walker"
			target_row.Enemy9 = "ESpawnAICharaID_Walker"
			target_row.Enemy10 = "ESpawnAICharaID_Walker"
			
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
				patch_target_object.mEnemyCharaIDs[i] = 1
				
				patch_target_object.mEnemyCharaIDs[id_length + i] = 1
				patch_target_object.mEnemyCharaIDs[(id_length * 2) + i] = 1
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
		
		

		
		
		local city_hall_walker_patch_target_class_list = {
			-- 最初のファーストロッター戦でエリア外にロッターが出てしまうので書き換えないようにする。
			"/Game/Map/Cassini/OWL_CassiniSt/_Generated_/7ZBY7MXT8B2GRQC91JEGX9SAC.OWL_CassiniSt:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_7085C29403A8E48F02_c8fc790242ec4bde_2007637712",
			"/Game/Map/Cassini/OWL_CassiniSt/_Generated_/7ZBY7MXT8B2GRQC91JEGX9SAC.OWL_CassiniSt:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_7085C29403A8E48F02_c8fc790242ec4bde_2010096713",
			"/Game/Map/Cassini/OWL_CassiniSt/_Generated_/7ZBY7MXT8B2GRQC91JEGX9SAC.OWL_CassiniSt:PersistentLevel.BP_SevTargetPoint_EnemySet_C_UAID_7085C29403A8E48F02_c8fc790242ec4bde_2013145714",
			
			
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
		}
		
		local is_target = false
		local target_path = nil
		for i, path in ipairs(city_hall_walker_patch_target_class_list) do
			-- print(target_object:GetFullName())
			-- print(("BP_SevTargetPoint_EnemySet_C " .. path))
			if ("BP_SevTargetPoint_EnemySet_C " .. path) == target_object:GetFullName() then
				is_target = true
				target_path = path
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
				print("まだ初期化前？")
				
				ExecuteWithDelay(1, patch)
				return
			end
			
			print("パッチ実行:" .. patch_target_object.mEnemySetID:ToString())
			patch_target_object.mEnemySetID = FName("TEST_TestZombies")
		end
		ExecuteWithDelay(1, patch)
		
		
		
	end
end)
