class Testimonial < ApplicationRecord
  default_scope { where(is_visible: true).limit(4) }
end
