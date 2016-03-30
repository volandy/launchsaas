class Anotherchangeincolumns < ActiveRecord::Migration
  create_table :orders_drinks, id: false do |t|
      t.belongs_to :order, index: true
      t.belongs_to :drink, index: true
    end
    
    create_table :orders_first_cources, id: false do |t|
      t.belongs_to :order, index: true
      t.belongs_to :first_cource, index: true
    end
    
    create_table :orders_second_cources, id: false do |t|
      t.belongs_to :order, index: true
      t.belongs_to :second_cource, index: true
    end
    
end
