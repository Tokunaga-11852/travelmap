# README

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
| phone_number  | integer    | null: false                    |
| opening_hours | string     | null: false                    |
| price         | string     | null: false                    |
| user          | references | null: false, foreign_key: true |

  Association

  - belongs_to :user