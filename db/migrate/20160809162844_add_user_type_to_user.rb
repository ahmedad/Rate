class AddUserTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_type, :string, default: "Citizen"
  end
end
