class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :title
      t.integer :amount
      t.integer :invoice_id, index: true

      t.timestamps
    end
  end
end
