class CreateFrogs < ActiveRecord::Migration
  def change
    create_table :frogs do |t|
      t.string :name
      t.string :color
      t.integer :pond_id
      t.string :timestamps
    end
  end
end
