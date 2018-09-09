class Task < ApplicationRecord
  validates :title, presence: true

  belongs_to :project, optional: true
  has_and_belongs_to_many :users


  #validates_with ProjectExistValidator, fiels: :project_id
end
