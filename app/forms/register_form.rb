class RegisterForm < Reform::Form
  property :email
  property :password

  validates :email, presence: true
  validates :password, presence: true
end
