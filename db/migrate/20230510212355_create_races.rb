class CreateRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :races do |t|
      t.string :location
      t.string :terrain
      t.string :weather
      t.integer :length
      t.boolean :loop
      t.boolean :overnight

      t.timestamps
    end
  end
end
