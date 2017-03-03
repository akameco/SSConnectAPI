namespace :crawl do
  task :rss => :environment do
    Blog.all.each do |blog|
      puts blog.title
      feed = Feedjira::Feed.fetch_and_parse(blog.rss)
      feed.entries.each do |entry|
        blog.articles.create(
            title: entry.title,
            url: entry.url,
            posted_at: entry.last_modified
        )
      end
    end
  end
end
