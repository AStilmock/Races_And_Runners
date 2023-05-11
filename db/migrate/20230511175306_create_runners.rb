class CreateRunners < ActiveRecord::Migration[7.0]
  def change
    create_table :runners do |t|
      t.string :name
      t.string :shoes
      t.boolean :spikes
      t.boolean :team
      t.integer :races_completed

      t.timestamps
    end
  end
end
