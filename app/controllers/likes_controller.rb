class LikesController < ApplicationController
    def create
            tweet = Tweet.find(params[:tweet_id])
        unless tweet.liked?(current_user)
            tweet.like(current_user)
            flash[:notice] = 'いいね！'
        end
        redirect_to root_path
    end
    
    def destroy
            tweet = Tweet.find(params[:id])
        if tweet.liked?(current_user)
            tweet.unlike(current_user)
            flash[:notice] = 'いいねを取り消しました'            
        end
        redirect_to root_path
    end
end
