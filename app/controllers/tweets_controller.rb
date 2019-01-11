class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.order("id DESC").page(params[:page]).per(5)

  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to action: :index
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text)
  end

end
