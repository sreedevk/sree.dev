class Service < ApplicationRecord
  default_scope { where(show: true).order(:order) }
end
