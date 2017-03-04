# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'sample@cps.im.dendai.ac.jp', password: 'rubirubiSS', password_confirmation: 'rubirubiSS')

10.times do |i|
  blog = Blog.create(
      :title => "TitleSokuho#{i}",
      :url => Faker::Internet.url,
      :rss => "#{Faker::Internet.url}/rss"
  )
  puts i
  1000.times do |j|
    blog.articles.create(
        :title => "#{Faker::Food.ingredient} #{j}",
        :url => Faker::Internet.url,
        :posted_at => Faker::Time.between(2.years.ago, Date.today, :all)
    )
  end
end
