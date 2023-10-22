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

10.times do |n|
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
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/bigbowl/cabinet/01.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/bigbowl/tb001/"
    },
    {
      prefecture_id: 2,
      souvenir_name: "鳩サブレー",
      introduction: "バターたっぷり明治生まれの鳩サブレー。ハイカラな鎌倉のお味としてお楽しみいただいております。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/saikaya/cabinet/03639697/imgrc0064822461.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/saikaya/10000016/"
    },
    {
      prefecture_id: 3,
      souvenir_name: "ぴーなっつ最中",
      introduction: "千葉県の特産物と言えば、なんと言ってもピーナッツ。そのピーナッツを使って作ったのが「ぴーなっつ最中」です。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/yoneya/cabinet/chiba/04618694/guide/348724.jpg?_ex=128x128",
    },
    {
      prefecture_id: 4,
      souvenir_name: "いも恋",
      introduction: "｢いも恋｣は、さつまいもとつぶ餡をもち粉の生地でやさしく包み、昔なつかしい風味に仕上げたまんじゅうです。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/jr-ems/cabinet/jsc/06386664/r-089621.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/jr-ems/r-089621/"
    },
    {
      prefecture_id: 5,
      souvenir_name: "メロンバウム",
      introduction: "メロン農家のこだわりがたくさん詰まったバウムクーヘン。自家農園で収穫した甘く芳醇なメロンピューレをたっぷり使ったふんわりしっとり食感のメロンバウム",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/baum-nature/cabinet/img3/mellon-s-ry.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/baum-nature/meron01/"
      # averege_star: "",
      # image: File.open('./app/assets/images/test.jpg')
    },
    {
      prefecture_id: 6,
      souvenir_name: "御用邸チーズケーキ",
      introduction: "変わらないおいしさ・安心・安全を追求して作られた『御用邸チーズケーキ』は、目では見えないほど細かな手直しを経て
                    那須連山の麓にある美しい自然に囲まれた自社工場からお客さまの元へお届けしています。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/cheesegarden/cabinet/product/02238_thumb_r01.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/baum-nature/meron01/"
    },
    {
      prefecture_id: 7,
      souvenir_name: "ガトーラスク　グーテ・デ・ロワ",
      introduction: "小麦の味を賞味するものと称される芳ばしい香りのフランスパンに、上質なバターなどを使用して丁寧に仕上げたガトーラスク。
                    サクサクとした食感と芳醇なバターの香りが至福の時間をお届けします。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/prime-market/cabinet/harada01/swt-004.jpg?_ex=128x128",
    },
     {
      prefecture_id: 1,
      souvenir_name: "東京タワー模型",
      introduction: "東京と言ったらこれでしょ！！",
      category: 1,
      rakuten_image_url:  "https://thumbnail.image.rakuten.co.jp/@0_mall/jema/cabinet/06161720/imgrc0103800717.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/jema/new-1999/"
    },
     {
      prefecture_id: 7,
      souvenir_name: "ぐんまちゃん　ベビーエプロン",
      introduction: "群馬県のマスコット、ぐんまちゃんのタオル生地のベビーエプロン。",
      category: 1,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/honda932/cabinet/940812.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/honda932/940812/"
    },
    {
      prefecture_id: 1,
      souvenir_name: "東京たまご ごまたまご",
      introduction: "濃厚な黒ごまペーストと黒ごま餡をカステラ生地で包み込み、ホワイトチョコでコーティングした「ごまたまご」は、
                    4つの層が口の中で絶妙なハーモニーを奏でたあとに黒ごまの香りが余韻となって香る、あとを引くおいしさが魅力のお菓子です。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/kioskgift/cabinet/gomatama/gomatamago_1_1.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/kioskgift/10000135/"
    },
    {
      prefecture_id: 2,
      souvenir_name: "横濱ハーバー ダブルマロン",
      introduction: "神奈川県の横浜で生まれた約60年の歴史あるお菓子。マロンケーキの外側はソフトなカステラ生地♪ふわっと軽い食感でおやつにぴったり！
                      そんなカステラ生地の中には、角切りの栗がゴロゴロと入っています。また、甘さ控えめの栗餡もたっぷり。控えめな甘さとカステラ生地がよく合う、
                      神奈川の絶品スイーツお土産です",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/hakurankan/cabinet/sweets/ariake/imgrc0143199077.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/hakurankan/4580234441788/"
    },
    {
      prefecture_id: 3,
      souvenir_name: "まるごとびわゼリー",
      introduction: "びわの皮と種を取り除き、果肉のみをそのままの形で閉じ込めた逸品です。スッキリとした爽やかなびわの風味が口の中に広がります。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/hattyan/cabinet/chiba/imgrc0079965588.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/hattyan/605818/"
    },
    {
      prefecture_id: 4,
      souvenir_name: "十万石まんじゅう",
      introduction: "『うまい、うますぎる。埼玉銘菓 十万石まんじゅう』のフレーズのCMで、地元ではおなじみの逸品。しっとりした白い皮には厳選した国産つくね芋を使用。
                      新潟県産コシヒカリの粉に毎朝すりおろしたつくね芋を加えた生地で、自家炊きした北海道十勝産小豆のこしあんを包みます。素材の味を最大限に引き立てられ、
                      パクパクといくつでも食べられる美味しさです。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/maruhiro-dep/cabinet/ju-10_1.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/maruhiro-dep/ju-10/"
    },
    {
      prefecture_id: 5,
      souvenir_name: "ほっしぃ～も",
      introduction: "お菓子に使用している水は、天然のミネラルが豊富な奥日立木の根坂湧水。食材の多くは地元の特産品から素材を厳選しています。
                      まろやかで素朴な味わいの数々のお菓子を生み出し、地元の人たちに長く愛されています。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/f082210-hitachinaka/cabinet/0842_1208461_01.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/f082210-hitachinaka/1208461/"
    },
    {
      prefecture_id: 6,
      souvenir_name: "関東・栃木レモン",
      introduction: "栃木県産の100%生乳に、レモン風味の香料とマダガスカル産の高級バニラビーンズなどを加えた、ほんのり甘酸っぱい牛乳。
                    やさしくてなつかしい味とレトロなパッケージは、子どもにも大人にも喜んでもらえます！",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/cuppingroom/cabinet/imgrc0105456810.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/cuppingroom/item-0020/"
    },
    {
      prefecture_id: 7,
      souvenir_name: "七福神あられ",
      introduction: "七福さんにちなんだ七つの風味のひと口サイズのあられ。香ばしいえび味は恵比寿天、まろやかなチーズ味は布袋尊、
                    コクのあるバター味は弁財天など、味ごとに異なる七福神のイラストのパッケージになっています。発売されて以来、
                    おめでたいパッケージに、食べやすい一口サイズで一度に色々な味が楽しめると群馬県内を中心に徐々に評判が広まり人気のおみやげ。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/saiwai/cabinet/03845377/imgrc0066967566.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/saiwai/af-1/"
    },
  ]
)

# ＝＝＝＝＝＝＝＝＝＝＝初期Reviewの追加＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

Review.create!(
  [
    {
      user_id: 1,
      souvenir_id: 1,
      review: "観光でも出張でも、東京に来たら必ず買って帰ります。子供も大好き。バナナの味がたまらないです。",
      price: 1200,
      purchase_place: "東京駅",
      receive_send: "貰う",
      people: 1,
      usefulness: 1,
      star: 4.0,
    },
     {
      user_id: 1,
      souvenir_id: 2,
      review: "鎌倉といえば鳩サブレーで、昔から馴染みのあるものなので貰うととても嬉しいです。
                口の中でサクサクとした食感、優しい甘さとふんわりと感じるバターの風味がたまりません。",
      price: 1350,
      purchase_place: "豊島屋本店",
      receive_send: "贈る",
      people: 2,
      usefulness: 3,
      star: 3.5,
    },
     {
      user_id: 2,
      souvenir_id: 4,
      review: "こちらに遊びに来た際に、お土産でいただきました。 さつまいもとつぶした餡を、
                山芋ともち粉の生地でやさしく包んだものです。 食べた感想は、昔懐かしい風味で、ほっこりするお味でした。
                賞味期限が当日までです。",
      price: 1000,
      purchase_place: "川越駅",
      receive_send: "贈る",
      people: 1,
      usefulness: 2,
      star: 3.0,
    },
    {
      user_id: 3,
      souvenir_id: 3,
      review: "ぴーなっつ最中は、その名の通りピーナッツの形をしています。 表面のデコボコもうまく再現されており、
                見た目にも可愛らしいお菓子です。 最中の入っている箱もピーナッツの形をしており、送ったときに、「かわいい！」という声をよくもらえます。
                最中の皮はパリパリとしており、中には甘さ控えめの餡がたっぷり。餡の中にも、ピーナッツが練り込まれています。",
      price: 1450,
      purchase_place: "成田空港",
      receive_send: "贈る",
      people: 3,
      usefulness: 0,
      star: 4.0,
    },
    {
      user_id: 3,
      souvenir_id: 5,
      review: "メロンバームは珍しく、メロン好きのお贈りした先方の方は大変喜んでいらしゃいました。我が家でも食べてみたいと思いました。",
      price: 2250,
      purchase_place: "茨城県鉾田市「深作農園」",
      receive_send: "贈る",
      people: 2,
      usefulness: 3,
      star: 3.0,
    },
    {
      user_id: 4,
      souvenir_id: 6,
      review: "以前にいただいた事があり、とても美味しかったため、お土産として購入しました。 値段も品質も良く、そしてもちろん、味もかなり濃厚で本格的です！
              お土産にもよし、自分用にもよし！ 栃木県御用邸チーズケーキをぜひともオススメします！",
      price: 1580,
      purchase_place: "宇都宮駅",
      receive_send: "贈る",
      people: 5,
      usefulness: 3,
      star: 4.0,
    },
    {
      user_id: 4,
      souvenir_id: 7,
      review: "フランス語で「王様のおやつ」という意味の贅沢なラスクです。サックサクの食感と香ばしい香りで甘みも程よく絶対に喜ばれるお土産の定番だと思います。",
      price: 1200,
      purchase_place: "高崎駅",
      receive_send: "贈る",
      people: 0,
      usefulness: 0,
      star: 4.5
    }
  ]
)