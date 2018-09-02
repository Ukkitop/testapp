class ProjectExistValidator < ActiveModel::Validator
  def validate(record)
    if Project.exists?(id: record.project_id) or record.project_id==nil
      return true
    else record.errors[:base] << "Project is not exist"
    end
  end
end