# ログイン時に使用する「メールアドレス」と「パスワード」が分かりやすいよう一番上に配置
email = 'test@example.com'
password = 'password'

# users テーブルを再生成（関連付いたテーブルを含む）
ActiveRecord::Base.connection.execute('TRUNCATE TABLE users RESTART IDENTITY CASCADE')

# 以下，開発用の初期データ
user1 = User.create!(email: 'satou@example.com', password: 'password')
user2 = User.create!(email: 'suzuki@example.com', password: 'password')
user3 = User.create!(email: 'tanaka@example.com', password: 'password')

user2.posts.create!(content: '沖縄そば')
user1.posts.create!(content: '海ぶどう')
user3.posts.create!(content: 'ゴーヤーチャンプルー')
user3.posts.create!(content: 'サーターアンダギー')
user1.posts.create!(content: 'タコライス')

# ログイン時に使用するアカウント（変数への代入は不要）
User.create!(email: email, password: password)

puts '初期データの投入に成功しました！'
