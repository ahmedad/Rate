class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :transaction_number
      t.boolean :confirmed, default: false

      t.timestamps null: false
    end
  end
end
