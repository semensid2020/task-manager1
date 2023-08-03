class User < ApplicationRecord
  has_secure_password
  has_many :my_tasks, class_name: 'Task', foreign_key: :author_id
  has_many :assigned_tasks, class_name: 'Task', foreign_key: :assignee_id

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name,  presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A\S+@.+\.\S+\z/ }

  def self.ransackable_attributes(auth_object = nil)
    ['id', 'first_name', 'last_name', 'email',  'type']
  end

  def self.ransackable_associations(auth_object = nil)
    ['my_tasks']
  end
end
