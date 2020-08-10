# remup
 自宅で楽しめる事ができるwebサイトがあれば良いなと
 思い作成しました。
 映画：音楽などのサイトへリンクが飛ぶようになっています。



## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|

### Association
- has_many :comments
- has_many :likes
- has_many :posts

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|content|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :likes

## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|comment_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :comment

## potsテーブル
|Column|Type|Options|
|------|----|-------|
|url|text|null: false|
|content|string|null: false|
|user_id|integer|null: false, foreign_key: true|


### Association
- belongs_to :user
