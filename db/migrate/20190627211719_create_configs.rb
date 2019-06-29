class CreateConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :configs do |t|
      t.string :config_type, unique: true, null: false
      t.json :settings, default: {}
      t.timestamps
    end
  end
end
