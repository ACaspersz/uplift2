class AddDetailToCause < ActiveRecord::Migration[6.0]
  def change
    add_column :causes, :business_name, :string
    add_column :causes, :region, :string
    add_column :causes, :description, :string
    add_column :causes, :donation_goal, :decimal
  end
end
