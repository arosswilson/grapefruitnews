class CreatePostVotes < ActiveRecord::Migration
  def change
    create_table :post_votes do |t|
      t.references :user
      t.references :post
      t.boolean :vote, default: false
    end
  end
end
