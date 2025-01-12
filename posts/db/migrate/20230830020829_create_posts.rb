class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :upvotes, default: 0
      t.integer :downvotes, default: 0
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
