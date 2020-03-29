# require "reform/form/validation/unique_validator.rb"
#
# class RegisterForm < Reform::Form
#   property :email
#   property :password
#
#   validates :email, presence: true, email: true, unique: true
#   validates :password, presence: true
#
#   # override the save method:
#   def save
#     # call the sync method to sync the properties of the form to the model instance
#     sync
#
#     model.roles << Role.find_by(name: :guest)
#     # call save on the model to save the properties:
#     model.save
#   end
# end

require "reform/form/validation/unique_validator.rb"

class RegisterForm < Reform::Form
  property :email
  property :password

  validates :email,    presence: true, email: true, unique: true
  validates :password, presence: true

  def save
    sync

    model.roles << Role.find_by(name: :guest)
    model.save
  end
end
