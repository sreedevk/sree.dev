class CreateCareerSnapshots < ActiveRecord::Migration[5.2]
  def change
    create_table :career_snapshots do |t|
      t.string :company_name
      t.date :date_of_joining
      t.date :date_of_resignation
      t.string :location
      t.string :designation
      t.string :logo
      t.bigint :order
      t.boolean :visible
      t.timestamps
    end
  end
end
