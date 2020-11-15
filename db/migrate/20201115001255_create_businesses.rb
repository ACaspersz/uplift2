class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :business_name
      t.string :category
      t.string :region
      t.string :description

      t.timestamps
    end
  end
end
