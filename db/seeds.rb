# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ＝＝＝＝＝＝＝＝＝＝＝Admin情報の追加＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

Admin.create!(
  email: 'admin@admin',
  password: 'password'
  )

# ＝＝＝＝＝＝＝＝＝＝＝初期Userの追加＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

12.times do |n|
  User.create!(
    name: "令和#{n + 1}太郎",
    nickname: "#{n + 1}太郎",
    email: "test#{n + 1}@test.com",
    residence_prefecture: "東京都",
    is_deleted: false,
    password: "password"
  )
end

# ＝＝＝＝＝＝＝＝＝＝＝初期Prefectureの追加＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

  ['東京都', '神奈川県', '千葉県', '埼玉県', '茨城県', '栃木県', '群馬県']
  .each do |name|
    Prefecture.create!(
      { prefecture_name: name }
    )
  end

# ＝＝＝＝＝＝＝＝＝＝＝初期Souvenireの追加＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

Souvenir.create!(
  [
    {
      prefecture_id: 1,
      souvenir_name: "東京ばな奈",
      introduction: "たっぷりのバナナかすたあどをスポンジケーキでふんわり包みこんでつくりしました。",
      category: 0
      # averege_star: "",
      # image: File.open('./app/assets/images/test.jpg')
    },
    {
      prefecture_id: 2,
      souvenir_name: "鳩サブレー",
      introduction: "バターたっぷり明治生まれの鳩サブレー。ハイカラな鎌倉のお味としてお楽しみいただいております。",
      category: 0
      # averege_star: "",
      # image: File.open('./app/assets/images/test.jpg')
    },
    {
      prefecture_id: 3,
      souvenir_name: "ぴーなっつ最中",
      introduction: "千葉県の特産物と言えば、なんと言ってもピーナッツ。そのピーナッツを使って作ったのが「ぴーなっつ最中」です。",
      category: 0
      # averege_star: "",
      # image: File.open('./app/assets/images/test.jpg')
    },
    {
      prefecture_id: 4,
      souvenir_name: "いも恋",
      introduction: "｢いも恋｣は、さつまいもとつぶ餡をもち粉の生地でやさしく包み、昔なつかしい風味に仕上げたまんじゅうです。",
      category: 0
      # averege_star: "",
      # image: File.open('./app/assets/images/test.jpg')
    },
    {
      prefecture_id: 5,
      souvenir_name: "茨城名物なっとう味スナック",
      introduction: "フリーズドライにした納豆をパウダー状にしてまぶしてあるので、お菓子なのに納豆菌がきちんと入っており、
                    ネバっとした納豆独特の食感を味わえます。",
      category: 0
      # averege_star: "",
      # image: File.open('./app/assets/images/test.jpg')
    },
    {
      prefecture_id: 6,
      souvenir_name: "御用邸チーズケーキ",
      introduction: "変わらないおいしさ・安心・安全を追求して作られた『御用邸チーズケーキ』は、目では見えないほど細かな手直しを経て
                    那須連山の麓にある美しい自然に囲まれた自社工場からお客さまの元へお届けしています。",
      category: 0
      # averege_star: "",
      # image: File.open('./app/assets/images/test.jpg')
    },
    {
      prefecture_id: 7,
      souvenir_name: "ガトーラスク　グーテ・デ・ロワ",
      introduction: "小麦の味を賞味するものと称される芳ばしい香りのフランスパンに、上質なバターなどを使用して丁寧に仕上げたガトーラスク。
                    サクサクとした食感と芳醇なバターの香りが至福の時間をお届けします。",
      category: 0
      # averege_star: "",
      # image: File.open('./app/assets/images/test.jpg')
    },
     {
      prefecture_id: 1,
      souvenir_name: "東京タワー模型",
      introduction: "東京と言ったらこれでしょ！！",
      category: 1,
      # averege_star: "",
    },
     {
      prefecture_id: 7,
      souvenir_name: "ぐんまちゃんぬいぐるみ",
      introduction: "みんな大好きぐんまちゃんのぬいぐるみ",
      category: 1
      # averege_star: "",
      # image: File.open('./app/assets/images/test.jpg')
    }
  ]
)

# ＝＝＝＝＝＝＝＝＝＝＝初期Reviewの追加＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

Review.create!(
  [
    {
      user_id: 1,
      souvenir_id: 1,
      review: "とてもおいしい！リピートします！",
      price: 650,
      purchase_place: "東京駅",
      receive_send: "貰う",
      people: 0,
      usefulness: 0,
      star: 4.0
    },
     {
      user_id: 2,
      souvenir_id: 1,
      review: "うまーーい！",
      price: 650,
      purchase_place: "東京駅",
      receive_send: "貰う",
      people: 0,
      usefulness: 0,
      star: 3.5
    }
  ]
)