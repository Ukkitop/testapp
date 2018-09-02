class TaskExistValidator < ActiveModel::Validator
 def validate(record)
   if Task.exists?(id: record.task_id) or record.task_id==nil
      return true
   else record.errors[:base] << "Task is not exist"
     end
   end
 end
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates :email, presence:  true
  validates_with TaskExistValidator, fields: :task_id
  belongs_to :task, optional: true
end
