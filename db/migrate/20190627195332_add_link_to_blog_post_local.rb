class AddLinkToBlogPostLocal < ActiveRecord::Migration[5.2]
  def change
    add_column :blog_post_locals, :url, :string
  end
end
