class EdditePostTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_tags, :name
  end
end
