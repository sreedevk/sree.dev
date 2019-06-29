class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :title
      t.float :proficiency
      t.integer :weight
      t.string :color
      t.boolean :show
      t.timestamps
    end
  end
end
