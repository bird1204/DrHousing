class CreateProperty < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :estates_id, :null => false
      t.string :room, :default => '0'         #房
      t.string :hall, :default => '0'         #廳   
      t.string :baths, :default => '0'        #衛
      t.string :smallRoom, :default => '0'    #室     
      t.string :parkingRoom, :default => '0'  #車位
      t.string :material, :default => ''  #建材
      t.boolean :enabled, :null => false
      t.timestamps
    end
    add_index :properties, :estates_id
    add_index :properties, :parkingRoom
  end
end
