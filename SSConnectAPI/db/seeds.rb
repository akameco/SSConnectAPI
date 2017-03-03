# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'sample@cps.im.dendai.ac.jp', password: 'rubirubiSS', password_confirmation: 'rubirubiSS')
5.times do |i|
  blog = Blog.create(:title => "TitleSokuho#{i}",:url => 'http://hoge.com',:rss => 'http://hoge.com/rss')
  100.times do |j|
    blog.articles.create(:title => "Kiji title #{j}")
  end
end
