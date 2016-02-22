# This migration comes from personal_blog (originally 20160218010730)
class RenameArticlesTableToPosts < ActiveRecord::Migration
  def change
    rename_table :personal_blog_articles, :personal_blog_posts
  end
end
