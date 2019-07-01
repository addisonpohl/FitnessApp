class CreateFitnessTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :fitness_trackers do |t|
      t.integer :weight
      t.integer :bpm
      t.string :mood

      t.timestamps
    end
  end
end
