# テーブル設計

## usersテーブル
| Colum      | Type    | Option   |
| ---------- | ------- | -------- |
| email      | strings | NOT NULL |
| password   | strings | NOT NULL |
| name       | strings | NOT NULL |
| profile    | text    | NOT NULL |
| occupation | text    | NOT NULL |
| position   | text    | NOT NULL |

## Association
- belongs_to:prototype
- belongs_to:comments

## prototypesテーブル
| Colum        | Type          | Option        |
| ------------ | ------------- | ------------- |
| title        | strings       | NOT NULL      |
| catch_copy   | text          | NOT NULL      |
| concept      | text          | NOT NULL      |
| user         | references    |               |


## Association
- belongs_to : users
- has_many : prototypes

## commentsテーブル
| Colum     | Type       | Option   |
| --------- | ---------- | -------- |
| text      | text       | NOT NULL |
| user      | references |          |
| prototype | references |          |

## Association
- has_many :prototypes
- has_many :users