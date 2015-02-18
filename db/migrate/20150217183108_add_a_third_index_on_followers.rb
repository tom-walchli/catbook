class AddAThirdIndexOnFollowers < ActiveRecord::Migration
  def change
  	add_index(:follower_relations, :followed_cat_id)
  end
end
