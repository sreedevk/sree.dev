class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :icon
      t.string :title
      t.text :description
      t.bigint :order
      t.boolean :show
      t.timestamps
    end
  end
end
