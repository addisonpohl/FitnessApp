class CreateFitnessTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :fitness_trackers do |t|
      t.string :weight
      t.string :integer
      t.string :bpm
      t.string :integer
      t.string :mood

      t.timestamps
    end
  end
end
