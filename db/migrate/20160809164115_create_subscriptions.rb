class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user, index: true, foreign_key: true
      t.float :amount
      t.string :transction_number

      t.timestamps null: false
    end
  end
end
