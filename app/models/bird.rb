class Bird < ActiveRecord::Base
  paginates_per 5

  belongs_to :species

  has_one :common_name

  has_many :picture_by_birds
  has_many :pictures, through: :picture_by_birds

  has_many :bird_by_users
  has_many :users, through: :bird_by_users

  accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy: true

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end
