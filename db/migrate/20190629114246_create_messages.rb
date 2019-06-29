class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :full_name
      t.string :email
      t.text :text
      t.boolean :is_spam
      t.string :status
      t.timestamps
    end
  end
end
