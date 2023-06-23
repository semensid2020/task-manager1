class User < ApplicationRecord
  USER_TYPES = [:Developer, :Manager, :Admin].freeze
  has_secure_password
  has_many :my_tasks, class_name: 'Task', foreign_key: :author_id
  has_many :assigned_tasks, class_name: 'Task', foreign_key: :assignee_id

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name,  presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true, format: URI::MailTo::EMAIL_REGEXP
end
