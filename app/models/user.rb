class User < ActiveRecord::Base
  include UsersHelper
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  validates_presence_of :username, :password, :password_confirmation, on: :create, case_sensitive: false

  belongs_to :person
  belongs_to :user_type

  has_many :picture_by_users
  has_many :pictures, through: :picture_by_users

  has_many :bird_by_users
  has_many :birds, through: :bird_by_users

  accepts_nested_attributes_for :person, reject_if: :all_blank, allow_destroy: true

  def admin?
    return false unless formatted_user_type(self) == "Administrador"
    return true
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end
