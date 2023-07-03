class Task < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :assignee, class_name: 'User', optional: true

  validates :name, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :description, length: { maximum: 500 }

  state_machine :state, initial: :new_task do
    event :to_development do
      transition [:new_task, :in_qa, :in_code_review] => :in_development
    end

    event :to_qa do
      transition :in_development => :in_qa
    end

    event :to_code_review do
      transition :in_qa => :in_code_review
    end

    event :approve_for_release do
      transition :in_code_review => :ready_for_release
    end

    event :to_released do
      transition :ready_for_release => :released
    end

    event :to_archive do
      transition [:new_task, :released] => :archived
    end
  end

  def self.ransackable_attributes(auth_object = nil)
    ["id", "name", "description", "state", "author_id", "assignee_id", "created_at", "expired_at","updated_at"]
  end
end
