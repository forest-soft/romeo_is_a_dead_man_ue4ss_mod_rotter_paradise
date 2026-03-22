# ROMEO IS A DEAD MAN：Rotter Paradise MOD(UE4SS)

ここに画像

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

# 使い方
1. 「UE4SS v3.0.1 Beta」をダウンロードしてください。
    * https://github.com/UE4SS-RE/RE-UE4SS/releases/tag/experimental-latest
    * ページの一番下の「Assets」欄を開き、「UE4SS_v3.0.1-942-gc0335505.zip」をダウンロードしてください。  
   ファイル名の「942-gc0335505」の部分はダウンロードするタイミングによって変化します。  
2. 上記のzipファイルを解凍して出てきた以下のフォルダ&ファイルをROMEO IS A DEAD MANのインストールフォルダにある「SevGame-Win64-Shipping.exe」と同じ階層にコピーしてください。
「SevGame-Win64-Shipping.exe」は「C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64」等にあります。
    * ue4ss  
    * dwmapi.dll  
3. 「UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip」をダウンロードしてください。  
   UE4SSをUnreal Engine 5.6のゲームで動かすのに必要なファイルです。  
   * https://github.com/forest-soft/ue4ss_signatures/releases/download/v1.0.0/UE4SS_Signatures_ROMEO_IS_A_DEAD_MAN.zip  
4. 上記Zipファイルを解凍して出てきた以下のフォルダをUE4SSのフォルダ直下にコピーしてください。  
   * UE4SS_Signatures

   「C:\Program Files (x86)\Steam\steamapps\common\ROMEO IS A DEAD MAN\SevGame\Binaries\Win64\ue4ss」フォルダの中身が以下のようになっていればOKです。  
   ue4ss  
   　∟Mods  
   　∟UE4SS_Signatures  
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
7. 「Rotter Paradise MOD」をダウンロードしてください。
   * https://github.com/forest-soft/romeo_is_a_dead_man_ue4ss_mod_rotter_paradise/releases
   リリース作る。
