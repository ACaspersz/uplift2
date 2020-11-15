class AddNameToCauses < ActiveRecord::Migration[6.0]
  def change
    add_column :causes, :cause_name, :string
  end
end
