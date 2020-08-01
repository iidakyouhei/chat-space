## grops_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :grops_users
- has_many :messages
- has_many :users, through: :grops_users

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true,unique:true|
|mail|string|null: false|
|pass|string|null: false|


### Association
- has_many :grops_users
- has_many :messages
- has_many :groups, through: :grops_users

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|text|string|
|image|string|

### Association
- belongs_to :group
- belongs_to :user
