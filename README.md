# README

## アプリケーション名

travelmap

## アプリケーション概要

写真の投稿と他ユーザーの投稿の閲覧が出来ます。

## URL

## テスト用アカウント

# email 
test@test
# password
111111
## Basic認証

# ID
admin
# pass
2222

## 利用方法

写真の投稿により自分がそのロケーションに足を運びどう思ったかを改めて再認識し、
自分の感動を他のユーザーにシェア出来る。
また他のユーザーの投稿を見て自分もその場所にいきたいとまた思う

## 目指した課題解決

計5点あります。
1点目、日頃から残業時間が長くストレスが溜まっており、休みの日は日頃のストレスを解消したいと思っている。
2点目、コロナ禍で外出自体が減り、外に出たくても街中には行きたくないという不満。
3点目、街中ではなく自然が多く、人目を気にする事なく気ままにリラックス出来る環境に行きたいが、それが何処にあるかか分からない。
4点目、実際に綺麗な風景を見に行き、写真をとりSNSにシェアするが、ニッチな写真の為他ユーザーの反応があまり良くない為投稿自体を躊躇する。
5点目、そういった写真を気兼ねなくシェアするサイトが欲しい。

## 洗い出した要件

・写真の投稿機能
・他ユーザーの投稿を見れるようにした。(且つその写真をどこで撮ったか、行き方などが簡単に見れるようにした。)
・未登録のユーザーが初めてサイトを閲覧した時も同様に投稿されたないようが閲覧出来るようにした。(S3の導入)

## 実装した機能
・投稿者本人だけには編集・削除が出来るように,他ユーザーが詳細ページに遷移した時は編集・削除ボタンが出ないようにした。

# GIF URL 
https://i.gyazo.com/c3200d9ef9f40657deb9e3ff85663fac.gif

・直接URLを打ち込んで編集ページに遷移しようとした場合はトップページに遷移する

# GIF URL 
https://i.gyazo.com/cc6be07ae3ecce8cf39f70d32b194567.gif


## 実装予定の機能
google mapのAPIを導入し、各ユーザーが投稿した住所が自動でgoogle mapと連動し詳細ページでURLをタップするとgoogle mapに遷移するようにしていきたい

## データベース設計

# GIF URL
 https://i.gyazo.com/c59c6d039215beb7d21fc4ee33c06e56.png

cd portfolio/
cd travelmap/
rails s

# git clone 
git clone https://github.com/Tokunaga-11852/travelmap.git


   users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| encrypted_password | string | null: false               |
| email              | string | null: false, unique: true |

  Association
  
   - has_many :views

    view テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- |------------------------------- |
| title         | string     | null: false                    |
| information   | text       | null: false                    |
| address       | string     | null: false                    |
| access        | string     | null: false                    |
| shop          | string     | null: false                    |
| phone_number  | string     | null: false                    |
| opening_hours | string     | null: false                    |
| price         | string     | null: false                    |
| user          | references | null: false, foreign_key: true |

  Association

  - belongs_to :user