namespace :sample do
  task :blog_insert => :environment do
    Blog.create(:title => 'エレファント速報',:url => 'http://elephant.2chblog.jp/',:rss => 'http://elephant.2chblog.jp/index.rdf', :selector => '.iCategory > a')
    Blog.create(:title => 'えすえすログ',:url => 'http://s2-log.com',:rss => 'http://s2-log.com/index.rdf',:selector => '.article-category1 > a')
    Blog.create(:title => '森きのこ！',:url => 'http://morikinoko.com',:rss => 'http://morikinoko.com/index.rdf',:selector => '.article-category1 > a')
    Blog.create(:title => 'あやめ速報',:url => 'http://ayamevip.com/',:rss => 'http://ayamevip.com/index.rdf',:selector => '.article-category > a')
    Blog.create(:title => 'えすえすmode',:url => 'http://blog.livedoor.jp/mode_ss/',:rss => 'http://blog.livedoor.jp/mode_ss/index.rdf',:selector => '.time > a')
  end

  task :faker_insert => :environment do
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
  end

  task :user_insert => :environment do
    AdminUser.create!(email: 'sample@cps.im.dendai.ac.jp', password: 'rubirubiSS', password_confirmation: 'rubirubiSS')
  end

end
