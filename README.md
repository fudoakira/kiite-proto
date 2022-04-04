# テーブル設計

## Usersテーブル

|Column            |Type  |Options    |
|------------------|------|-----------|
|nickname          |string|null: false|
|email             |string|null: false|
|encrypted_password|string|null: false|

### Association
- has_many :messages
- has_many :tag_users
- has_many :tag, through: :tag_users
- has_many :ratings
- has_many :favorites
- has_one :profile

## Messagesテーブル

|Column |Type      |Options                       |
|-------|----------|------------------------------|
|content|text      |                              |
|user   |references|null: false, foreign_key: true|

### Association

- belongs_to :user

## Tagsテーブル

|Column  |Type  |Options|
|--------|------|-------|
|tag_name|string|       |

### Association

- has_many :tag_users
- has_many :users, through: :tag_users

## Tag_usersテーブル

|Column|Type      |Options                       |
|------|----------|------------------------------|
|user  |references|null: false, foreign_key: true|
|tag   |references|null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :tag

## Ratingsテーブル

|Column|Type      |Options                       |
|------|----------|------------------------------|
|rate  |float     |null: false, default: 0       |
|user  |references|null: false, foreign_key: true|

### Association

- belongs_to :user

## Favoritesテーブル

|Column|Type      |Options                       |
|------|----------|------------------------------|
|user  |references|null: false, foreign_key: true|

### Association

- belongs_to :user

## Profilesテーブル

|Column   |Type  |Options|
|---------|------|-------|
|content  |text  |       |
|twitter  |string|       |
|instagram|string|       |

### Association

- belongs_to :user
