namespace :sample do
  task :blog_insert => :environment do
    FactoryGirl.create(:blog_s2_log)
    FactoryGirl.create(:blog_morikinoko)
    FactoryGirl.create(:blog_ayamevip)
    FactoryGirl.create(:blog_elephant)
    FactoryGirl.create(:blog_mode_ss)
    p "#{Blog.count} Blog Created."
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
