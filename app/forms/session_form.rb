class SessionForm
  include ActiveModel::Model

  attr_accessor(
    :email,
    :password,
  )

  validates :email, presence: true, format: { with: /\A\S+@.+\.\S+\z/ }
  validates :password, presence: true
  validate :user_valid?

  def user
    User.find_by(email: email)
  end

  private

  def user_valid?
    if user.blank? || !user.authenticate(password)
      errors.add(:email, "email or password doesn't match")
    end
  end
end
