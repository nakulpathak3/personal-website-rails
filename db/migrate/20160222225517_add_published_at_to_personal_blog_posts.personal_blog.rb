# This migration comes from personal_blog (originally 20160222224711)
class AddPublishedAtToPersonalBlogPosts < ActiveRecord::Migration
  def change
    add_column :personal_blog_posts, :published_at, :datetime
  end
end
