class Species < ActiveRecord::Base
  belongs_to :gender

  has_many :species_by_zones
  has_many :zones, through: :species_by_zones

  has_many :species_colors
  has_many :colors, through: :species_colors

  accepts_nested_attributes_for :zones, reject_if: :all_blank, allow_destroy: true

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end
