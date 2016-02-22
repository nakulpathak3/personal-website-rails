# This migration comes from personal_blog (originally 20160220163149)
class CreatePersonalBlogTags < ActiveRecord::Migration
  def change
    create_table :personal_blog_tags do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
