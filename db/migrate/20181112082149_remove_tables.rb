class RemoveTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :remove_column_to_post_tags
    drop_table :tag_posts
  end
end
