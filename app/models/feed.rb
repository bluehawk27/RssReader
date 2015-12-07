class Feed < ActiveRecord::Base
  belongs_to :user
  acts_as_votable
  def self.update(feed_url)
    feed = Feedjira::Feed.fetch_and_parse(feed_url)
    feed.entries.each do |article|
      unless exists? :guid => article.id
        create!(
          :title => article.title,
          :url => article.url,
          :published_at => article.published,
          :guid => article.id,
          )
      end
    end
  end
end
