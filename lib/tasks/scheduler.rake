namespace :feed do
  desc "update the rss feed for reddit"
    task :update => :environment do
      Feed.update("https://www.reddit.com/.rss")
  end
end
