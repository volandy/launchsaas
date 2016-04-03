class Changeordersdatetypebackagain < ActiveRecord::Migration
  def change
        change_table :orders do |t|
    t.remove :created_at
      
    t.date :created_at
  end
  end
end
