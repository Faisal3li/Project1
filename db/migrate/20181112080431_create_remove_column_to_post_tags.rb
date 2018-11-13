class CreateRemoveColumnToPostTags < ActiveRecord::Migration[5.2]
  def change
    create_table :remove_column_to_post_tags do |t|

      t.timestamps
    end
  end
end
