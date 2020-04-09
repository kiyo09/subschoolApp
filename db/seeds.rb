# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# タグジャンル 1~11
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

# タグタイプ 12~16
Stag.create(tag: "家でも楽しめる")
Stag.create(tag: "外で楽しめる")
Stag.create(tag: "子どもも楽しめる")
Stag.create(tag: "月額1,000円以下プランあり")
Stag.create(tag: "無料お試しあり")

# サブスクと関連タグ
Subschool.create(
  name: "amazon prime video",
  image:File.open("app/assets/images/subschools/amazon.png"),
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
  image:File.open("app/assets/images/subschools/Netflix_icon.png"),
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
  image:File.open("app/assets/images/subschools/Spotify.png"),
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
  image:File.open("app/assets/images/subschools/AppleMusic.png"),
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

# ここから続き
Subschool.create(
  name: "Kindle Unlimited",
  image:File.open("app/assets/images/subschools/Kindle.jpeg"),
  )
StagRelation.create(
  stag_id: 4,
  subschool_id: 5,
  )
StagRelation.create(
  stag_id: 12,
  subschool_id: 5,
  )
StagRelation.create(
  stag_id: 15,
  subschool_id: 5,
  )
StagRelation.create(
  stag_id: 16,
  subschool_id: 5,
  )

Subschool.create(
  name: "dマガジン",
  image:File.open("app/assets/images/subschools/dmagazin.jpeg"),
  )
StagRelation.create(
  stag_id: 4,
  subschool_id: 6,
  )
StagRelation.create(
  stag_id: 12,
  subschool_id: 6,
  )
StagRelation.create(
  stag_id: 15,
  subschool_id: 6,
  )
StagRelation.create(
  stag_id: 16,
  subschool_id: 6,
  )

Subschool.create(
  name: "楽天マガジン",
  image:File.open("app/assets/images/subschools/Rmagazin.jpeg"),
  )
StagRelation.create(
  stag_id: 4,
  subschool_id: 7,
  )
StagRelation.create(
  stag_id: 12,
  subschool_id: 7,
  )
StagRelation.create(
  stag_id: 15,
  subschool_id: 7,
  )
StagRelation.create(
  stag_id: 16,
  subschool_id: 7,
  )

Subschool.create(
  name: "Nintendo Switch Online",
  image:File.open("app/assets/images/subschools/Nintendo.jpeg"),
  )
StagRelation.create(
  stag_id: 5,
  subschool_id: 8,
  )
StagRelation.create(
  stag_id: 12,
  subschool_id: 8,
  )
StagRelation.create(
  stag_id: 14,
  subschool_id: 8,
  )
StagRelation.create(
  stag_id: 15,
  subschool_id: 8,
  )

Subschool.create(
  name: "always LUNCH",
  image:File.open("app/assets/images/subschools/LUNCH.jpeg"),
  )
StagRelation.create(
  stag_id: 1,
  subschool_id: 9,
  )
StagRelation.create(
  stag_id: 13,
  subschool_id: 9,
  )


Subschool.create(
  name: "ゼロcafe",
  image:File.open("app/assets/images/subschools/zerocafe.jpeg"),
  )
StagRelation.create(
  stag_id: 1,
  subschool_id: 10,
  )
StagRelation.create(
  stag_id: 13,
  subschool_id: 10,
  )

Subschool.create(
  name: "野郎ラーメン",
  image:File.open("app/assets/images/subschools/野郎ラーメン.jpeg"),
  )
StagRelation.create(
  stag_id: 1,
  subschool_id: 11,
  )
StagRelation.create(
  stag_id: 13,
  subschool_id: 11,
  )

Subschool.create(
  name: "MECHAKARI",
  image:File.open("app/assets/images/subschools/metyakari.jpeg"),
  )
StagRelation.create(
  stag_id: 8,
  subschool_id: 12,
  )
StagRelation.create(
  stag_id: 12,
  subschool_id: 12,
  )

Subschool.create(
  name: "MEZON",
  image:File.open("app/assets/images/subschools/mezon.jpeg"),
  )
StagRelation.create(
  stag_id: 9,
  subschool_id: 13,
  )
StagRelation.create(
  stag_id: 13,
  subschool_id: 13,
  )

Subschool.create(
  name: "トイサブ！",
  image:File.open("app/assets/images/subschools/toysub.jpeg"),
  )
StagRelation.create(
  stag_id: 10,
  subschool_id: 14,
  )
StagRelation.create(
  stag_id: 12,
  subschool_id: 14,
  )
StagRelation.create(
  stag_id: 14,
  subschool_id: 14,
  )


