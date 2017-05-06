class RemoveUserId < ActiveRecord::Migration
  def change
     remove_column :articles, :user_ID, :string
     remove_column :articles, :userID, :string
  end
end
