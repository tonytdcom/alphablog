class DeleteCategorys < ActiveRecord::Migration
  def change
    drop_table :categorys
  end
end
