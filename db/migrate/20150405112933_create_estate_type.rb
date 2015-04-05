class CreateEstateType < ActiveRecord::Migration
  def change
    create_table :estate_types do |t|
      t.integer :estate_id, :null => false
      t.boolean :house, :null => false          #成屋
      t.boolean :villa, :null => false          #透天厝
      t.boolean :suiteWithBath, :null => false  #套房
      t.boolean :suite, :null => false          #雅房
      t.boolean :apartmemt, :null => false      #大樓
      t.boolean :preorder, :null => false       #預售屋
      t.boolean :enabled, :null => false 
      t.timestamps                    
    end
    add_index :estate_types, :estate_id
  end
end
