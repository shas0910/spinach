# アプリケーション名
## Spinach

# アプリケーション概要
## 報連相に特化したビジネスチャットアプリ

# URL

# テスト用アカウント

# 利用方法
## ユーザー登録し、新規部屋を作成する。
## メッセージフォームから報連相を選んで投稿。
## コメントで投稿に関してコミュニケーションがとれる。

# 目指した課題解決
## ビジネス上で誰が何をしたのかが共有しやすくなる。
## 報連相が大事だというがそれができる環境があったほうが誰もが報連相しやすくなる。

# 洗い出した要件

# 画像・GIF

# 実装予定機能

# データベース設計

# ローカル動作方法







# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| user_name          | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :reads
- has_many :contents
- has_many :comments


## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user


## rooms テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| room_name | string | null: false |
| room_desc | text   | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :contents


## reads テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| content | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :content


## contents テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| content_type  | string     | null: false                    |
| content_title | string     | null: false                    |
| content_text  | text       | null: false                    |
| user          | references | null: false, foreign_key: true |
| room          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :room
- has_many :reads
- has_many :comments


## comments テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| comment_text | text       | null: false                    |
| user         | references | null: false, foreign_key: true |
| content      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :content