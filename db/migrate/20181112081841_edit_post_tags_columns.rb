class EditPostTagsColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_tags, :show
    remove_column :post_tags, :index
    remove_column :post_tags, :new
    remove_column :post_tags, :edit
  end
end
