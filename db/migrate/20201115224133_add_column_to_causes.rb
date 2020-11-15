class AddColumnToCauses < ActiveRecord::Migration[6.0]
  def change
    add_reference :causes, :business, null: false, foreign_key: true
  end
end
