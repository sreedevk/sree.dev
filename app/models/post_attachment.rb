class PostAttachment < ActiveRecord::Base
  establish_connection Rails.configuration.database_configuration['blog_db']
  self.table_name = :wp_posts
  has_one :post_meta, class_name: PostMeta.to_s, primary_key: :id, foreign_key: :meta_value
  default_scope { where(post_type: 'attachment') }
end
