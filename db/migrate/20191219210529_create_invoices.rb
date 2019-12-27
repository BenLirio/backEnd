class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.integer :invoice_id
      t.string :service
      t.integer :price
      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
