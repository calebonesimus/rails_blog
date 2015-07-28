class Post < ActiveRecord::Base
  belongs_to :author
  validates_presence_of :title, :body

  def self.most_recent_posts
    self.all.sort_by(&:created_at).reverse!
  end
end
