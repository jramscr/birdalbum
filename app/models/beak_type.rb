class BeakType < ActiveRecord::Base
  has_many :picture_by_beak_types
  has_many :pictures, through: :picture_by_beak_types
  has_many :species

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end
