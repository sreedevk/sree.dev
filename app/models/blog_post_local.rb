class BlogPostLocal < ApplicationRecord
  default_scope { where.not(abstract: nil).order(created_at: :desc).limit(3) }
end
