class AddAddressToUser < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :first_name, :string
      add_column :users, :last_name, :string
      add_column :users, :street_number, :integer
      add_column :users, :street_address, :string
      add_column :users, :suburb, :string
      add_column :users, :state, :string
      add_column :users, :postcode, :integer
      add_column :users, :phone_number, :integer
  end
end
