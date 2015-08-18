class CreateEstate < ActiveRecord::Migration
  def change
    create_table :estates do |t|
      t.string :name, :default => ''
      t.string :address                                   #地址
      t.float :size                                       #登記坪數
      t.float :mainSize                                   #主建物坪數
      t.float :age                                        #屋齡
      t.integer :floor                                    #樓層數
      t.integer :unitPrice, :default => 0, :null => false #每坪單價
      t.integer :price, :null => false                    #總價
      t.boolean :enabled, :null => false
      t.timestamps          
    end

    add_index :estates, :name
    add_index :estates, :address
    add_index :estates, :size    
    add_index :estates, :mainSize
    add_index :estates, :age
    add_index :estates, :floor   
    add_index :estates, :unitPrice
    add_index :estates, :price
  end
end