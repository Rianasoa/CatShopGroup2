class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
    	t.belongs_to :user, index: true
      	t.string :stripe_customer_id
      t.timestamps
    end
  end
end
