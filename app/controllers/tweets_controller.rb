class TweetsController < ApplicationController
    def index
        @tweet = Tweet.all
    end
    
    def new
        @tweet = Tweet.new
    end
    
    def create
      @tweet = Tweet.new(message: params[:message])
      #user= User.find_by(params[:id])
      if @tweet.save
        flash[:notice] = 'つぶやきました'
        redirect_to root_path
      else
        flash[:notice] = '失敗'
        render 'new_tweet'
      end
    end
    
    def destroy
      tweet = Tweet.find(params[:id])
      tweet.destroy
      flash[:notice] = 'ツイートを削除しました'
      redirect_to root_path
    end
    
end
