class CreateTestimonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonials do |t|
      t.string :author
      t.string :author_designation
      t.string :author_employer
      t.string :author_image
      t.text   :content
      t.boolean :is_visible
      t.bigint  :ordinal
      t.timestamps
    end
  end
end
