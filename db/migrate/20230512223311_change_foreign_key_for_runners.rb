class ChangeForeignKeyForRunners < ActiveRecord::Migration[7.0]
  def change
    rename_column :runners, :races_id, :race_id
  end
end
