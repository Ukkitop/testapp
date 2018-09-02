class Task < ApplicationRecord
  has_many :users
  belongs_to :project, optional: true
  validates_with ProjectExistValidator, fiels: :project_id
end
