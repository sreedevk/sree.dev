class BlogPostLocal < ApplicationRecord
  default_scope { order(created_at: :desc).limit(3) }
end
