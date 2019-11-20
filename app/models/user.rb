class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations
  validates :first_name, presence: true, length: { minimum: 3 }, on: :update

  # Virtual attributes
  def full_name
    [self.first_name, self.last_name].join(' ')
  end
end
