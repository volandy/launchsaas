class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.datetime :created_at 
    	t.datetime :updated_at
    	
      t.timestamps null: false
    end
  end
end
