class PostMeta < ActiveRecord::Base
  establish_connection Rails.configuration.database_configuration['blog_db']
  self.table_name = :wp_postmeta
  belongs_to :blog_post, foreign_key: :post_id, primary_key: :id
  belongs_to :post_attachment, class_name: PostAttachment.to_s, foreign_key: :meta_value, primary_key: :id
  default_scope { where(meta_key: "_thumbnail_id") }
end
