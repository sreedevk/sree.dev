class CreateBlogPostLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_post_locals do |t|
      t.string :title
      t.text :abstract
      t.string :image
      t.bigint :remote_id
      t.datetime :published_on
      t.timestamps
    end
  end
end
