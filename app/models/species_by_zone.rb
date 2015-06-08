class SpeciesByZone < ActiveRecord::Base
  belongs_to :zone
  belongs_to :species

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |kind|
        csv << kind.attributes.values_at(*column_names)
      end
    end
  end
end
