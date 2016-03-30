class Yetanotherchangeintables < ActiveRecord::Migration
  def up
    drop_table :orders_first_cources
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
  
  def up
    drop_table :orders_second_cources
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
  
  create_table :orders_first_courses, id: false do |t|
      t.belongs_to :order, index: true
      t.belongs_to :first_course, index: true
    end
    
    create_table :orders_second_courses, id: false do |t|
      t.belongs_to :order, index: true
      t.belongs_to :second_course, index: true
    end
end
