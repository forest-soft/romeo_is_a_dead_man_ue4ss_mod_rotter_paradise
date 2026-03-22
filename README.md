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
4. 「UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip」をダウンロードしてください。  
   UE4SSをUnreal Engine 5.6のゲームで動かすのに必要なファイルです。  
   * https://github.com/forest-soft/ue4ss_signatures/releases/download/v1.0.0/UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip  
5. 「UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip」を解凍して出てきた以下のフォルダをUE4SSのフォルダ直下にコピーしてください。  
   * UE4SS_Signatures

   「C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64\ue4ss」フォルダの中身が以下のようになっていればOKです。  
   ue4ss  
   　∟Mods  
   　∟UE4SS_Signatures ←コピーしたフォルダ  
   　　∟StaticConstructObject.lua  
   　∟LICENSE  
   　∟UE4SS.dll  
   　∟UE4SS-settings.ini
6. UE4SSのフォルダ直下にある「UE4SS-settings.ini」を以下のように書き換えてください。  
   * Before  
   71行目：[EngineVersionOverride]  
   72行目：MajorVersion =   
   72行目：MinorVersion =  
   * After  
   71行目：[EngineVersionOverride]  
   72行目：MajorVersion = 5  
   72行目：MinorVersion = 6 
7. 「Rotter Paradise MOD」をダウンロードしてください。
   * https://github.com/forest-soft/romeo_is_a_dead_man_ue4ss_mod_rotter_paradise/releases  
   最新バージョンの「Assets」欄を開き、「Source code (zip) 」から「romeo_is_a_dead_man_ue4ss_mod_rotter_paradise-1.0.0.zip」をダウンロードしてください。  
   ※ファイル名末尾のバージョン番号はタイミングによって変わります。  
8. 「romeo_is_a_dead_man_ue4ss_mod_rotter_paradise-1.0.0.zip」を解凍して出てきた以下のフォルダをUE4SSのModsフォルダ直下にコピーしてください。  
   * romeo_is_a_dead_man_ue4ss_mod_rotter_paradise

   最終的に以下のようなフォルダ&ファイル構成になっていればOKです。  
   * C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64  
     * ue4ss　←「2.」でコピーしたフォルダ  
       * Mods  
         * romeo_is_a_dead_man_ue4ss_mod_rotter_paradise　←「7.」でコピーしたフォルダ  
           * scripts  
             * main.lua  
           * enabled.txt  
       * UE4SS_Signatures　←「5.」でコピーしたフォルダ
         * StaticConstructObject.lua
       * UE4SS.dll
       * UE4SS-settings.ini
     * dwmapi.dll　←「2.」でコピーしたファイル  
     * SevGame-Win64-Shipping.exe  
9. ゲームを起動して適当なステージに移動し、ロッターが増えていれば成功です！  
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
