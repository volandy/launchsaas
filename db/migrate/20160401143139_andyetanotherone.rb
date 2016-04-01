class Andyetanotherone < ActiveRecord::Migration

  change_table :users do |t|
    t.remove :admin
    t.boolean :admin, null: false, default: false
   end   

end
