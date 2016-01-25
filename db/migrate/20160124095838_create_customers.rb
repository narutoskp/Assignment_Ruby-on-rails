class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :namecustomer
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
