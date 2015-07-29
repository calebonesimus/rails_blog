class Post < ActiveRecord::Base
  belongs_to :author
  validates_presence_of :title, :body, :author_id

  def self.most_recent_posts
    self.all.order("created_at DESC")
  end
end
