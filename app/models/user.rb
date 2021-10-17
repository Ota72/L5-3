class User < ApplicationRecord
    #master
    has_many :tweets
    has_many :likes
    has_many :like_tweets, through: :likes, source: :tweet
    
    validates :uid, uniqueness: true
    
end
