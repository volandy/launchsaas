class CreateFirstCourses < ActiveRecord::Migration
  def change
    create_table :first_courses do |t|
      t.string :name
      t.float :price
      t.timestamps null: false
    end
    
    change_table :orders do |t|
    t.remove :first_course_name
    t.remove :first_course_price
    t.remove :main_course_name
    t.remove :main_course_price
    t.remove :drink_name
    t.remove :drink_price
    
    t.integer :first_course_id
    t.integer :second_course_id
    t.integer :drink_id
  end
  end
end
