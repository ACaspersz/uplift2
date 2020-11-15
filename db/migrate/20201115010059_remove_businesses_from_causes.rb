class RemoveBusinessesFromCauses < ActiveRecord::Migration[6.0]
  def change
    remove_column :causes, :business_name, :string
    remove_column :causes, :region, :string
    remove_column :causes, :category, :string
  end
end
