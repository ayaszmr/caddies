# caddies

### ゴルフ場で働くキャディさんたちの業務管理、連絡アプリ
![rails](https://user-images.githubusercontent.com/56391010/88501741-42a9e380-d007-11ea-9805-feed3854699c.png) ![aws](https://user-images.githubusercontent.com/56391010/88502042-50139d80-d008-11ea-911f-b6ed99c42270.jpeg)


## URL
http://18.180.7.159/
 
# DEMO

### サインアップ
![signup](https://user-images.githubusercontent.com/56391010/88497129-67e42500-cffa-11ea-9e2e-1c6e9c0e716c.gif)

### ログイン
![login](https://user-images.githubusercontent.com/56391010/88478418-1482c000-cf83-11ea-96a7-6ff55ea576f9.gif)

### マイページ
![mypage](https://user-images.githubusercontent.com/56391010/88497167-7fbba900-cffa-11ea-84af-0444dcba3c9c.gif)

### シフトスケジュール登録
![report](https://user-images.githubusercontent.com/56391010/88497203-9d890e00-cffa-11ea-90c3-8cb13ba48dff.gif)

### シフト検索
![search](https://user-images.githubusercontent.com/56391010/88497221-aed21a80-cffa-11ea-92ab-630388201e3d.gif)

# 作成背景
 
その日に上がった順番、担当したお客様の数で決まる明日の出番表を作るアプリです。今まで紙ベースだった出番表を簡単に作成できるように、また明日の自分の出勤予定をわざわざ数えたりその際、数え間違えたりすることを改善したくて作成しました。 
他にもグループ間で連絡を取れるようにメッセージ機能をつけたり、その月にもったお客様の数や出勤日数がすぐ確認できたら良いなと思いマイページで確認できるようにしました。
 
# Requirement
 
* Ruby 2.5.1
* Rails 5.0.7.2
* mysql2 0.6.0
* EC2
* Unicorn
* Nginx

# Note
 
トップページの登録ボタンをからその日の業務の報告ページにいけます.
バック数に応じて明日の業務のスケジュールが決まり登録が完了すると一覧ページで確認できます.
また連絡事項を班ごとで共有できるようにグループ毎にメッセージも交換できます(非同期通信）。
その日の天気に左右される仕事なので、天気もすぐ確認できるようにお天気のAPIも実装中です。
 
# Author
 
## ayaszmr
<a href="https://github.com/ayaszmr"><img src="https://avatars0.githubusercontent.com/u/56391010?s=460&v=4" height="100px;" /></a>
 
