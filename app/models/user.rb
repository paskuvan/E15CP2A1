class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :histories
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true

  def is_admin?
    admin
  end
end