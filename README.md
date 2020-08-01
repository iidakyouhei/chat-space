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
|group_id|integer|null: false|

### Association
- has_many :grops_user
- has_many :message
- has_many :user, through: :grops_user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|name|string|null: false, index: true,unique:true|
|mail|string|null: false|
|pass|string|null: false|


### Association
- has_many :grops_user
- has_many :message
- has_many :groups, through: :grops_user

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
