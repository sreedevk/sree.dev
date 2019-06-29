class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :image
      t.string :url
      t.boolean :show
      t.bigint :order
      t.bigint :importance
      t.timestamps
    end
  end
end
