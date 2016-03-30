class Changecolumnsagain < ActiveRecord::Migration
  create_table :product_orders, id: false do |t|
      t.belongs_to :order, index: true
      t.belongs_to :product, index: true
    end
end
