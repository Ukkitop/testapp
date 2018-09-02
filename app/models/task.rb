class ProjectExistValidator < ActiveModel::Validator
  def validate(record)
    if Project.exists?(id: record.project_id) or record.project_id==nil
      return true
    else record.errors[:base] << "Project is not exist"
    end
  end
end
class Task < ApplicationRecord
  has_many :users
  belongs_to :project, optional: true
  validates_with ProjectExistValidator, fiels: :project_id
end
