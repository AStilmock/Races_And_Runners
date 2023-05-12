class AddRacetoRunners < ActiveRecord::Migration[7.0]
  def change
    add_reference :runners, :races, foreign_key:true
  end
end
