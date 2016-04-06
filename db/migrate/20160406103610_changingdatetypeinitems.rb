class Changingdatetypeinitems < ActiveRecord::Migration
  def change
      change_table :drinks do |t|
      t.remove :created_at
      
      t.date :created_at
    end
    
      change_table :first_courses do |t|
      t.remove :created_at
      
      t.date :created_at
    end
    
      change_table :second_courses do |t|
      t.remove :created_at
      
      t.date :created_at
    end
  end
end
