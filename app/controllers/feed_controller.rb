class FeedController < ApplicationController
  before_action :authenticate_user!
  before_action :find_feed, only: [:like]

  def index
    @feed = Feed.all.order("published_at Desc").limit(30)
  end

  def like
    @feed.liked_by current_user
    redirect_to :back
  end

  def liked
    @feed = current_user.find_liked_items
  end

  private

  def find_feed
    @feed  =  Feed.find(params[:id])
  end
end
