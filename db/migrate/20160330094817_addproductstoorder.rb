class Addproductstoorder < ActiveRecord::Migration
  change_table :products do |t|
    t.remove :first_course
    t.remove :main_course
    t.remove :drink
    t.remove :name
    t.remove :price
  end
  
  change_table :orders do |t|
    t.remove :product_id
    t.string :first_course_name
    t.float :first_course_price
    t.string :main_course_name
    t.float :main_course_price
    t.string :drink_name
    t.float :drink_price
  end
end
