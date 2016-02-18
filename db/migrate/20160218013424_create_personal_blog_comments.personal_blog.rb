# This migration comes from personal_blog (originally 20160218011500)
class CreatePersonalBlogComments < ActiveRecord::Migration
  def change
    create_table :personal_blog_comments do |t|
      t.integer :article_id
      t.text :text

      t.timestamps null: false
    end
  end
end
