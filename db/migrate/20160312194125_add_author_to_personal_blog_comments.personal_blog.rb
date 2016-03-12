# This migration comes from personal_blog (originally 20160312192755)
class AddAuthorToPersonalBlogComments < ActiveRecord::Migration
  def change
    add_column :personal_blog_comments, :author, :string
  end
end
