#内番検索ツール
##開発環境
  - ruby 2.0.0
  - Rails 4.1.2.rc1
  - gem 2.3.0
  - sqlite 3.7.13

##機能
  - 情報一覧表示
  - 情報新規登録
  - 情報の編集
  - 情報の削除
  - 情報の検索

##進捗
###「情報一覧表示」と「情報新規登録」を完成した。(2014年6月26日時点)
1. 新規登録formのバリデーション:
  - 氏名: 空欄不可
  - ふりがな: 空欄不可、平仮名のみ
  - 内線番号: 空欄不可、桁数指定
  - 部署: 選択式なのでバリデーション設定なし
  - 入力不正がある時に、エラーメッセージが表示

2. 「編集」6月30日に完成(マージ未)

3. 「削除」「検索」は2014年7月1日〜


