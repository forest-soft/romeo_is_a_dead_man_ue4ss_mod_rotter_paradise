# ROMEO IS A DEAD MAN：Rotter Paradise MOD(UE4SS)

![(READMEサムネ.png)](https://raw.githubusercontent.com/forest-soft/romeo_is_a_dead_man_ue4ss_mod_rotter_paradise/refs/heads/main/README%E3%82%B5%E3%83%A0%E3%83%8D.png)

ショッピングモールに大量のゾンビ！  
でも本作で出てくるゾンビはちょっと数が少なくて寂しいですよね？！  
そんな時は「Rotter Paradise MOD」の出番です！  
道中に出てくる敵をすべて「ロッター」に書き換え、出現数を10倍にします！  
※一部のイベントシーンやパレス・アテネの敵は変わりません。  
※最終ステージは敵の数を増やすとなぜが敵が出現しなくなるため、敵の数は増えません。  

A shopping mall full of zombies!  
But the number of zombies in this game is a little small, which is a bit disappointing, isn't it?!  
That's where the "Rotter Paradise MOD" comes in!  
It changes all the enemies you encounter along the way to "Rotter" and increases their numbers tenfold!  
*Some event scenes and enemies in Palace Athene remain unchanged.  
*For some reason, increasing the number of enemies in the final stage causes them to stop appearing, so the number of enemies will not increase.  

# 動作環境
Windows10、Steam版で動作確認をしました。  
UE4SSは2026年03月22日時点の「v3.0.1-942」にて動作確認をしました。  

# インストール方法
1. 「UE4SS v3.0.1 Beta」をダウンロードしてください。
    * https://github.com/UE4SS-RE/RE-UE4SS/releases/tag/experimental-latest
    * ページの一番下の「Assets」欄を開き、「UE4SS_v3.0.1-942-gc0335505.zip」をダウンロードしてください。  
   ファイル名の「942-gc0335505」の部分はダウンロードするタイミングによって変化します。  
2. 「UE4SS_v3.0.1-942-gc0335505.zip」を解凍して出てきた以下のフォルダ&ファイルをROMEO IS A DEAD MANのインストールフォルダにある「SevGame-Win64-Shipping.exe」と同じ階層にコピーしてください。  
「SevGame-Win64-Shipping.exe」は「C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64」等にあります。  
    * ue4ss  
    * dwmapi.dll  
3. 「UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip」をダウンロードしてください。  
   UE4SSをUnreal Engine 5.6のゲームで動かすのに必要なファイルです。  
   * https://github.com/forest-soft/ue4ss_signatures/releases/download/v1.0.0/UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip  
4. 「UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip」を解凍して出てきた以下のフォルダをUE4SSのフォルダ直下にコピーしてください。  
   * UE4SS_Signatures

   「C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64\ue4ss」フォルダの中身が以下のようになっていればOKです。  
   ue4ss  
   　∟Mods  
   　∟UE4SS_Signatures ←コピーしたフォルダ  
   　　∟StaticConstructObject.lua  
   　∟LICENSE  
   　∟UE4SS.dll  
   　∟UE4SS-settings.ini
5. UE4SSのフォルダ直下にある「UE4SS-settings.ini」を以下のように書き換えてください。  
   * Before  
   71行目：[EngineVersionOverride]  
   72行目：MajorVersion =   
   72行目：MinorVersion =  
   * After  
   71行目：[EngineVersionOverride]  
   72行目：MajorVersion = 5  
   72行目：MinorVersion = 6 
6. 「Rotter Paradise MOD」をダウンロードしてください。
   * https://github.com/forest-soft/romeo_is_a_dead_man_ue4ss_mod_rotter_paradise/releases  
   最新バージョンの「Assets」欄を開き、「romeo_is_a_dead_man_ue4ss_mod_rotter_paradise.zip」をダウンロードしてください。  
7. 「romeo_is_a_dead_man_ue4ss_mod_rotter_paradise.zip」を解凍して出てきた以下のフォルダをUE4SSのModsフォルダ直下にコピーしてください。  
   * romeo_is_a_dead_man_ue4ss_mod_rotter_paradise

   最終的に以下のようなフォルダ&ファイル構成になっていればOKです。  
   * C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64  
     * ue4ss　←「2.」でコピーしたフォルダ  
       * Mods  
         * romeo_is_a_dead_man_ue4ss_mod_rotter_paradise　←「7.」でコピーしたフォルダ  
           * scripts  
             * main.lua  
           * enabled.txt  
       * UE4SS_Signatures　←「4.」でコピーしたフォルダ
         * StaticConstructObject.lua
       * UE4SS.dll
       * UE4SS-settings.ini
     * dwmapi.dll　←「2.」でコピーしたファイル  
     * SevGame-Win64-Shipping.exe  
8. ゲームを起動して適当なステージに移動し、ロッターが増えていれば成功です！  
   ※敵の数が増えることによってそれなりに重くなるので、セーブデータをロードする前に画質設定を落として様子を見てください。  
   ショッピングモールのステージがわかりやすいです。  
   うまく行かない場合はUE4SSフォルダ直下に生成されている「UE4SS.log」に何かエラーが出ていないかチェックしてみてください。  

# MODを無効化する方法  
「romeo_is_a_dead_man_ue4ss_mod_rotter_paradise」フォルダ直下に「enabled.txt」のファイルがあるとUE4SSが起動時に自動でMODを読み込みます。  
なので「enabled.txt」を「_enabled.txt」等の別の名前に変更するとMODを無効化できます。  

UE4SSを無効化したい場合は「C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64」直下にある「dwmapi.dll」の拡張子を「dwmapi.dll_xxx」という感じで「dll」以外に変更してください。  
そうするとUnreal Engineの動的DLL読み込み機能でUE4SSが読み込まれなくなります。  

# 出現する敵を変更する方法  
「romeo_is_a_dead_man_ue4ss_mod_rotter_paradise\scripts\main.lua」のファイルがMODの本体です。  
このファイルをテキストエディタで開いてください。  

22行目あたりから  
～～～～～～～～～～～～～～～～～～～～～～～  
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
～～～～～～～～～～～～～～～～～～～～～～～  
というように出現する敵を設定できるようにしてあります。  
「Walker」 = 「Rotter」です。  
設定エリアのすぐ下に敵のIDや設定例を書いてあるので、好きなように書き換えてみてください！  

ゲーム起動中に書き換えても反映されないのでいったんゲームを再起動してください。  
ゲームの再起動が面倒な場合はUE4SSの「UE4SS-settings.ini」内の  
GuiConsoleEnabled = 0  
GuiConsoleVisible = 0  
を「1」にして、UE4SSのコンソールウインドウを表示してください。  
このコンソールウインドウの「Console」タブの中の「Restart All Mods」というボタンを押すと編集内容を即反映することができます。  
その後ロードやステージに入りなおすと書き換えた敵が出てきます！  


# Operating Environment  
Tested on Windows 10, Steam version.  
UE4SS was tested with version "v3.0.1-942" as of March 22, 2026.  

# Installation  
1. Download "UE4SS v3.0.1 Beta".  
    * https://github.com/UE4SS-RE/RE-UE4SS/releases/tag/experimental-latest
    * Open the "Assets" section at the bottom of the page and download "UE4SS_v3.0.1-942-gc0335505.zip".  
   The "942-gc0335505" part of the filename will change depending on when you download it.  
2. Unzip "UE4SS_v3.0.1-942-gc0335505.zip" and copy the following folders and files to the same directory as "SevGame-Win64-Shipping.exe" in the ROMEO IS A DEAD MAN installation folder.  
"SevGame-Win64-Shipping.exe" can be found in locations such as "C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64".  
    * ue4ss  
    * dwmapi.dll  
3. Download "UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip".  
   These are the files needed to run UE4SS in an Unreal Engine 5.6 game.  
   * https://github.com/forest-soft/ue4ss_signatures/releases/download/v1.0.0/UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip  
4. Unzip "UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip" and copy the following folders directly into the UE4SS folder.  
   * UE4SS_Signatures  

   The contents of the folder "C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64\ue4ss" should look like this:  
   ue4ss  
   　∟Mods  
   　∟UE4SS_Signatures ←copied folder  
   　　∟StaticConstructObject.lua  
   　∟LICENSE  
   　∟UE4SS.dll  
   　∟UE4SS-settings.ini
5. Rewrite the "UE4SS-settings.ini" file located directly under the UE4SS folder as follows:  
   * Before  
   71行目：[EngineVersionOverride]  
   72行目：MajorVersion =   
   72行目：MinorVersion =  
   * After  
   71行目：[EngineVersionOverride]  
   72行目：MajorVersion = 5  
   72行目：MinorVersion = 6 
6. Download the "Rotter Paradise MOD".  
   * https://github.com/forest-soft/romeo_is_a_dead_man_ue4ss_mod_rotter_paradise/releases  
   Open the "Assets" section of the latest version and download "romeo_is_a_dead_man_ue4ss_mod_rotter_paradise.zip".  
7. Unzip "romeo_is_a_dead_man_ue4ss_mod_rotter_paradise.zip" and copy the following folders directly into the Mods folder of UE4SS.  
   * romeo_is_a_dead_man_ue4ss_mod_rotter_paradise

   The final folder and file structure should look like this:  
   * C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64  
     * ue4ss　←The folder copied in step 2  
       * Mods  
         * romeo_is_a_dead_man_ue4ss_mod_rotter_paradise　←The folder copied in step 7  
           * scripts  
             * main.lua  
           * enabled.txt  
       * UE4SS_Signatures　←The folder copied in step 4  
         * StaticConstructObject.lua
       * UE4SS.dll
       * UE4SS-settings.ini
     * dwmapi.dll　←The files copied in step 2  
     * SevGame-Win64-Shipping.exe  
8. Start the game, move to any stage, and if the number of Rotters increases, you've succeeded!  
   *The game may become somewhat laggy as the number of enemies increases, so please try lowering the graphics settings before loading your save data to see how it performs.  
   The effect is easier to see on a shopping mall stage.  
   If it doesn't work, check the "UE4SS.log" file generated directly under the UE4SS folder for any errors.  

# How to disable mods  
If there is an "enabled.txt" file directly under the "romeo_is_a_dead_man_ue4ss_mod_rotter_paradise" folder, UE4SS will automatically load the MOD when it starts.  
Therefore, you can disable the MOD by changing the name of "enabled.txt" to something else, such as "_enabled.txt".  

If you want to disable UE4SS, change the file extension of "dwmapi.dll" located directly under "C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64" to something other than ".dll", such as "dwmapi.dll_xxx".  
This will prevent UE4SS from being loaded by Unreal Engine's dynamic DLL loading function.  

# How to change the enemies that appear  
The main file of the MOD is "romeo_is_a_dead_man_ue4ss_mod_rotter_paradise\scripts\main.lua".  
Open this file with a text editor.  

Starting around line 22, you can configure which enemies appear as follows:  
～～～～～～～～～～～～～～～～～～～～～～～  
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
～～～～～～～～～～～～～～～～～～～～～～～  
"Walker" = "Rotter".  
The enemy ID and example settings are written just below the settings area, so feel free to change them as you like!  

Changes made while the game is running will not be reflected, so please restart the game.  
If restarting the game is inconvenient, change the following lines in UE4SS's "UE4SS-settings.ini" file to "1":  
GuiConsoleEnabled = 0  
GuiConsoleVisible = 0  
To display the UE4SS console window, press the "Restart All Mods" button in the "Console" tab of this console window to immediately apply your edits.  
After that, reload the game or re-enter the stage, and the modified enemies will appear!  
