class AddColumnToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :commentable_id, :integer
  end
end
