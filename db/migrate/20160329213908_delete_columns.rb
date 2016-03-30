class DeleteColumns < ActiveRecord::Migration
  change_table :users do |t|
    t.remove :password
  end
  
  change_table :orders do |t|
    t.remove :first_course_id
    t.remove :main_course_id
    t.remove :drink_id
  end
  
  change_table :orders do |t|
    t.integer :product_id
  end
end
