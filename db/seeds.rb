# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.find_by(email: "admin@test.com").nil?
  u = User.new
  u.email = "admin@test.com"
  u.password = "111111"
  u.password_confirmation = "111111"
  u.is_admin = true
  u.save
  puts " 管理员账户已创建， 账号：#{u.email}, 密码：#{u.password}"
else
  puts " 管理员账户已存在！"
end
