desc "update the rss feed for reddit"

task :update => :production do

  puts "Updating feed...."
    Feed.update
  puts "Done!"

end