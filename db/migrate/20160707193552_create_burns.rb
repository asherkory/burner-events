class CreateBurns < ActiveRecord::Migration
  def change
    create_table :burns do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
