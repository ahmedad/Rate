class AddSubscriberAndStripeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subscribed, :boolean
    add_column :users, :stripid, :string
  end
end
