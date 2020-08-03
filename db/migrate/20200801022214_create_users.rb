class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false,index: true,unique:true
      t.string :mail, null: false
      t.string :pass, null: false
      t.timestamps null: false
    end
  end
end
