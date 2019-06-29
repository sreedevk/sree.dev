class Project < ApplicationRecord
  default_scope { where(show: true).order(:order) }
end
