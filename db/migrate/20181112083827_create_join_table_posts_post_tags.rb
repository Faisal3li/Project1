class CreateJoinTablePostsPostTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :posts, :post_tags do |t|
      # t.index [:post_id, :post_tag_id]
      # t.index [:post_tag_id, :post_id]
    end
  end
end
