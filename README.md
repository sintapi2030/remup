# remup
 自宅で楽しめる事ができるwebサイトがあれば良いなと
 思い作成しました。
 <p>映画：音楽などのサイトへリンクが飛ぶようになっています。
 <p>I wish I had a website that I could enjoy at home.
 I created it.
 <p>Movies: Links are linking to sites such as music.

# 説明：Description
[![Image from Gyazo](https://i.gyazo.com/a263a5e9f8d460c630f11a9e723420cf.gif)](https://gyazo.com/a263a5e9f8d460c630f11a9e723420cf)
背景をviewを動かすことにこだわりました。
<p>
現状の家でのエンタメを詰め込みました
<p> 
ジャンル各々で該当サイトへリンクが飛ぶ為、
<p>今後はユーザーのクレジット情報と紐ずけを行い、
<p>サイト内のみでエンタメを完結できる実装を行います。
<p>I was particular about moving the view in the background.
<p>
Packed with entertainment in the current home
<p>
Because links to the relevant site fluctuate for each genre,
<p>In the future, we will link with the user's credit information,
<p>Implementation that can complete entertainment only within the site.
 
# 開発環境:Development environment
Ruby 2.6.5
<p>Ruby on Rails ~> 6.0.0
<p>mysql 2
<p>haml-rails", ">= 1.0", '<= 2.0.1'

# Author
https://git.heroku.com/remup.git
<p>s79.matsushita.takuma@gmail.com

# データベース:datebase 

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
