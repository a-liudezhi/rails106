class Post < ApplicationRecord
belongs_to :user
belongs_to :group, counter_cache: :posts_count

validates :content, presence: true
scope :recent, -> { order("created_at DESC")}
end
