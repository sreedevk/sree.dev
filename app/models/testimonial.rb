class Testimonial < ApplicationRecord
  default_scope { limit(4) }
end
