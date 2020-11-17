class RenameCausesInComments < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :causes_id, :cause_id 
  end
end
