class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new
    @tweet.text = params[:text]
    if @tweet.save
      redirect_to @tweet
    else
      render :action => "new"
    end
  end

end
