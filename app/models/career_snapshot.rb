class CareerSnapshot < ApplicationRecord
  default_scope { where(visible: true).order(:order) }
end
