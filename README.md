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