class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :summary
      t.integer :author_id
      t.string :header_image
      t.boolean :published

      t.timestamps null: false
    end
  end
end
