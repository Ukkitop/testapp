
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates :email, presence:  true
#  validates_with TaskExistValidator, fields: :task_id
  has_and_belongs_to_many :tasks
  def name_with_initial
    "#{first_name.first}. #{last_name}"
  end
end
