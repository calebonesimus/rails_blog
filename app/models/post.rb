class Post < ActiveRecord::Base
  belongs_to :author
  validates_presence_of :title, :body, :author_id
  validate :title_must_be_ten_characters

  def self.most_recent_posts
    self.all.order("created_at DESC")
  end

  def title_must_be_ten_characters
    num_of_chars_short = 10 - self.title.length
    if self.title.length < 10
      errors[:base] << "Your title is #{num_of_chars_short} characters short."
    end
  end
end
