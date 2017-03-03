namespace :crawl do
  task :rss => :environment do
    p Article.count
  end
end
