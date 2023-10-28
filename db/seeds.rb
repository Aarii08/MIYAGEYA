# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# =========================== Admin情報の追加 ===============================

Admin.create!(
  email: 'admin@admin',
  password: ENV['ADMIN_PASSWORD']
  )

# ============================ 初期Userの追加 =================================
# 10.times do |n|
#   User.create!(
#     name: "令和#{n + 1}太郎",
#     nickname: "#{n + 1}太郎",
#     email: "test#{n + 1}@test.com",
#     residence_prefecture: "東京都",
#     is_deleted: false,
#     password: "password"
#   )
# end

User.create!(
  [
    {
      name: "佐藤一郎",
      nickname: "イチロー",
      email: "test1@test.com",
      residence_prefecture: "北海道",
      is_deleted: false,
      password: "password"
    },
    {
      name: "鈴木春子",
      nickname: "はるちゃん",
      email: "test2@test.com",
      residence_prefecture: "宮城県",
      is_deleted: false,
      password: "password"
    },
    {
      name: "高橋二郎",
      nickname: "二郎系",
      email: "test3@test.com",
      residence_prefecture: "栃木県",
      is_deleted: false,
      password: "password"
    },
    {
      name: "田中夏子",
      nickname: "なっちゃん",
      email: "test4@test.com",
      residence_prefecture: "茨城県",
      is_deleted: false,
      password: "password"
    },
    {
      name: "伊藤三郎",
      nickname: "さぶちゃん",
      email: "test5@test.com",
      residence_prefecture: "群馬県",
      is_deleted: false,
      password: "password"
    },
    {
      name: "渡辺秋子",
      nickname: "あきちゃん",
      email: "test6@test.com",
      residence_prefecture: "千葉県",
      is_deleted: false,
      password: "password"
    },
    {
      name: "山本四郎",
      nickname: "やま",
      email: "test7@test.com",
      residence_prefecture: "奈良県",
      is_deleted: false,
      password: "password"
    },
    {
      name: "中村冬子",
      nickname: "ふゆこ",
      email: "test8@test.com",
      residence_prefecture: "鳥取県",
      is_deleted: false,
      password: "password"
    },
    {
      name: "小林太郎",
      nickname: "こば",
      email: "test9@test.com",
      residence_prefecture: "大分県",
      is_deleted: false,
      password: "password"
    },
    {
      name: "加藤花子",
      nickname: "はなちゃん",
      email: "test10@test.com",
      residence_prefecture: "沖縄県",
      is_deleted: false,
      password: "password"
    }
  ]
)
# =========================== 初期Prefectureの追加 ============================

['東京都', '神奈川県', '千葉県', '埼玉県', '茨城県', '栃木県', '群馬県', '関東以外']
.each do |name|
  Prefecture.create!(
    { prefecture_name: name }
  )
end

# ========================= 初期Souvenireの追加 ================================

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
    },
    {
      prefecture_id: 6,
      souvenir_name: "御用邸チーズケーキ",
      introduction: "変わらないおいしさ・安心・安全を追求して作られた『御用邸チーズケーキ』は、目では見えないほど細かな手直しを経て那須連山の麓にある美しい自然に囲まれた工場からお客さまの元へお届けしています。",
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
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/jema/cabinet/06161720/imgrc0103800717.jpg?_ex=128x128",
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
      introduction: "濃厚な黒ごまペーストと黒ごま餡をカステラ生地で包み込み、ホワイトチョコでコーティングした「ごまたまご」は、4つの層が口の中で絶妙なハーモニーを奏でたあとに黒ごまの香りが余韻となって香る、あとを引くおいしさが魅力のお菓子です。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/kioskgift/cabinet/gomatama/gomatamago_1_1.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/kioskgift/10000135/"
    },
    {
      prefecture_id: 2,
      souvenir_name: "横濱ハーバー ダブルマロン",
      introduction: "神奈川県の横浜で生まれた約60年の歴史あるお菓子。マロンケーキの外側はソフトなカステラ生地♪ふわっと軽い食感でおやつにぴったり！
                      そんなカステラ生地の中には、角切りの栗がゴロゴロと入っています。また、甘さ控えめの栗餡もたっぷり。控えめな甘さとカステラ生地がよく合う、
                      神奈川の絶品スイーツお土産です。",
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
      introduction: "七福さんにちなんだ七つの風味のひと口サイズのあられ。
                    　香ばしいえび味は恵比寿天、まろやかなチーズ味は布袋尊、コクのあるバター味は弁財天など、味ごとに異なる七福神のイラストのパッケージになっています。
                    　発売されて以来、おめでたいパッケージに、食べやすい一口サイズで一度に色々な味が楽しめると群馬県内を中心に徐々に評判が広まり人気のおみやげ。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/saiwai/cabinet/03845377/imgrc0066967566.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/saiwai/af-1/"
    },
    {
      prefecture_id: 8,
      souvenir_name: "白い恋人",
      introduction: "香ばしく焼き上げたサクサクのラング・ド・シャクッキーに、「白い恋人」のためにブレンドされたオリジナルチョコレートをサンドしました。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/hokkaido-omiyage/cabinet/koibito/isiya013-pack.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/hokkaido-omiyage/isiya013/"
    },
    {
      prefecture_id: 8,
      souvenir_name: "紅いもタルト",
      introduction: "沖縄県産紅いも100%で作られたペーストと、独自の配合で焼き上げたタルト生地の絶妙な組み合わせです。",
      category: 0,
      rakuten_image_url: "https://thumbnail.image.rakuten.co.jp/@0_mall/okinawasenka8682/cabinet/07181694/imgrc0095105369.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/okinawasenka8682/4992866070289-1/"
    },
    {
      prefecture_id: 8,
      souvenir_name: "桔梗信玄餅",
      introduction: "多くの人に愛される、山梨の代表的な銘菓です。“ふるさとの味”をコンセプトに、手作りの味わいにこだわっています。小さな容器にきな粉をまぶした3切れのお餅が入っています。",
      category: 0,
      rakuten_image_url:  "https://thumbnail.image.rakuten.co.jp/@0_mall/yamnashi-made/cabinet/08894984/imgrc0081874076.jpg?_ex=128x128",
      rakuten_url: "https://item.rakuten.co.jp/yamnashi-made/smoti10/"
    }
  ]
)

# ========================== 初期Reviewの追加 =================================

Review.create!(
  [
    {
      user_id: 1,
      souvenir_id: 1,
      review: "観光でも出張でも、東京に来たら必ず買って帰ります。子供も大好き。バナナの味がたまらないです。",
      price: 1200,
      purchase_place: "東京駅",
      receive_send: "贈った",
      people: 1,
      usefulness: 1,
      star: 4.0,
    },
     {
      user_id: 1,
      souvenir_id: 2,
      review: "鎌倉といえば鳩サブレーで、昔から馴染みのあるものなので貰うととても嬉しいです。
                口の中でサクサクとした食感、優しい甘さとふんわりと感じるバターの風味がたまりません。",
      price: nil,
      purchase_place: nil,
      receive_send: "貰った",
      people: 2,
      usefulness: 3,
      star: 3.5,
    },
     {
      user_id: 2,
      souvenir_id: 4,
      review: "さつまいもとつぶした餡を、山芋ともち粉の生地でやさしく包んだものです。 食べた感想は、昔懐かしい風味で、ほっこりするお味でした。
                賞味期限が当日までです。",
      price: 1000,
      purchase_place: "川越駅",
      receive_send: "贈った",
      people: 1,
      usefulness: 2,
      star: 3.0,
    },
    {
      user_id: 3,
      souvenir_id: 3,
      review: "ぴーなっつ最中は、その名の通りピーナッツの形をしています。 表面のデコボコもうまく再現されており、見た目にも可愛らしいお菓子です。
              最中の入っている箱もピーナッツの形をしており、送ったときに、「かわいい！」という声をよくもらえます。
              最中の皮はパリパリとしており、中には甘さ控えめの餡がたっぷり。餡の中にも、ピーナッツが練り込まれています。",
      price: 1450,
      purchase_place: "成田空港",
      receive_send: "贈った",
      people: 3,
      usefulness: 0,
      star: 4.0,
    },
    {
      user_id: 3,
      souvenir_id: 5,
      review: "メロンバウムは珍しく、メロン好きのお贈りした先方の方は大変喜んでいらしゃいました。我が家でも食べてみたいと思いました。",
      price: 2250,
      purchase_place: "茨城県鉾田市「深作農園」",
      receive_send: "贈った",
      people: 5,
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
      receive_send: "贈った",
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
      receive_send: "贈った",
      people: 0,
      usefulness: 0,
      star: 4.5,
    },
    {
      user_id: 5,
      souvenir_id: 11,
      review: "しっとりした生地の中にツブツブ食感を残した栗の餡が入っています。栗の餡は甘すぎず、コーヒー、紅茶、緑茶、ウーロン茶など、和洋中どんなお茶にもマッチします。",
      price: 1728,
      purchase_place: "横浜駅",
      receive_send: "贈った",
      people: 7,
      usefulness: 3,
      star: 3.5,
    },
    {
      user_id: 3,
      souvenir_id: 9,
      review: "ぐんまちゃんがかわいくて、つい購入。友人の子供にプレゼントします。",
      price: 880,
      purchase_place: "高崎駅",
      receive_send: "贈った",
      people: 3,
      usefulness: 0,
      star: 4.0,
    },
    {
      user_id: 6,
      souvenir_id: 15,
      review: "甘くて爽やか、美味しくて口にすると一気に飲んでしまいます。ダイエットしてる人は危険です！（笑）",
      price: 120,
      purchase_place: "佐野SA",
      receive_send: "贈った",
      people: 0,
      usefulness: 0,
      star: 4.5,
    },
    {
      user_id: 2,
      souvenir_id: 1,
      review: "ふわんふわんの柔らか生地。カットした断面を見たら、本物のバナナっぽい。中のクリームは、ぽってりねっとり。バナナの風味は強くないけれど、わざとらしくなくていい。
                他にも色々な種類があるみたいだから、次は違う味を食べてみたい。",
      price: nil,
      purchase_place: nil,
      receive_send: "貰った",
      people: 4,
      usefulness: 1,
      star: 4.0,
    },
    {
      user_id: 7,
      souvenir_id: 13,
      review: "周りは薄皮、あんこはたっぷり。あんこは甘すぎず、お茶請けにぴったりでした。義母の手土産に買って行ったら、美味しいと好評でした。",
      price: 1580,
      purchase_place: "イオンレイクタウン",
      receive_send: "贈った",
      people: 2,
      usefulness: 3,
      star: 4.0,
    },
    {
      user_id: 8,
      souvenir_id: 2,
      review: "鎌倉といえば鳩サブレーで、昔から馴染みのあるものなので貰うととても嬉しいです。口の中でサクサクとした食感、優しい甘さとふんわりと感じるバターの風味がたまりません。",
      price: nil,
      purchase_place: nil,
      receive_send: "貰った",
      people: 1,
      usefulness: 0,
      star: 4.0,
    },
    {
      user_id: 8,
      souvenir_id: 7,
      review: "いただきもので久しぶりにいただいたこちらのラスク！久々に食べると美味しい〜外側についているジャリジャリのお砂糖と食べると口の中でジュワッとなるバターのしみたラスクがとても美味しいです。",
      price: nil,
      purchase_place: nil,
      receive_send: "貰った",
      people: 5,
      usefulness: 3,
      star: 4.0,
    },
    {
      user_id: 9,
      souvenir_id: 7,
      review: "いただきもので久しぶりにいただいたこちらのラスク！久々に食べると美味しい〜外側についているジャリジャリのお砂糖と食べると口の中でジュワッとなるバターのしみたラスクがとても美味しいです。",
      price: nil,
      purchase_place: nil,
      receive_send: "貰った",
      people: 5,
      usefulness: 3,
      star: 4.0,
    },
     {
      user_id: 10,
      souvenir_id: 7,
      review: "このノーマルなラスクも大好き！冬になると発売されるチョコのかかったラスクも好き！次回はチョコのかかったラスクを購入する！！",
      price: 760,
      purchase_place: "イオンモール",
      receive_send: "贈った",
      people: 1,
      usefulness: 4,
      star: 4.5,
    },
    {
      user_id: 5,
      souvenir_id: 10,
      review: "黒ごまペーストをカステラで包みホワイトチョコレートでコーティングされていて、甘いものが好きな方はかなり好む味だと思います。黒ごまがとても美味しく非常に食べやすいです。見た目もタマゴ型で可愛いです。",
      price: 1080,
      purchase_place: "東京駅",
      receive_send: "贈った",
      people: 3,
      usefulness: 2,
      star: 4.0,
    },
    {
      user_id: 7,
      souvenir_id: 12,
      review: "スッキリとした爽やかな味わいのゼリーでした。ゼリーの中にはびわが丸ごと入っています。冷蔵庫で冷やして食べるとなお美味しく食べることができます。びわという果物自体が珍しい為、物珍しいお土産を貰ったという印象が強く残るお土産でした。",
      price: nil,
      purchase_place: nil,
      receive_send: "貰った",
      people: 8,
      usefulness: 1,
      star: 3.5,
    },
    {
      user_id: 5,
      souvenir_id: 17,
      review: "北海道土産の大定番です。うまいんです。何度食べても飽きが来ないうまさです。ほっとします。食べると嬉しくなります。
              白い恋人、恋人のようなお菓子なんです。ラングドシャがうまいんです。うますぎます。ホワイトチョコがうまいんだなぁ。",
      price: 1430,
      purchase_place: "新千歳空港",
      receive_send: "贈った",
      people: 1,
      usefulness: 0,
      star: 5.0,
    },
    {
      user_id: 6,
      souvenir_id: 18,
      review: "鮮やかな濃い紫色のクリームが綺麗に絞られていて美しい見た目です。タルト部分はクッキー系ではなくお饅頭の部類です。
                紅芋ペーストは紅芋の美味しさがハッキリとよく分かり、余計な味はせずに素材本来の味が生かされています。お芋のほっこり感と奥深い甘さが特徴的でとても上品です。",
      price: nil,
      purchase_place: nil,
      receive_send: "貰った",
      people: 1,
      usefulness: 2,
      star: 4.0,
    },
    {
      user_id: 8,
      souvenir_id: 19,
      review: "柔らかいお餅とたっぷりのきな粉と黒蜜がたまらないです。逆にきな粉と黒蜜たっぷりすぎて勿体無いなといつも思います（笑）
                食べる時にきな粉が飛び散るので注意が必要です！",
      price: nil,
      purchase_place: nil,
      receive_send: "貰った",
      people: 5,
      usefulness: 1,
      star: 4.0,
    },
    {
      user_id: 9,
      souvenir_id: 17,
      review: "頂き物です。有名なお土産なので一度は聞いたり食べたりした事があるのではないでしょうか。
              もちろんお味は安定の美味しさ。ラングドシャといえばというくらいの定番お土産。
              サクッとした甘いクッキーの間にホワイトチョコレート。北海道らしいという意味でも素敵なお菓子です。",
      price: nil,
      purchase_place: nil,
      receive_send: "貰った",
      people: 7,
      usefulness: 3,
      star: 4.5,
    },
  ]
)

# =============================== タグ =======================================

["お菓子", "おいしい", "甘い", "サクサク", "いも", "あんこ", "落花生", "メロン", "チーズ",
  "ぐんまちゃん",  "レモン", "バナナ",  "サブレ", "うまい", "ラスク", "ごま", "ホワイトチョコ", "スッキリ", "餅"]
.each do |tag|
  Tag.create!(
    {tag_name: tag }
  )
end

TagMap.create!(
  [
    {
      tag_id: 1,
      review_id: 1
    },
    {
      tag_id: 2,
      review_id: 1
    },
    {
      tag_id: 3,
      review_id: 2
    },
    {
      tag_id: 4,
      review_id: 2
    },
    {
      tag_id: 5,
      review_id: 3
    },
    {
      tag_id: 6,
      review_id: 3
    },
    {
      tag_id: 7,
      review_id: 4
    },
    {
      tag_id: 8,
      review_id: 5
    },
    {
      tag_id: 9,
      review_id: 6
    },
    {
      tag_id: 3,
      review_id: 7
    },
    {
      tag_id: 4,
      review_id: 7
    },
    {
      tag_id: 2,
      review_id: 8
    },
    {
      tag_id: 10,
      review_id: 9
    },
    {
      tag_id: 11,
      review_id: 10
    },
    {
      tag_id: 12,
      review_id: 11
    },
    {
      tag_id: 6,
      review_id: 12
    },
    {
      tag_id: 13,
      review_id: 13
    },
    {
      tag_id: 4,
      review_id: 14
    },
    {
      tag_id: 14,
      review_id: 14
    },
    {
      tag_id: 1,
      review_id: 15
    },
    {
      tag_id: 2,
      review_id: 15
    },
    {
      tag_id: 15,
      review_id: 16
    },
    {
      tag_id: 16,
      review_id: 17
    },
    {
      tag_id: 17,
      review_id: 17
    },
    {
      tag_id: 18,
      review_id: 18
    },
    {
      tag_id: 2,
      review_id: 19
    },
    {
      tag_id: 17,
      review_id: 19
    },
    {
      tag_id: 2,
      review_id: 20
    },
    {
      tag_id: 5,
      review_id: 20
    },
    {
      tag_id: 19,
      review_id: 21
    },
    {
      tag_id: 4,
      review_id: 22
    },
    {
      tag_id: 17,
      review_id: 22
    },
  ]
 )
# ========================= ほしい！ ==========================================

User.all.each do |user|
  Souvenir.all.each do |souvenir|
    if rand(0..1) == 1
      Want.find_or_create_by!(
        user_id: user.id,
        souvenir_id: souvenir.id
      )
    end
  end
end
# =============================================================================