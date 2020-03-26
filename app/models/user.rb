class User < ApplicationRecord
  has_secure_password

  has_many :assignments
  has_many :roles, through: :assignments

  validates :email, presence: true, email: true, uniqueness: true

  def confirm!
    update!(confirmed_at: DateTime.now)
  end

  def confirmed?
    !! confirmed_at?
  end
end
