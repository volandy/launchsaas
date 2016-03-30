class Addcolumntoproduct < ActiveRecord::Migration
  change_table :products do |t|
    t.remove :main_course_id
  end
  
  change_table :products do |t|
    t.integer :order_id
    t.boolean :main_course
  end
end
