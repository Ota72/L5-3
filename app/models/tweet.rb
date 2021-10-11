class Tweet < ApplicationRecord
    belongs_to :user #「userに所属します」
    has_many :likes
    has_many :likes_users, through: :likes,source: :user
end
