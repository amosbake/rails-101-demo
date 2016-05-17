class Post < ActiveRecord::Base
  belongs_to :group,counter_cache: :posts_count
  validates :content,presence: true
  belongs_to :author,class_name:"User",foreign_key: :user_id
  scope :recent, -> {order("updated_at DESC")}
  def editable_by?(user)
    user && user == author
  end
end
