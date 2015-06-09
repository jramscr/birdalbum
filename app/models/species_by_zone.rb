class SpeciesByZone < ActiveRecord::Base
  belongs_to :zone
  belongs_to :species

  validates :zone, :species, uniqueness: { scope: [:zone, :species] }

  accepts_nested_attributes_for :zone

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end
