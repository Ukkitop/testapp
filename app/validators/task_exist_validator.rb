class TaskExistValidator < ActiveModel::Validator
  def validate(record)
    if Task.exists?(id: record.task_id) or record.task_id==nil
      return true
    else record.errors[:base] << "Task is not exist"
    end
  end
end