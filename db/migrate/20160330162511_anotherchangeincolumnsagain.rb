class Anotherchangeincolumnsagain < ActiveRecord::Migration
    change_table :first_courses do |t|
      t.integer :order_id
      
    end
  
  change_table :second_courses do |t|
      t.integer :order_id
      
  end
  
  def change
    add_index :drinks, :order_id
    add_index :first_course, :order_id
    add_index :second_course, :order_id
  end
  

  

end
