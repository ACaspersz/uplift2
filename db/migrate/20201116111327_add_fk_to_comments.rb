class AddFkToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :causes, null: false, foreign_key: true
  end
end
