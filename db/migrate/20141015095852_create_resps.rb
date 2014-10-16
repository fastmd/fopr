class CreateResps < ActiveRecord::Migration
  def change
    create_table :resps do |t|
      t.string :name
      t.references :user
      
      t.timestamps
    end
  end 
end
