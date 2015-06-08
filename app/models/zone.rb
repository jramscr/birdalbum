class Zone < ActiveRecord::Base
  has_many :species_by_zones
  has_many :species, through: :species_by_zones

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end
