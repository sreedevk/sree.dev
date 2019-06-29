class CreateEducationSnapshots < ActiveRecord::Migration[5.2]
  def change
    create_table :education_snapshots do |t|
      t.date :date_of_graduation
      t.string :course
      t.string :institution
      t.string :location
      t.boolean :show
      t.bigint :order
      t.timestamps
    end
  end
end
