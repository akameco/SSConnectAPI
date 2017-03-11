namespace :crawl do
  task :rss => :environment do
    Blog.all.each do |blog|
      # SKIP selector 未設置
      next if blog.selector.nil?
      puts blog.title
      feed = Feedjira::Feed.fetch_and_parse(blog.rss)
      feed.entries.each do |entry|
        # SKIP 登録済み
        next if Article.where(url: entry.url).exists?
        story = Story.find_or_create_by(title: entry.title)
        story.articles.create(
            url: entry.url,
            posted_at: entry.last_modified,
            blog: blog
        )
        doc = Nokogiri::HTML(open(entry.url))
        next if doc.css(blog.selector)[0].nil? # TODO: Notification Selector invalid Erorr
        tag = doc.css(blog.selector)[0].text
        if story.tag_list << tag.split.first
          story.save
          p story.tag_list.join(', ')
        end
      end
    end
  end
end
