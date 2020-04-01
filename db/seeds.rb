# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# タグジャンル
Stag.create(tag: "飲食")
Stag.create(tag: "音楽")
Stag.create(tag: "動画")
Stag.create(tag: "マンガ・小説・ビジネス書")
Stag.create(tag: "ゲーム")
Stag.create(tag: "恋愛")
Stag.create(tag: "コスメ")
Stag.create(tag: "ファッション")
Stag.create(tag: "美容室")
Stag.create(tag: "おもちゃ")
Stag.create(tag: "その他")

# タグタイプ
Stag.create(tag: "家でも楽しめる")
Stag.create(tag: "外で楽しめる")
Stag.create(tag: "子どもも楽しめる")
Stag.create(tag: "月額1,000円以下プランあり")
Stag.create(tag: "無料お試しあり")

# サブスクと関連タグ
Subschool.create(
  name: "amazon prime video",
  image:File.open("public/subschools/amazon.png"),
  )
StagRelation.create(
  stag_id: 3,
  subschool_id: 1,
  )
StagRelation.create(
  stag_id: 12,
  subschool_id: 1,
  )
StagRelation.create(
  stag_id: 15,
  subschool_id: 1,
  )

Subschool.create(
  name: "Netflix",
  image:File.open("public/subschools/Netflix_icon.png"),
  )
StagRelation.create(
  stag_id: 3,
  subschool_id: 2,
  )
StagRelation.create(
  stag_id: 12,
  subschool_id: 2,
  )
StagRelation.create(
  stag_id: 15,
  subschool_id: 2,
  )


Subschool.create(
  name: "Spotify",
  image:File.open("public/subschools/Spotify.png"),
  )
StagRelation.create(
  stag_id: 2,
  subschool_id: 3,
  )
StagRelation.create(
  stag_id: 12,
  subschool_id: 3,
  )
StagRelation.create(
  stag_id: 15,
  subschool_id: 3,
  )
StagRelation.create(
  stag_id: 16,
  subschool_id: 3,
  )

Subschool.create(
  name: "Apple Music",
  image:File.open("public/subschools/AppleMusic.png"),
  )
StagRelation.create(
  stag_id: 2,
  subschool_id: 4,
  )
StagRelation.create(
  stag_id: 12,
  subschool_id: 4,
  )
StagRelation.create(
  stag_id: 15,
  subschool_id: 4,
  )
StagRelation.create(
  stag_id: 16,
  subschool_id: 4,
  )


