class BlogPost < ActiveRecord::Base
  establish_connection Rails.configuration.database_configuration['blog_db']
  self.table_name = :wp_posts
  has_one :post_meta, class_name: PostMeta.to_s, foreign_key: :post_id, primary_key: :id
  default_scope { where(post_status: 'publish', post_type: 'post') }
  
  def thumbnail
    self.post_meta&.post_attachment&.guid
  end
end
