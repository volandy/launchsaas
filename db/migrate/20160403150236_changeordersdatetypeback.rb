class Changeordersdatetypeback < ActiveRecord::Migration
  def change
    change_table :orders do |t|
    t.remove :created_at
      
    t.datetime :created_at
  end
  end
end
